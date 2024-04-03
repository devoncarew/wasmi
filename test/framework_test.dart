import 'package:test/test.dart';

import 'framework.dart';

void main() {
  group('test framework', () {
    test(r'$i32', () {
      expect($i32('4294967295'), -1);
    });
  });
}
