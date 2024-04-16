import 'dart:convert';
import 'dart:io' as io;

import 'package:args/args.dart';

void main(List<String> args) async {
  final argParser = ArgParser();
  argParser.addFlag(
    'update',
    negatable: false,
    help: 'Write test results to the status file.',
  );
  argParser.addFlag(
    'help',
    abbr: 'h',
    negatable: false,
    help: 'Print this usage information.',
  );

  final argResults = argParser.parse(args);
  if (argResults.flag('help')) {
    print(argParser.usage);
    io.exit(0);
  }

  final updateStatus = argResults.flag('update');

  // 'dart test --reporter json -j1 test/spec'
  final process = await io.Process.start(
    io.Platform.resolvedExecutable,
    [
      'test',
      '--reporter',
      'json',
      '-j1',
      if (updateStatus) '--run-skipped',
      'test/spec',
    ],
  );

  process.stdout
      .transform(utf8.decoder)
      .transform(const LineSplitter())
      .forEach(processJson);

  process.stderr.transform(utf8.decoder).forEach(io.stderr.writeln);

  final code = await process.exitCode;
  io.exitCode = code;

  print('');
  int skipped = results.where((r) => r.skipped != null).length;
  int failed = results.where((r) => r.failed).length;
  print('$skipped tests skipped.');
  print('$failed tests failed.');

  if (updateStatus) {
    print('');

    final buf = StringBuffer();
    buf.writeln('# These tests are skipped when generated.');
    buf.writeln();

    results.sort((a, b) => a.name.compareTo(b.name));

    for (final result in results) {
      if (result.failed) {
        buf.writeln('${result.name}: failed');
      } else {
        buf.writeln('${result.name}: ${result.skipped}');
      }
    }

    final file = io.File('test/status.properties');
    file.writeAsStringSync(buf.toString());
    print('Test status written to ${file.path}; '
        "re-run 'dart tool/gen_tests.dart to apply changes.'");
  } else if (failed > 0) {
    print('');

    for (final result in results) {
      if (result.failed) {
        print('✖ ${result.name}');
      }
    }
  }
}

final Map<int, Test> tests = {};

final List<TestResult> results = [];

void processJson(String line) {
  final json = jsonDecode(line) as Map;

  // start, suite, testStart, allSuites, testDone, group, error, done, print
  var type = json['type'] as String;

  if (type == 'testStart') {
    var test = json['test'] as Map<String, dynamic>;
    var id = test['id'] as int;

    tests[id] = Test(
      id: id,
      name: test['name'],
      skipReason: (test['metadata'] as Map?)?['skipReason'],
    );
  } else if (type == 'error') {
    var testID = json['testID'] as int;

    tests[testID]!.markFailed();
  } else if (type == 'print') {
    var testID = json['testID'] as int;
    var message = json['message'] as String;

    tests[testID]!.addMessage(message);
  } else if (type == 'testDone') {
    var testID = json['testID'] as int;
    final test = tests[testID]!;

    test.result = json['result'] as String;
    test.hidden = (json['hidden'] as bool?) ?? false;
    test.skipped = (json['skipped'] as bool?) ?? false;

    if (!test.hidden) {
      if (test.skipped) {
        print('- ${test.name}');

        results.add(TestResult(
          name: test.name,
          skipped: test.skipReason,
        ));
      } else if (test.passed) {
        print('✓ ${test.name}');
      } else {
        print('✖ ${test.name}');

        results.add(TestResult(
          name: test.name,
          failed: !test.passed,
        ));
      }
    }
  }
}

class TestResult {
  final String name;
  final String? skipped;
  final bool failed;

  TestResult({required this.name, this.skipped, this.failed = false});
}

class Test {
  final int id;
  final String name;
  final String? skipReason;

  final List<String> messages = [];

  String? result;

  bool failed = false;
  bool hidden = false;
  bool skipped = false;

  Test({required this.id, required this.name, this.skipReason});

  bool get passed => result == 'success';

  void markFailed() {
    failed = true;
  }

  void addMessage(String message) {
    messages.add(message);
  }
}
