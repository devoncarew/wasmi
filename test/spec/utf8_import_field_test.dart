// Generated from spec/test/core/utf8-import-field.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';

import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';

import '../framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};
  final Map<String, Module> named = {};

  // assertMalformed('malformed utf8-import-field.0.wasm');
  // assertMalformed('malformed utf8-import-field.1.wasm');
  // assertMalformed('malformed utf8-import-field.2.wasm');
  // assertMalformed('malformed utf8-import-field.3.wasm');
  // assertMalformed('malformed utf8-import-field.4.wasm');
  // assertMalformed('malformed utf8-import-field.5.wasm');
  // assertMalformed('malformed utf8-import-field.6.wasm');
  // assertMalformed('malformed utf8-import-field.7.wasm');
  // assertMalformed('malformed utf8-import-field.8.wasm');
  // assertMalformed('malformed utf8-import-field.9.wasm');
  // assertMalformed('malformed utf8-import-field.10.wasm');
  // assertMalformed('malformed utf8-import-field.11.wasm');
  // assertMalformed('malformed utf8-import-field.12.wasm');
  // assertMalformed('malformed utf8-import-field.13.wasm');
  // assertMalformed('malformed utf8-import-field.14.wasm');
  // assertMalformed('malformed utf8-import-field.15.wasm');
  // assertMalformed('malformed utf8-import-field.16.wasm');
  // assertMalformed('malformed utf8-import-field.17.wasm');
  // assertMalformed('malformed utf8-import-field.18.wasm');
  // assertMalformed('malformed utf8-import-field.19.wasm');
  // assertMalformed('malformed utf8-import-field.20.wasm');
  // assertMalformed('malformed utf8-import-field.21.wasm');
  // assertMalformed('malformed utf8-import-field.22.wasm');
  // assertMalformed('malformed utf8-import-field.23.wasm');
  // assertMalformed('malformed utf8-import-field.24.wasm');
  // assertMalformed('malformed utf8-import-field.25.wasm');
  // assertMalformed('malformed utf8-import-field.26.wasm');
  // assertMalformed('malformed utf8-import-field.27.wasm');
  // assertMalformed('malformed utf8-import-field.28.wasm');
  // assertMalformed('malformed utf8-import-field.29.wasm');
  // assertMalformed('malformed utf8-import-field.30.wasm');
  // assertMalformed('malformed utf8-import-field.31.wasm');
  // assertMalformed('malformed utf8-import-field.32.wasm');
  // assertMalformed('malformed utf8-import-field.33.wasm');
  // assertMalformed('malformed utf8-import-field.34.wasm');
  // assertMalformed('malformed utf8-import-field.35.wasm');
  // assertMalformed('malformed utf8-import-field.36.wasm');
  // assertMalformed('malformed utf8-import-field.37.wasm');
  // assertMalformed('malformed utf8-import-field.38.wasm');
  // assertMalformed('malformed utf8-import-field.39.wasm');
  // assertMalformed('malformed utf8-import-field.40.wasm');
  // assertMalformed('malformed utf8-import-field.41.wasm');
  // assertMalformed('malformed utf8-import-field.42.wasm');
  // assertMalformed('malformed utf8-import-field.43.wasm');
  // assertMalformed('malformed utf8-import-field.44.wasm');
  // assertMalformed('malformed utf8-import-field.45.wasm');
  // assertMalformed('malformed utf8-import-field.46.wasm');
  // assertMalformed('malformed utf8-import-field.47.wasm');
  // assertMalformed('malformed utf8-import-field.48.wasm');
  // assertMalformed('malformed utf8-import-field.49.wasm');
  // assertMalformed('malformed utf8-import-field.50.wasm');
  // assertMalformed('malformed utf8-import-field.51.wasm');
  // assertMalformed('malformed utf8-import-field.52.wasm');
  // assertMalformed('malformed utf8-import-field.53.wasm');
  // assertMalformed('malformed utf8-import-field.54.wasm');
  // assertMalformed('malformed utf8-import-field.55.wasm');
  // assertMalformed('malformed utf8-import-field.56.wasm');
  // assertMalformed('malformed utf8-import-field.57.wasm');
  // assertMalformed('malformed utf8-import-field.58.wasm');
  // assertMalformed('malformed utf8-import-field.59.wasm');
  // assertMalformed('malformed utf8-import-field.60.wasm');
  // assertMalformed('malformed utf8-import-field.61.wasm');
  // assertMalformed('malformed utf8-import-field.62.wasm');
  // assertMalformed('malformed utf8-import-field.63.wasm');
  // assertMalformed('malformed utf8-import-field.64.wasm');
  // assertMalformed('malformed utf8-import-field.65.wasm');
  // assertMalformed('malformed utf8-import-field.66.wasm');
  // assertMalformed('malformed utf8-import-field.67.wasm');
  // assertMalformed('malformed utf8-import-field.68.wasm');
  // assertMalformed('malformed utf8-import-field.69.wasm');
  // assertMalformed('malformed utf8-import-field.70.wasm');
  // assertMalformed('malformed utf8-import-field.71.wasm');
  // assertMalformed('malformed utf8-import-field.72.wasm');
  // assertMalformed('malformed utf8-import-field.73.wasm');
  // assertMalformed('malformed utf8-import-field.74.wasm');
  // assertMalformed('malformed utf8-import-field.75.wasm');
  // assertMalformed('malformed utf8-import-field.76.wasm');
  // assertMalformed('malformed utf8-import-field.77.wasm');
  // assertMalformed('malformed utf8-import-field.78.wasm');
  // assertMalformed('malformed utf8-import-field.79.wasm');
  // assertMalformed('malformed utf8-import-field.80.wasm');
  // assertMalformed('malformed utf8-import-field.81.wasm');
  // assertMalformed('malformed utf8-import-field.82.wasm');
  // assertMalformed('malformed utf8-import-field.83.wasm');
  // assertMalformed('malformed utf8-import-field.84.wasm');
  // assertMalformed('malformed utf8-import-field.85.wasm');
  // assertMalformed('malformed utf8-import-field.86.wasm');
  // assertMalformed('malformed utf8-import-field.87.wasm');
  // assertMalformed('malformed utf8-import-field.88.wasm');
  // assertMalformed('malformed utf8-import-field.89.wasm');
  // assertMalformed('malformed utf8-import-field.90.wasm');
  // assertMalformed('malformed utf8-import-field.91.wasm');
  // assertMalformed('malformed utf8-import-field.92.wasm');
  // assertMalformed('malformed utf8-import-field.93.wasm');
  // assertMalformed('malformed utf8-import-field.94.wasm');
  // assertMalformed('malformed utf8-import-field.95.wasm');
  // assertMalformed('malformed utf8-import-field.96.wasm');
  // assertMalformed('malformed utf8-import-field.97.wasm');
  // assertMalformed('malformed utf8-import-field.98.wasm');
  // assertMalformed('malformed utf8-import-field.99.wasm');
  // assertMalformed('malformed utf8-import-field.100.wasm');
  // assertMalformed('malformed utf8-import-field.101.wasm');
  // assertMalformed('malformed utf8-import-field.102.wasm');
  // assertMalformed('malformed utf8-import-field.103.wasm');
  // assertMalformed('malformed utf8-import-field.104.wasm');
  // assertMalformed('malformed utf8-import-field.105.wasm');
  // assertMalformed('malformed utf8-import-field.106.wasm');
  // assertMalformed('malformed utf8-import-field.107.wasm');
  // assertMalformed('malformed utf8-import-field.108.wasm');
  // assertMalformed('malformed utf8-import-field.109.wasm');
  // assertMalformed('malformed utf8-import-field.110.wasm');
  // assertMalformed('malformed utf8-import-field.111.wasm');
  // assertMalformed('malformed utf8-import-field.112.wasm');
  // assertMalformed('malformed utf8-import-field.113.wasm');
  // assertMalformed('malformed utf8-import-field.114.wasm');
  // assertMalformed('malformed utf8-import-field.115.wasm');
  // assertMalformed('malformed utf8-import-field.116.wasm');
  // assertMalformed('malformed utf8-import-field.117.wasm');
  // assertMalformed('malformed utf8-import-field.118.wasm');
  // assertMalformed('malformed utf8-import-field.119.wasm');
  // assertMalformed('malformed utf8-import-field.120.wasm');
  // assertMalformed('malformed utf8-import-field.121.wasm');
  // assertMalformed('malformed utf8-import-field.122.wasm');
  // assertMalformed('malformed utf8-import-field.123.wasm');
  // assertMalformed('malformed utf8-import-field.124.wasm');
  // assertMalformed('malformed utf8-import-field.125.wasm');
  // assertMalformed('malformed utf8-import-field.126.wasm');
  // assertMalformed('malformed utf8-import-field.127.wasm');
  // assertMalformed('malformed utf8-import-field.128.wasm');
  // assertMalformed('malformed utf8-import-field.129.wasm');
  // assertMalformed('malformed utf8-import-field.130.wasm');
  // assertMalformed('malformed utf8-import-field.131.wasm');
  // assertMalformed('malformed utf8-import-field.132.wasm');
  // assertMalformed('malformed utf8-import-field.133.wasm');
  // assertMalformed('malformed utf8-import-field.134.wasm');
  // assertMalformed('malformed utf8-import-field.135.wasm');
  // assertMalformed('malformed utf8-import-field.136.wasm');
  // assertMalformed('malformed utf8-import-field.137.wasm');
  // assertMalformed('malformed utf8-import-field.138.wasm');
  // assertMalformed('malformed utf8-import-field.139.wasm');
  // assertMalformed('malformed utf8-import-field.140.wasm');
  // assertMalformed('malformed utf8-import-field.141.wasm');
  // assertMalformed('malformed utf8-import-field.142.wasm');
  // assertMalformed('malformed utf8-import-field.143.wasm');
  // assertMalformed('malformed utf8-import-field.144.wasm');
  // assertMalformed('malformed utf8-import-field.145.wasm');
  // assertMalformed('malformed utf8-import-field.146.wasm');
  // assertMalformed('malformed utf8-import-field.147.wasm');
  // assertMalformed('malformed utf8-import-field.148.wasm');
  // assertMalformed('malformed utf8-import-field.149.wasm');
  // assertMalformed('malformed utf8-import-field.150.wasm');
  // assertMalformed('malformed utf8-import-field.151.wasm');
  // assertMalformed('malformed utf8-import-field.152.wasm');
  // assertMalformed('malformed utf8-import-field.153.wasm');
  // assertMalformed('malformed utf8-import-field.154.wasm');
  // assertMalformed('malformed utf8-import-field.155.wasm');
  // assertMalformed('malformed utf8-import-field.156.wasm');
  // assertMalformed('malformed utf8-import-field.157.wasm');
  // assertMalformed('malformed utf8-import-field.158.wasm');
  // assertMalformed('malformed utf8-import-field.159.wasm');
  // assertMalformed('malformed utf8-import-field.160.wasm');
  // assertMalformed('malformed utf8-import-field.161.wasm');
  // assertMalformed('malformed utf8-import-field.162.wasm');
  // assertMalformed('malformed utf8-import-field.163.wasm');
  // assertMalformed('malformed utf8-import-field.164.wasm');
  // assertMalformed('malformed utf8-import-field.165.wasm');
  // assertMalformed('malformed utf8-import-field.166.wasm');
  // assertMalformed('malformed utf8-import-field.167.wasm');
  // assertMalformed('malformed utf8-import-field.168.wasm');
  // assertMalformed('malformed utf8-import-field.169.wasm');
  // assertMalformed('malformed utf8-import-field.170.wasm');
  // assertMalformed('malformed utf8-import-field.171.wasm');
  // assertMalformed('malformed utf8-import-field.172.wasm');
  // assertMalformed('malformed utf8-import-field.173.wasm');
  // assertMalformed('malformed utf8-import-field.174.wasm');
  // assertMalformed('malformed utf8-import-field.175.wasm');
}
