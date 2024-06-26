// Generated from spec/test/core/unreached-invalid.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';

import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';

import '../framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};
  final Map<String, Module> named = {};

  group('unreached-invalid', () {
    // assertInvalid('invalid unreached-invalid.0.wasm', 'unreached-invalid/unreached-invalid.0.wasm', 'unknown local', registered);
    // assertInvalid('invalid unreached-invalid.1.wasm', 'unreached-invalid/unreached-invalid.1.wasm', 'unknown global', registered);
    // assertInvalid('invalid unreached-invalid.2.wasm', 'unreached-invalid/unreached-invalid.2.wasm', 'unknown function', registered);
    // assertInvalid('invalid unreached-invalid.3.wasm', 'unreached-invalid/unreached-invalid.3.wasm', 'unknown label', registered);
    // assertInvalid('invalid unreached-invalid.4.wasm', 'unreached-invalid/unreached-invalid.4.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.5.wasm', 'unreached-invalid/unreached-invalid.5.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.6.wasm', 'unreached-invalid/unreached-invalid.6.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.7.wasm', 'unreached-invalid/unreached-invalid.7.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.8.wasm', 'unreached-invalid/unreached-invalid.8.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.9.wasm', 'unreached-invalid/unreached-invalid.9.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.10.wasm', 'unreached-invalid/unreached-invalid.10.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.11.wasm', 'unreached-invalid/unreached-invalid.11.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.12.wasm', 'unreached-invalid/unreached-invalid.12.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.13.wasm', 'unreached-invalid/unreached-invalid.13.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.14.wasm', 'unreached-invalid/unreached-invalid.14.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.15.wasm', 'unreached-invalid/unreached-invalid.15.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.16.wasm', 'unreached-invalid/unreached-invalid.16.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.17.wasm', 'unreached-invalid/unreached-invalid.17.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.18.wasm', 'unreached-invalid/unreached-invalid.18.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.19.wasm', 'unreached-invalid/unreached-invalid.19.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.20.wasm', 'unreached-invalid/unreached-invalid.20.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.21.wasm', 'unreached-invalid/unreached-invalid.21.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.22.wasm', 'unreached-invalid/unreached-invalid.22.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.23.wasm', 'unreached-invalid/unreached-invalid.23.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.24.wasm', 'unreached-invalid/unreached-invalid.24.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.25.wasm', 'unreached-invalid/unreached-invalid.25.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.26.wasm', 'unreached-invalid/unreached-invalid.26.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.27.wasm', 'unreached-invalid/unreached-invalid.27.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.28.wasm', 'unreached-invalid/unreached-invalid.28.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.29.wasm', 'unreached-invalid/unreached-invalid.29.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.30.wasm', 'unreached-invalid/unreached-invalid.30.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.31.wasm', 'unreached-invalid/unreached-invalid.31.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.32.wasm', 'unreached-invalid/unreached-invalid.32.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.33.wasm', 'unreached-invalid/unreached-invalid.33.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.34.wasm', 'unreached-invalid/unreached-invalid.34.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.35.wasm', 'unreached-invalid/unreached-invalid.35.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.36.wasm', 'unreached-invalid/unreached-invalid.36.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.37.wasm', 'unreached-invalid/unreached-invalid.37.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.38.wasm', 'unreached-invalid/unreached-invalid.38.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.39.wasm', 'unreached-invalid/unreached-invalid.39.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.40.wasm', 'unreached-invalid/unreached-invalid.40.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.41.wasm', 'unreached-invalid/unreached-invalid.41.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.42.wasm', 'unreached-invalid/unreached-invalid.42.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.43.wasm', 'unreached-invalid/unreached-invalid.43.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.44.wasm', 'unreached-invalid/unreached-invalid.44.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.45.wasm', 'unreached-invalid/unreached-invalid.45.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.46.wasm', 'unreached-invalid/unreached-invalid.46.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.47.wasm', 'unreached-invalid/unreached-invalid.47.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.48.wasm', 'unreached-invalid/unreached-invalid.48.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.49.wasm', 'unreached-invalid/unreached-invalid.49.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.50.wasm', 'unreached-invalid/unreached-invalid.50.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.51.wasm', 'unreached-invalid/unreached-invalid.51.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.52.wasm', 'unreached-invalid/unreached-invalid.52.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.53.wasm', 'unreached-invalid/unreached-invalid.53.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.54.wasm', 'unreached-invalid/unreached-invalid.54.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.55.wasm', 'unreached-invalid/unreached-invalid.55.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.56.wasm', 'unreached-invalid/unreached-invalid.56.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.57.wasm', 'unreached-invalid/unreached-invalid.57.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.58.wasm', 'unreached-invalid/unreached-invalid.58.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.59.wasm', 'unreached-invalid/unreached-invalid.59.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.60.wasm', 'unreached-invalid/unreached-invalid.60.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.61.wasm', 'unreached-invalid/unreached-invalid.61.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.62.wasm', 'unreached-invalid/unreached-invalid.62.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.63.wasm', 'unreached-invalid/unreached-invalid.63.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.64.wasm', 'unreached-invalid/unreached-invalid.64.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.65.wasm', 'unreached-invalid/unreached-invalid.65.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.66.wasm', 'unreached-invalid/unreached-invalid.66.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.67.wasm', 'unreached-invalid/unreached-invalid.67.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.68.wasm', 'unreached-invalid/unreached-invalid.68.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.69.wasm', 'unreached-invalid/unreached-invalid.69.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.70.wasm', 'unreached-invalid/unreached-invalid.70.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.71.wasm', 'unreached-invalid/unreached-invalid.71.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.72.wasm', 'unreached-invalid/unreached-invalid.72.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.73.wasm', 'unreached-invalid/unreached-invalid.73.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.74.wasm', 'unreached-invalid/unreached-invalid.74.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.75.wasm', 'unreached-invalid/unreached-invalid.75.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.76.wasm', 'unreached-invalid/unreached-invalid.76.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.77.wasm', 'unreached-invalid/unreached-invalid.77.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.78.wasm', 'unreached-invalid/unreached-invalid.78.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.79.wasm', 'unreached-invalid/unreached-invalid.79.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.80.wasm', 'unreached-invalid/unreached-invalid.80.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.81.wasm', 'unreached-invalid/unreached-invalid.81.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.82.wasm', 'unreached-invalid/unreached-invalid.82.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.83.wasm', 'unreached-invalid/unreached-invalid.83.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.84.wasm', 'unreached-invalid/unreached-invalid.84.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.85.wasm', 'unreached-invalid/unreached-invalid.85.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.86.wasm', 'unreached-invalid/unreached-invalid.86.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.87.wasm', 'unreached-invalid/unreached-invalid.87.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.88.wasm', 'unreached-invalid/unreached-invalid.88.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.89.wasm', 'unreached-invalid/unreached-invalid.89.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.90.wasm', 'unreached-invalid/unreached-invalid.90.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.91.wasm', 'unreached-invalid/unreached-invalid.91.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.92.wasm', 'unreached-invalid/unreached-invalid.92.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.93.wasm', 'unreached-invalid/unreached-invalid.93.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.94.wasm', 'unreached-invalid/unreached-invalid.94.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.95.wasm', 'unreached-invalid/unreached-invalid.95.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.96.wasm', 'unreached-invalid/unreached-invalid.96.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.97.wasm', 'unreached-invalid/unreached-invalid.97.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.98.wasm', 'unreached-invalid/unreached-invalid.98.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.99.wasm', 'unreached-invalid/unreached-invalid.99.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.100.wasm', 'unreached-invalid/unreached-invalid.100.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.101.wasm', 'unreached-invalid/unreached-invalid.101.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.102.wasm', 'unreached-invalid/unreached-invalid.102.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.103.wasm', 'unreached-invalid/unreached-invalid.103.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.104.wasm', 'unreached-invalid/unreached-invalid.104.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.105.wasm', 'unreached-invalid/unreached-invalid.105.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.106.wasm', 'unreached-invalid/unreached-invalid.106.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.107.wasm', 'unreached-invalid/unreached-invalid.107.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.108.wasm', 'unreached-invalid/unreached-invalid.108.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.109.wasm', 'unreached-invalid/unreached-invalid.109.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.110.wasm', 'unreached-invalid/unreached-invalid.110.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.111.wasm', 'unreached-invalid/unreached-invalid.111.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.112.wasm', 'unreached-invalid/unreached-invalid.112.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.113.wasm', 'unreached-invalid/unreached-invalid.113.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.114.wasm', 'unreached-invalid/unreached-invalid.114.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.115.wasm', 'unreached-invalid/unreached-invalid.115.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.116.wasm', 'unreached-invalid/unreached-invalid.116.wasm', 'type mismatch', registered);
    // assertInvalid('invalid unreached-invalid.117.wasm', 'unreached-invalid/unreached-invalid.117.wasm', 'type mismatch', registered);
  });
}
