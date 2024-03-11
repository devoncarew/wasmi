String hex(int val, [int digits = 2]) {
  var result = val.toRadixString(16).toUpperCase();
  result = result.padLeft(digits, '0');
  return '0x$result';
}

// class NameScope {
//   final Set<String> _names = {};

//   String uniqueAdd(String name) {
//     if (!_names.contains(name)) {
//       _names.add(name);
//       return name;
//     }

//     int count = 1;

//     while (_names.contains('${name}_$count')) {
//       count++;
//     }

//     name = '${name}_$count';
//     _names.add(name);
//     return name;
//   }
// }
