import 'package:code_builder/code_builder.dart' hide FunctionType;
import 'package:wasmi/compiler.dart';
import 'package:wasmi/instructions.dart' hide ValueType;
import 'package:wasmi/src/utils.dart';

class Ref {
  final String expr;

  Ref(this.expr);

  @override
  String toString() => expr;
}

class FunctionBuilder {
  final Module module;
  final DefinedFunction definedFunction;
  final FunctionType? functionTypeOverride;

  final RefStack stack = RefStack();
  final List<Code> statements = [];

  final List<BlockType> nesting = [];
  final List<Scope> scopes = [Scope()];

  FunctionBuilder(this.module, this.definedFunction,
      {this.functionTypeOverride});

  FunctionType get functionType =>
      functionTypeOverride ?? definedFunction.functionType;

  Variable variableFromIndex(int index) => definedFunction.variables[index];

  void enterBlock(BlockType blockType, BlockFunctionType blockType2) {
    nesting.add(blockType);
    scopes.add(Scope(parent: scope, blockType: blockType2));
  }

  BlockType? exitBlock() {
    if (nesting.isEmpty) {
      return null;
    }

    scopes.removeLast();
    return nesting.removeLast();
  }

  Scope get scope => scopes.last;

  String get currentBlockLabel => labelNameFromIndex(0)!;

  String? labelNameFromIndex(int index) {
    if (index >= nesting.length) return null;

    var block = blockNestingFromIndex(index);
    var depth = nesting.length - 1 - index;
    return '${block.shortName}_label_$depth';
  }

  BlockType blockNestingFromIndex(int index) {
    // Special case asking for the outermost nesting - the function entrypoint.
    if (index == nesting.length) {
      return BlockType.$return;
    }

    return nesting[nesting.length - 1 - index];
  }

  Scope scopeForIndex(int index) {
    return scopes[scopes.length - 1 - index];
  }

  void build(List<Instr> instrs) {
    int depth = 0;

    for (var instr in instrs) {
      if (scope.unreachable) {
        if (depth == 0 && (instr.isElse || instr.isBlockEnd)) {
          instr.instruction.generateToVm(instr, this);
        } else if (instr.isBlockStart) {
          depth++;
        } else if (instr.isBlockEnd) {
          depth--;
        }
      } else {
        instr.instruction.generateToVm(instr, this);
      }
    }
  }

  List<Code> emit() {
    return statements;
  }

  Ref popRef() => stack.pop();

  List<Ref> popN(int count) {
    var result = <Ref>[];
    for (int i = 0; i < count; i++) {
      result.add(popRef());
    }
    return result;
  }

  List<Ref> peekN(int count) {
    var result = <Ref>[];
    for (int i = 0; i < count; i++) {
      result.add(peekRef(0));
    }
    return result;
  }

  Ref peekRef([int depth = 0]) => stack.peek(depth);

  void pushRef(Ref ref) {
    stack.push(ref);
  }

  void generateAssign(Ref to, Ref from) {
    statements.add(refer(to.expr).assign(refer(from.expr)).statement);
  }

  void addStatement(Code code) {
    statements.add(code);
  }

  void performCall(VmCall call) {
    statements.add(call.toExpression().statement);
  }

  void pushAssignTemp(VmCall call) {
    // create temp
    var temp = generateName('t');

    // assign to temp
    statements.add(declareVar(temp).assign(call.toExpression()).statement);

    // push temp
    stack.push(Ref(temp));
  }

  void pushAssignTuple(VmCall call) {
    // create temp
    var temp = generateName('tuple');

    // assign to temp
    statements.add(declareVar(temp).assign(call.toExpression()).statement);

    // push tuple fields
    for (int i = 0; i < call.returns.length; i++) {
      stack.push(Ref('$temp.t$i'));
    }
  }

  ModuleFunction? functionByIndex(int index) {
    return definedFunction.module.functionByIndex(index);
  }

  final Map<String, int> _names = {};

  String generateName(String baseName) {
    // TODO: We need a general name allocator.
    var val = _names[baseName] ?? 0;
    var name = '$baseName$val';
    _names[baseName] = val + 1;
    return name;
  }

  void generateBlockReturnVar(
    BlockFunctionType blocktype, {
    String? description,
  }) {
    var blockReturnName = generateName('block');
    scope.blockReturnName = blockReturnName;

    description ??= '';
    if (description.isNotEmpty) {
      description = ' // $description';
    }

    if (blocktype.isPrimitive) {
      var val = blocktype.defaultInitValue;
      addStatement(Code('\nvar $blockReturnName = $val;$description'));
    } else if (blocktype.returnItems > 1) {
      addStatement(Code(
          '\nlate ${blocktype.tupleTypeName} $blockReturnName;$description'));
    } else {
      var type = blocktype.firstReturnType!;
      addStatement(Code('\n${type.typeName} $blockReturnName;$description'));
    }
  }

  Code? blockReturn({required bool shouldPopRef}) {
    // We're at the end of a block - either an `else` instruction or an `end`.
    var retCount = scope.blockReturnCount;

    if (retCount == 0) {
      return null;
    } else if (retCount == 1) {
      var ref = shouldPopRef ? popRef() : peekRef();
      return Code('${scope.blockReturnName} = $ref;');
    } else {
      var refs = shouldPopRef ? popN(retCount) : peekN(retCount);
      return Code('${scope.blockReturnName} = Tuple$retCount('
          '${refs.reversed.map((ref) => ref.toString()).join(', ')});');
    }
  }

  /// Remove all but the oldest [depth] stack entries, but keep the top
  /// [paramCount] stack items.
  void unwindTo(int depth, int paramCount) => stack.unwindTo(depth, paramCount);
}

class RefStack {
  final List<Ref> stack = [];

  bool get isEmpty => stack.isEmpty;

  void push(Ref ref) {
    stack.add(ref);
  }

  Ref pop() => stack.removeLast();

  Ref peek([int depth = 0]) => stack[stack.length - 1 - depth];

  /// Remove all but the oldest [depth] stack entries, but keep the top
  /// [paramCount] stack items.
  void unwindTo(int depth, int paramCount) {
    if (stack.length == depth + paramCount) {
      return;
    }

    // Keep [0, start), [length-paramCount, length)
    stack.removeRange(depth, stack.length - paramCount);
  }
}

class VmCall {
  final String name;
  final List<num> immediates;
  final List<Ref> args;
  final List<ValueType> returns;

  VmCall(this.name, this.immediates, this.args, this.returns);

  Expression toExpression() {
    var params = [
      ...immediates.map((n) => printExpression(printLiteral(n))),
      ...args.map((r) => r.expr),
    ];
    return CodeExpression(Code('$name(${params.join(', ')})'));
  }
}
