import 'package:wasmi/opcodes.dart';
import 'package:test/test.dart';

void main() {
  group('opcodes', () {
    test('values match codes', () {
      // ensure that the enum values are == to the hex codes
      expect(Opcode.unreachable, 0);
    });
  });
}
