// Generated from spec/test/core/float_exprs.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';

import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';

import '../framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};
  final Map<String, Module> named = {};

  group('float_exprs', () {
    group('float_exprs.0.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.0.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
          'f64_no_contraction_0',
          () => m.$('f64.no_contraction', [
                $f64('B989E87CE14273AF'),
                $f64('6972515AD31DB63E'),
                $f64('614868C6685E6185')
              ]),
          $f64('E30DA94885B11493'));
      returns(
          'f64_no_contraction_1',
          () => m.$('f64.no_contraction', [
                $f64('433DA21C460A6F44'),
                $f64('2BE60859D2E7714A'),
                $f64('2D1E63F1B7B660E1')
              ]),
          $f64('2F34672F256D1794'));
      returns(
          'f64_no_contraction_2',
          () => m.$('f64.no_contraction', [
                $f64('9ADF3EAF43F327C0'),
                $f64('614DFCC009906B57'),
                $f64('3975984E03C520A1')
              ]),
          $f64('BC3D4797FB3DB166'));
      returns(
          'f64_no_contraction_3',
          () => m.$('f64.no_contraction', [
                $f64('3BADAB6C772CB2E2'),
                $f64('B9AD761663679A84'),
                $f64('325F22F92C843226')
              ]),
          $f64('B56B50D72DFCEF68'));
      returns(
          'f64_no_contraction_4',
          () => m.$('f64.no_contraction', [
                $f64('84987C5DEF1E4D3D'),
                $f64('FA650CD5DAB2207F'),
                $f64('3C9E629BD0DA8C5D')
              ]),
          $f64('3F101B6FEB4E78A7'));
    });

    group('float_exprs.1.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.1.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
          'f32_no_fma_0',
          () => m.$('f32.no_fma',
              [$f32('7DD3C201'), $f32('3467C2A4'), $f32('754C956D')]),
          $f32('75529316'));
      returns(
          'f32_no_fma_1',
          () => m.$('f32.no_fma',
              [$f32('31F68AD2'), $f32('A6B09E39'), $f32('13A3ABD8')]),
          $f32('992A035C'));
      returns(
          'f32_no_fma_2',
          () => m.$('f32.no_fma',
              [$f32('525731D1'), $f32('3959D2CD'), $f32('44E0B48C')]),
          $f32('4C371C2E'));
      returns(
          'f32_no_fma_3',
          () => m.$('f32.no_fma',
              [$f32('3B953BFD'), $f32('CADDB9AB'), $f32('C0195F15')]),
          $f32('C701436A'));
      returns(
          'f32_no_fma_4',
          () => m.$('f32.no_fma',
              [$f32('7E94C7DB'), $f32('9C818406'), $f32('D0A0C6F3')]),
          $f32('DB968AE3'));
      returns(
          'f64_no_fma_0',
          () => m.$('f64.no_fma', [
                $f64('62CAC357FF46EED4'),
                $f64('5AD852C01A5E7297'),
                $f64('FDA05995704EDA8A')
              ]),
          $f64('7DA855D905D338E0'));
      returns(
          'f64_no_fma_1',
          () => m.$('f64.no_fma', [
                $f64('6ECE2FD6BF32010C'),
                $f64('37D01C2238D405E4'),
                $f64('63C2ECC0DB4B9F94')
              ]),
          $f64('66AE64EB07E063BC'));
      returns(
          'f64_no_fma_2',
          () => m.$('f64.no_fma', [
                $f64('12E92B7C7439EDE3'),
                $f64('FF26AA97586D3DE6'),
                $f64('4EC8DE4823F6358A')
              ]),
          $f64('D221D4139FD20ECD'));
      returns(
          'f64_no_fma_3',
          () => m.$('f64.no_fma', [
                $f64('A7D466D30BDDB453'),
                $f64('DBA185A4D739C7AA'),
                $f64('4365F9C436FBFC7B')
              ]),
          $f64('438BD61A350FCC1A'));
      returns(
          'f64_no_fma_4',
          () => m.$('f64.no_fma', [
                $f64('4337E2C44058A799'),
                $f64('6ACC73B71765B8B2'),
                $f64('EB116C641DF0B108')
              ]),
          $f64('6E153CCB53DE0BD1'));
    });

    group('float_exprs.2.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.2.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns('f32_no_fold_add_zero_0',
          () => m.$('f32.no_fold_add_zero', [$f32('80000000')]), $f32('0'));
      returns(
          'f64_no_fold_add_zero_0',
          () => m.$('f64.no_fold_add_zero', [$f64('8000000000000000')]),
          $f64('0'));
      returns('f32_no_fold_add_zero_1',
          () => m.$('f32.no_fold_add_zero', [$f32('7FA00000')]), double.nan);
      returns(
          'f64_no_fold_add_zero_1',
          () => m.$('f64.no_fold_add_zero', [$f64('7FF4000000000000')]),
          double.nan);
    });

    group('float_exprs.3.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.3.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns('f32_no_fold_zero_sub_0',
          () => m.$('f32.no_fold_zero_sub', [$f32('0')]), $f32('0'));
      returns('f64_no_fold_zero_sub_0',
          () => m.$('f64.no_fold_zero_sub', [$f64('0')]), $f64('0'));
      returns('f32_no_fold_zero_sub_1',
          () => m.$('f32.no_fold_zero_sub', [$f32('7FA00000')]), double.nan);
      returns(
          'f64_no_fold_zero_sub_1',
          () => m.$('f64.no_fold_zero_sub', [$f64('7FF4000000000000')]),
          double.nan);
    });

    group('float_exprs.4.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.4.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns('f32_no_fold_sub_zero_0',
          () => m.$('f32.no_fold_sub_zero', [$f32('7FA00000')]), double.nan);
      returns(
          'f64_no_fold_sub_zero_0',
          () => m.$('f64.no_fold_sub_zero', [$f64('7FF4000000000000')]),
          double.nan);
    });

    group('float_exprs.5.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.5.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
          'f32_no_fold_mul_zero_0',
          () => m.$('f32.no_fold_mul_zero', [$f32('80000000')]),
          $f32('80000000'));
      returns(
          'f32_no_fold_mul_zero_1',
          () => m.$('f32.no_fold_mul_zero', [$f32('BF800000')]),
          $f32('80000000'));
      returns(
          'f32_no_fold_mul_zero_2',
          () => m.$('f32.no_fold_mul_zero', [$f32('C0000000')]),
          $f32('80000000'));
      returns('f32_no_fold_mul_zero_3',
          () => m.$('f32.no_fold_mul_zero', [$f32('7FA00000')]), double.nan);
      returns(
          'f64_no_fold_mul_zero_0',
          () => m.$('f64.no_fold_mul_zero', [$f64('8000000000000000')]),
          $f64('8000000000000000'));
      returns(
          'f64_no_fold_mul_zero_1',
          () => m.$('f64.no_fold_mul_zero', [$f64('BFF0000000000000')]),
          $f64('8000000000000000'));
      returns(
          'f64_no_fold_mul_zero_2',
          () => m.$('f64.no_fold_mul_zero', [$f64('C000000000000000')]),
          $f64('8000000000000000'));
      returns(
          'f64_no_fold_mul_zero_3',
          () => m.$('f64.no_fold_mul_zero', [$f64('7FF4000000000000')]),
          double.nan);
    });

    group('float_exprs.6.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.6.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns('f32_no_fold_mul_one_0',
          () => m.$('f32.no_fold_mul_one', [$f32('7FA00000')]), double.nan);
      returns(
          'f64_no_fold_mul_one_0',
          () => m.$('f64.no_fold_mul_one', [$f64('7FF4000000000000')]),
          double.nan);
    });

    group('float_exprs.7.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.7.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns('f32_no_fold_zero_div_0',
          () => m.$('f32.no_fold_zero_div', [$f32('0')]), double.nan);
      returns('f32_no_fold_zero_div_1',
          () => m.$('f32.no_fold_zero_div', [$f32('80000000')]), double.nan);
      returns('f32_no_fold_zero_div_2',
          () => m.$('f32.no_fold_zero_div', [$f32('7FC00000')]), double.nan);
      returns('f32_no_fold_zero_div_3',
          () => m.$('f32.no_fold_zero_div', [$f32('7FA00000')]), double.nan);
      returns('f64_no_fold_zero_div_0',
          () => m.$('f64.no_fold_zero_div', [$f64('0')]), double.nan);
      returns(
          'f64_no_fold_zero_div_1',
          () => m.$('f64.no_fold_zero_div', [$f64('8000000000000000')]),
          double.nan);
      returns(
          'f64_no_fold_zero_div_2',
          () => m.$('f64.no_fold_zero_div', [$f64('7FF8000000000000')]),
          double.nan);
      returns(
          'f64_no_fold_zero_div_3',
          () => m.$('f64.no_fold_zero_div', [$f64('7FF4000000000000')]),
          double.nan);
    });

    group('float_exprs.8.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.8.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns('f32_no_fold_div_one_0',
          () => m.$('f32.no_fold_div_one', [$f32('7FA00000')]), double.nan);
      returns(
          'f64_no_fold_div_one_0',
          () => m.$('f64.no_fold_div_one', [$f64('7FF4000000000000')]),
          double.nan);
    });

    group('float_exprs.9.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.9.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns('f32_no_fold_div_neg1_0',
          () => m.$('f32.no_fold_div_neg1', [$f32('7FA00000')]), double.nan);
      returns(
          'f64_no_fold_div_neg1_0',
          () => m.$('f64.no_fold_div_neg1', [$f64('7FF4000000000000')]),
          double.nan);
    });

    group('float_exprs.10.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.10.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns('f32_no_fold_neg0_sub_0',
          () => m.$('f32.no_fold_neg0_sub', [$f32('7FA00000')]), double.nan);
      returns(
          'f64_no_fold_neg0_sub_0',
          () => m.$('f64.no_fold_neg0_sub', [$f64('7FF4000000000000')]),
          double.nan);
    });

    group('float_exprs.11.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.11.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns('f32_no_fold_neg1_mul_0',
          () => m.$('f32.no_fold_neg1_mul', [$f32('7FA00000')]), double.nan);
      returns(
          'f64_no_fold_neg1_mul_0',
          () => m.$('f64.no_fold_neg1_mul', [$f64('7FF4000000000000')]),
          double.nan);
    });

    group('float_exprs.12.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.12.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns('f32_no_fold_eq_self_0',
          () => m.$('f32.no_fold_eq_self', [$f32('7FC00000')]), 0);
      returns('f64_no_fold_eq_self_0',
          () => m.$('f64.no_fold_eq_self', [$f64('7FF8000000000000')]), 0);
    });

    group('float_exprs.13.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.13.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns('f32_no_fold_ne_self_0',
          () => m.$('f32.no_fold_ne_self', [$f32('7FC00000')]), 1);
      returns('f64_no_fold_ne_self_0',
          () => m.$('f64.no_fold_ne_self', [$f64('7FF8000000000000')]), 1);
    });

    group('float_exprs.14.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.14.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns('f32_no_fold_sub_self_0',
          () => m.$('f32.no_fold_sub_self', [$f32('7F800000')]), double.nan);
      returns('f32_no_fold_sub_self_1',
          () => m.$('f32.no_fold_sub_self', [$f32('7FC00000')]), double.nan);
      returns(
          'f64_no_fold_sub_self_0',
          () => m.$('f64.no_fold_sub_self', [$f64('7FF0000000000000')]),
          double.nan);
      returns(
          'f64_no_fold_sub_self_1',
          () => m.$('f64.no_fold_sub_self', [$f64('7FF8000000000000')]),
          double.nan);
    });

    group('float_exprs.15.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.15.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns('f32_no_fold_div_self_0',
          () => m.$('f32.no_fold_div_self', [$f32('7F800000')]), double.nan);
      returns('f32_no_fold_div_self_1',
          () => m.$('f32.no_fold_div_self', [$f32('7FC00000')]), double.nan);
      returns('f32_no_fold_div_self_2',
          () => m.$('f32.no_fold_div_self', [$f32('0')]), double.nan);
      returns('f32_no_fold_div_self_3',
          () => m.$('f32.no_fold_div_self', [$f32('80000000')]), double.nan);
      returns(
          'f64_no_fold_div_self_0',
          () => m.$('f64.no_fold_div_self', [$f64('7FF0000000000000')]),
          double.nan);
      returns(
          'f64_no_fold_div_self_1',
          () => m.$('f64.no_fold_div_self', [$f64('7FF8000000000000')]),
          double.nan);
      returns('f64_no_fold_div_self_2',
          () => m.$('f64.no_fold_div_self', [$f64('0')]), double.nan);
      returns(
          'f64_no_fold_div_self_3',
          () => m.$('f64.no_fold_div_self', [$f64('8000000000000000')]),
          double.nan);
    });

    group('float_exprs.16.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.16.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns('f32_no_fold_div_3_0',
          () => m.$('f32.no_fold_div_3', [$f32('D89ACE13')]), $f32('D7CE6819'));
      returns('f32_no_fold_div_3_1',
          () => m.$('f32.no_fold_div_3', [$f32('EE722B23')]), $f32('EDA17217'));
      returns('f32_no_fold_div_3_2',
          () => m.$('f32.no_fold_div_3', [$f32('96151C8B')]), $f32('9546D0B9'));
      returns('f32_no_fold_div_3_3',
          () => m.$('f32.no_fold_div_3', [$f32('818FC59C')]), $f32('80BFB225'));
      returns('f32_no_fold_div_3_4',
          () => m.$('f32.no_fold_div_3', [$f32('A3EB27B2')]), $f32('A31CC521'));
      returns(
          'f64_no_fold_div_3_0',
          () => m.$('f64.no_fold_div_3', [$f64('E77A8A88D29E2CC3')]),
          $f64('E761B1B08C69732D'));
      returns(
          'f64_no_fold_div_3_1',
          () => m.$('f64.no_fold_div_3', [$f64('B58BCF52DC950972')]),
          $f64('B5728A373DB8B0F7'));
      returns(
          'f64_no_fold_div_3_2',
          () => m.$('f64.no_fold_div_3', [$f64('95BD3C0D989F7A4')]),
          $f64('9428D2B3BB14FC3'));
      returns(
          'f64_no_fold_div_3_3',
          () => m.$('f64.no_fold_div_3', [$f64('FEE0138BF530A53C')]),
          $f64('FEC56F6546EB86FB'));
      returns(
          'f64_no_fold_div_3_4',
          () => m.$('f64.no_fold_div_3', [$f64('59E052B87F9D794D')]),
          $f64('59C5C3A0AA274C67'));
    });

    group('float_exprs.17.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.17.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
          'f32_no_factor_0',
          () => m.$('f32.no_factor',
              [$f32('D3A711A9'), $f32('D8421716'), $f32('5D775301')]),
          $f32('F63BD3E8'));
      returns(
          'f32_no_factor_1',
          () => m.$('f32.no_factor',
              [$f32('BCDA73FB'), $f32('3D464C86'), $f32('BB386601')]),
          $f32('B88051A1'));
      returns(
          'f32_no_factor_2',
          () => m.$('f32.no_factor',
              [$f32('AB033917'), $f32('1FF769E7'), $f32('7D2E2AAC')]),
          $f32('E8B28D57'));
      returns(
          'f32_no_factor_3',
          () => m.$('f32.no_factor',
              [$f32('9FFC6352'), $f32('16046403'), $f32('7ADAE766')]),
          $f32('DB57D0A8'));
      returns(
          'f32_no_factor_4',
          () => m.$('f32.no_factor',
              [$f32('959D550F'), $f32('1C636AF7'), $f32('49C69492')]),
          $f32('26B064E7'));
      returns(
          'f64_no_factor_0',
          () => m.$('f64.no_factor', [
                $f64('2573ADEDA9144977'),
                $f64('231C15AF887049E1'),
                $f64('B1E905179C4C4778')
              ]),
          $f64('976EC606BCB87B1A'));
      returns(
          'f64_no_factor_1',
          () => m.$('f64.no_factor', [
                $f64('1693C84821C1D348'),
                $f64('80E4FFD4C77AD037'),
                $f64('842DD275335C6F40')
              ]),
          $f64('0'));
      returns(
          'f64_no_factor_2',
          () => m.$('f64.no_factor', [
                $f64('AB1074F372347051'),
                $f64('AE5AAEEF661F4C96'),
                $f64('DDE9BD34ABE8696D')
              ]),
          $f64('4C55767029593E20'));
      returns(
          'f64_no_factor_3',
          () => m.$('f64.no_factor', [
                $f64('ADEC4DED58A6F389'),
                $f64('2FBBA6FDEF5D59C9'),
                $f64('B02C1201C0470205')
              ]),
          $f64('9FF841ADA2E0F184'));
      returns(
          'f64_no_factor_4',
          () => m.$('f64.no_factor', [
                $f64('19F9D3688F8E375A'),
                $f64('1BCBF91311588256'),
                $f64('DE81605A6B5D5FF8')
              ]),
          $f64('BA5E6118CA76AF53'));
    });

    group('float_exprs.18.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.18.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
          'f32_no_distribute_0',
          () => m.$('f32.no_distribute',
              [$f32('D3A711A9'), $f32('D8421716'), $f32('5D775301')]),
          $f32('F63BD3E9'));
      returns(
          'f32_no_distribute_1',
          () => m.$('f32.no_distribute',
              [$f32('BCDA73FB'), $f32('3D464C86'), $f32('BB386601')]),
          $f32('B88051A0'));
      returns(
          'f32_no_distribute_2',
          () => m.$('f32.no_distribute',
              [$f32('AB033917'), $f32('1FF769E7'), $f32('7D2E2AAC')]),
          $f32('E8B28D58'));
      returns(
          'f32_no_distribute_3',
          () => m.$('f32.no_distribute',
              [$f32('9FFC6352'), $f32('16046403'), $f32('7ADAE766')]),
          $f32('DB57D0A7'));
      returns(
          'f32_no_distribute_4',
          () => m.$('f32.no_distribute',
              [$f32('959D550F'), $f32('1C636AF7'), $f32('49C69492')]),
          $f32('26B064E6'));
      returns(
          'f64_no_distribute_0',
          () => m.$('f64.no_distribute', [
                $f64('2573ADEDA9144977'),
                $f64('231C15AF887049E1'),
                $f64('B1E905179C4C4778')
              ]),
          $f64('976EC606BCB87B1B'));
      returns(
          'f64_no_distribute_1',
          () => m.$('f64.no_distribute', [
                $f64('1693C84821C1D348'),
                $f64('80E4FFD4C77AD037'),
                $f64('842DD275335C6F40')
              ]),
          $f64('8000000000000000'));
      returns(
          'f64_no_distribute_2',
          () => m.$('f64.no_distribute', [
                $f64('AB1074F372347051'),
                $f64('AE5AAEEF661F4C96'),
                $f64('DDE9BD34ABE8696D')
              ]),
          $f64('4C55767029593E1F'));
      returns(
          'f64_no_distribute_3',
          () => m.$('f64.no_distribute', [
                $f64('ADEC4DED58A6F389'),
                $f64('2FBBA6FDEF5D59C9'),
                $f64('B02C1201C0470205')
              ]),
          $f64('9FF841ADA2E0F183'));
      returns(
          'f64_no_distribute_4',
          () => m.$('f64.no_distribute', [
                $f64('19F9D3688F8E375A'),
                $f64('1BCBF91311588256'),
                $f64('DE81605A6B5D5FF8')
              ]),
          $f64('BA5E6118CA76AF52'));
    });

    group('float_exprs.19.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.19.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
          'f32_no_regroup_div_mul_0',
          () => m.$('f32.no_regroup_div_mul',
              [$f32('86168A53'), $f32('9FABAD36'), $f32('5AE7707')]),
          $f32('20142265'));
      returns(
        'f32_no_regroup_div_mul_1',
        () => m.$('f32.no_regroup_div_mul',
            [$f32('ED22A39C'), $f32('86594533'), $f32('E3FA9C84')]),
        $f32('80000000'),
        skip: 'failed',
      );
      returns(
          'f32_no_regroup_div_mul_2',
          () => m.$('f32.no_regroup_div_mul',
              [$f32('C7B5F2B7'), $f32('B55A37E3'), $f32('82528EFB')]),
          $f32('FABC912C'));
      returns(
          'f32_no_regroup_div_mul_3',
          () => m.$('f32.no_regroup_div_mul',
              [$f32('90E1A1FC'), $f32('64726C83'), $f32('61DF34FC')]),
          $f32('93750EF9'));
      returns(
          'f32_no_regroup_div_mul_4',
          () => m.$('f32.no_regroup_div_mul',
              [$f32('77E3573B'), $f32('4BFE4A9E'), $f32('E33059F4')]),
          $f32('E0A3E875'));
      returns(
          'f64_no_regroup_div_mul_0',
          () => m.$('f64.no_regroup_div_mul', [
                $f64('2583C04B815E30B0'),
                $f64('B88379646FD98127'),
                $f64('17DBDDB158506031')
              ]),
          $f64('C62B9B3301F2DD2D'));
      returns(
          'f64_no_regroup_div_mul_1',
          () => m.$('f64.no_regroup_div_mul', [
                $f64('55046B3A402F86D5'),
                $f64('2406FBF1B9E1798D'),
                $f64('F1CBD9704A5A6A06')
              ]),
          $f64('8000000000000000'));
      returns(
          'f64_no_regroup_div_mul_2',
          () => m.$('f64.no_regroup_div_mul', [
                $f64('2206C9765BB4347F'),
                $f64('785A4AF42E34A141'),
                $f64('23FD2DDE70EB68F9')
              ]),
          $f64('7FF0000000000000'));
      returns(
          'f64_no_regroup_div_mul_3',
          () => m.$('f64.no_regroup_div_mul', [
                $f64('DDF706023645BE72'),
                $f64('E626C229F7D9101D'),
                $f64('F434D50FA68D3D9E')
              ]),
          $f64('CFE926FA3CACC651'));
      returns(
          'f64_no_regroup_div_mul_4',
          () => m.$('f64.no_regroup_div_mul', [
                $f64('1A88CC63D8CAF4C7'),
                $f64('918671AC4C35753'),
                $f64('8B9EF35B1695E659')
              ]),
          $f64('98038D55F56406D0'));
    });

    group('float_exprs.20.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.20.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
        'f32_no_regroup_mul_div_0',
        () => m.$('f32.no_regroup_mul_div',
            [$f32('86168A53'), $f32('9FABAD36'), $f32('5AE7707')]),
        $f32('0'),
        skip: 'failed',
      );
      returns(
          'f32_no_regroup_mul_div_1',
          () => m.$('f32.no_regroup_mul_div',
              [$f32('ED22A39C'), $f32('86594533'), $f32('E3FA9C84')]),
          $f32('8F8D0074'));
      returns(
          'f32_no_regroup_mul_div_2',
          () => m.$('f32.no_regroup_mul_div',
              [$f32('C7B5F2B7'), $f32('B55A37E3'), $f32('82528EFB')]),
          $f32('FABC912D'));
      returns(
          'f32_no_regroup_mul_div_3',
          () => m.$('f32.no_regroup_mul_div',
              [$f32('90E1A1FC'), $f32('64726C83'), $f32('61DF34FC')]),
          $f32('93750EFA'));
      returns(
        'f32_no_regroup_mul_div_4',
        () => m.$('f32.no_regroup_mul_div',
            [$f32('77E3573B'), $f32('4BFE4A9E'), $f32('E33059F4')]),
        $f32('FF800000'),
        skip: 'failed',
      );
      returns(
          'f64_no_regroup_mul_div_0',
          () => m.$('f64.no_regroup_mul_div', [
                $f64('2583C04B815E30B0'),
                $f64('B88379646FD98127'),
                $f64('17DBDDB158506031')
              ]),
          $f64('C62B9B3301F2DD2E'));
      returns(
          'f64_no_regroup_mul_div_1',
          () => m.$('f64.no_regroup_mul_div', [
                $f64('55046B3A402F86D5'),
                $f64('2406FBF1B9E1798D'),
                $f64('F1CBD9704A5A6A06')
              ]),
          $f64('8740DA0B6328E090'));
      returns(
          'f64_no_regroup_mul_div_2',
          () => m.$('f64.no_regroup_mul_div', [
                $f64('2206C9765BB4347F'),
                $f64('785A4AF42E34A141'),
                $f64('23FD2DDE70EB68F9')
              ]),
          $f64('7664886B6D9A9A79'));
      returns(
          'f64_no_regroup_mul_div_3',
          () => m.$('f64.no_regroup_mul_div', [
                $f64('DDF706023645BE72'),
                $f64('E626C229F7D9101D'),
                $f64('F434D50FA68D3D9E')
              ]),
          $f64('FFF0000000000000'));
      returns(
          'f64_no_regroup_mul_div_4',
          () => m.$('f64.no_regroup_mul_div', [
                $f64('1A88CC63D8CAF4C7'),
                $f64('918671AC4C35753'),
                $f64('8B9EF35B1695E659')
              ]),
          $f64('8000000000000000'));
    });

    group('float_exprs.21.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.21.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
          'f32_no_reassociate_add_0',
          () => m.$('f32.no_reassociate_add', [
                $f32('D5AFBEEE'),
                $f32('50C2A708'),
                $f32('D7590346'),
                $f32('D4104B49')
              ]),
          $f32('D771363B'));
      returns(
          'f32_no_reassociate_add_1',
          () => m.$('f32.no_reassociate_add', [
                $f32('3B6D1DBC'),
                $f32('BC21897D'),
                $f32('3D81CAF3'),
                $f32('BC36AF53')
              ]),
          $f32('3D3C598D'));
      returns(
          'f32_no_reassociate_add_2',
          () => m.$('f32.no_reassociate_add', [
                $f32('D0FEDC9D'),
                $f32('D45B7E73'),
                $f32('55E098EC'),
                $f32('52C41ADB')
              ]),
          $f32('55C7F9D1'));
      returns(
          'f32_no_reassociate_add_3',
          () => m.$('f32.no_reassociate_add', [
                $f32('570B9CFE'),
                $f32('585258C3'),
                $f32('D106311E'),
                $f32('590B5081')
              ]),
          $f32('59489FFB'));
      returns(
          'f32_no_reassociate_add_4',
          () => m.$('f32.no_reassociate_add', [
                $f32('75B99E7D'),
                $f32('F59C6986'),
                $f32('7417AC2A'),
                $f32('EEE6582C')
              ]),
          $f32('74C09B8B'));
      returns(
          'f64_no_reassociate_add_0',
          () => m.$('f64.no_reassociate_add', [
                $f64('F48697A4D9FF19A6'),
                $f64('74EB305466238397'),
                $f64('756E0B2D9BFB4E72'),
                $f64('F586E1F3AE2B06BB')
              ]),
          $f64('F57EB0E5936F087A'));
      returns(
          'f64_no_reassociate_add_1',
          () => m.$('f64.no_reassociate_add', [
                $f64('1E000EF6746B30E1'),
                $f64('1DFCC1CFAFDF3FE1'),
                $f64('9E0F7726DF3ECBA6'),
                $f64('9ADB26695F99D307')
              ]),
          $f64('9DC074892E3FAD76'));
      returns(
          'f64_no_reassociate_add_2',
          () => m.$('f64.no_reassociate_add', [
                $f64('DB7E807B3BD6D854'),
                $f64('596CEDAE26C2C5F0'),
                $f64('DB400AB6E1442541'),
                $f64('58C28538A55997BD')
              ]),
          $f64('DB8040E90BF871EB'));
      returns(
          'f64_no_reassociate_add_3',
          () => m.$('f64.no_reassociate_add', [
                $f64('AC2BA2B6F35A2402'),
                $f64('2CCAD1C3FEA7CD9E'),
                $f64('AF993AACE2BF1261'),
                $f64('2FB9FDDBE472847E')
              ]),
          $f64('2FB3AF30ABC2C01B'));
      returns(
          'f64_no_reassociate_add_4',
          () => m.$('f64.no_reassociate_add', [
                $f64('E80CCB9C6092FB1D'),
                $f64('E654B7C28C108244'),
                $f64('6858A7CEFEF4BDE1'),
                $f64('E83901B28B08B482')
              ]),
          $f64('6851810579194126'));
    });

    group('float_exprs.22.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.22.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
        'f32_no_reassociate_mul_0',
        () => m.$('f32.no_reassociate_mul', [
          $f32('5CA85D4'),
          $f32('2F77ED67'),
          $f32('F2AFCDE0'),
          $f32('23F82284')
        ]),
        $f32('8D7F9AB7'),
        skip: 'failed',
      );
      returns(
          'f32_no_reassociate_mul_1',
          () => m.$('f32.no_reassociate_mul', [
                $f32('23ACC857'),
                $f32('F2BEFD82'),
                $f32('8127BBA5'),
                $f32('E2ACAFF3')
              ]),
          $f32('BBE3E47E'));
      returns(
          'f32_no_reassociate_mul_2',
          () => m.$('f32.no_reassociate_mul', [
                $f32('27B56CD2'),
                $f32('DB489C55'),
                $f32('ABA53BA7'),
                $f32('658FF840')
              ]),
          $f32('55CE6C76'));
      returns(
          'f32_no_reassociate_mul_3',
          () => m.$('f32.no_reassociate_mul', [
                $f32('B70E576'),
                $f32('665786E9'),
                $f32('DB80B770'),
                $f32('DD55B86B')
              ]),
          $f32('6C2A4387'));
      returns(
        'f32_no_reassociate_mul_4',
        () => m.$('f32.no_reassociate_mul', [
          $f32('8E1D8EE0'),
          $f32('27272D1A'),
          $f32('C11C5D2D'),
          $f32('5D3FDC77')
        ]),
        $f32('152DDFCC'),
        skip: 'failed',
      );
      returns(
          'f64_no_reassociate_mul_0',
          () => m.$('f64.no_reassociate_mul', [
                $f64('964E7842AB718100'),
                $f64('FDDFABF40CEECEAF'),
                $f64('A871A38A825AB01A'),
                $f64('E9727E8EA469B14F')
              ]),
          $f64('664336EB428AF4F3'));
      returns(
          'f64_no_reassociate_mul_1',
          () => m.$('f64.no_reassociate_mul', [
                $f64('5C54CA2292A6ACBC'),
                $f64('1FB6FFBAB850089A'),
                $f64('87C547C32E1F5B93'),
                $f64('E1BC7571D9388375')
              ]),
          $f64('25C1AC796954FC10'));
      returns(
          'f64_no_reassociate_mul_2',
          () => m.$('f64.no_reassociate_mul', [
                $f64('20A73881A52E0401'),
                $f64('F131B68DD9EFB1A7'),
                $f64('105D1C5E6A3EB27C'),
                $f64('C5756CB2FCC7546F')
              ]),
          $f64('27DF508DB92C34EF'));
      returns(
          'f64_no_reassociate_mul_3',
          () => m.$('f64.no_reassociate_mul', [
                $f64('6B32EFA87859987C'),
                $f64('25868E4373E24100'),
                $f64('4DE4E2D0FB383A57'),
                $f64('BE8301D3265C737B')
              ]),
          $f64('DD54B2B6C393F30C'));
      returns(
          'f64_no_reassociate_mul_4',
          () => m.$('f64.no_reassociate_mul', [
                $f64('3151013F7498B95F'),
                $f64('E7D2D1C36FFF138'),
                $f64('ED7CBF1824EA7BFD'),
                $f64('9A8440DA9C8B836D')
              ]),
          $f64('801A16512881C91'));
    });

    group('float_exprs.23.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.23.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns('f32_no_fold_div_0_0',
          () => m.$('f32.no_fold_div_0', [$f32('3F800000')]), $f32('7F800000'));
      returns('f32_no_fold_div_0_1',
          () => m.$('f32.no_fold_div_0', [$f32('BF800000')]), $f32('FF800000'));
      returns('f32_no_fold_div_0_2',
          () => m.$('f32.no_fold_div_0', [$f32('7F800000')]), $f32('7F800000'));
      returns('f32_no_fold_div_0_3',
          () => m.$('f32.no_fold_div_0', [$f32('FF800000')]), $f32('FF800000'));
      returns('f32_no_fold_div_0_4',
          () => m.$('f32.no_fold_div_0', [$f32('0')]), double.nan);
      returns('f32_no_fold_div_0_5',
          () => m.$('f32.no_fold_div_0', [$f32('80000000')]), double.nan);
      returns('f32_no_fold_div_0_6',
          () => m.$('f32.no_fold_div_0', [$f32('7FA00000')]), double.nan);
      returns('f32_no_fold_div_0_7',
          () => m.$('f32.no_fold_div_0', [$f32('7FC00000')]), double.nan);
      returns(
          'f64_no_fold_div_0_0',
          () => m.$('f64.no_fold_div_0', [$f64('3FF0000000000000')]),
          $f64('7FF0000000000000'));
      returns(
          'f64_no_fold_div_0_1',
          () => m.$('f64.no_fold_div_0', [$f64('BFF0000000000000')]),
          $f64('FFF0000000000000'));
      returns(
          'f64_no_fold_div_0_2',
          () => m.$('f64.no_fold_div_0', [$f64('7FF0000000000000')]),
          $f64('7FF0000000000000'));
      returns(
          'f64_no_fold_div_0_3',
          () => m.$('f64.no_fold_div_0', [$f64('FFF0000000000000')]),
          $f64('FFF0000000000000'));
      returns('f64_no_fold_div_0_4',
          () => m.$('f64.no_fold_div_0', [$f64('0')]), double.nan);
      returns(
          'f64_no_fold_div_0_5',
          () => m.$('f64.no_fold_div_0', [$f64('8000000000000000')]),
          double.nan);
      returns(
          'f64_no_fold_div_0_6',
          () => m.$('f64.no_fold_div_0', [$f64('7FF8000000000000')]),
          double.nan);
      returns(
          'f64_no_fold_div_0_7',
          () => m.$('f64.no_fold_div_0', [$f64('7FF4000000000000')]),
          double.nan);
    });

    group('float_exprs.24.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.24.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
          'f32_no_fold_div_neg0_0',
          () => m.$('f32.no_fold_div_neg0', [$f32('3F800000')]),
          $f32('FF800000'));
      returns(
          'f32_no_fold_div_neg0_1',
          () => m.$('f32.no_fold_div_neg0', [$f32('BF800000')]),
          $f32('7F800000'));
      returns(
          'f32_no_fold_div_neg0_2',
          () => m.$('f32.no_fold_div_neg0', [$f32('7F800000')]),
          $f32('FF800000'));
      returns(
          'f32_no_fold_div_neg0_3',
          () => m.$('f32.no_fold_div_neg0', [$f32('FF800000')]),
          $f32('7F800000'));
      returns('f32_no_fold_div_neg0_4',
          () => m.$('f32.no_fold_div_neg0', [$f32('0')]), double.nan);
      returns('f32_no_fold_div_neg0_5',
          () => m.$('f32.no_fold_div_neg0', [$f32('80000000')]), double.nan);
      returns('f32_no_fold_div_neg0_6',
          () => m.$('f32.no_fold_div_neg0', [$f32('7FA00000')]), double.nan);
      returns('f32_no_fold_div_neg0_7',
          () => m.$('f32.no_fold_div_neg0', [$f32('7FC00000')]), double.nan);
      returns(
          'f64_no_fold_div_neg0_0',
          () => m.$('f64.no_fold_div_neg0', [$f64('3FF0000000000000')]),
          $f64('FFF0000000000000'));
      returns(
          'f64_no_fold_div_neg0_1',
          () => m.$('f64.no_fold_div_neg0', [$f64('BFF0000000000000')]),
          $f64('7FF0000000000000'));
      returns(
          'f64_no_fold_div_neg0_2',
          () => m.$('f64.no_fold_div_neg0', [$f64('7FF0000000000000')]),
          $f64('FFF0000000000000'));
      returns(
          'f64_no_fold_div_neg0_3',
          () => m.$('f64.no_fold_div_neg0', [$f64('FFF0000000000000')]),
          $f64('7FF0000000000000'));
      returns('f64_no_fold_div_neg0_4',
          () => m.$('f64.no_fold_div_neg0', [$f64('0')]), double.nan);
      returns(
          'f64_no_fold_div_neg0_5',
          () => m.$('f64.no_fold_div_neg0', [$f64('8000000000000000')]),
          double.nan);
      returns(
          'f64_no_fold_div_neg0_6',
          () => m.$('f64.no_fold_div_neg0', [$f64('7FF8000000000000')]),
          double.nan);
      returns(
          'f64_no_fold_div_neg0_7',
          () => m.$('f64.no_fold_div_neg0', [$f64('7FF4000000000000')]),
          double.nan);
    });

    group('float_exprs.25.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.25.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
        'f32_no_fold_to_hypot_0',
        () => m.$('f32.no_fold_to_hypot', [$f32('1761799C'), $f32('1DA00DAF')]),
        $f32('1DA00E66'),
        skip: 'failed',
      );
      returns(
        'f32_no_fold_to_hypot_1',
        () => m.$('f32.no_fold_to_hypot', [$f32('9C61C688'), $f32('8A1ACEE8')]),
        $f32('1C61B531'),
        skip: 'failed',
      );
      returns(
        'f32_no_fold_to_hypot_2',
        () => m.$('f32.no_fold_to_hypot', [$f32('86CCF065'), $f32('9D768636')]),
        $f32('1D768724'),
        skip: 'failed',
      );
      returns(
          'f32_no_fold_to_hypot_3',
          () =>
              m.$('f32.no_fold_to_hypot', [$f32('C20DB675'), $f32('482A205F')]),
          $f32('482A2060'));
      returns(
        'f32_no_fold_to_hypot_4',
        () => m.$('f32.no_fold_to_hypot', [$f32('19C780CF'), $f32('9C0C1184')]),
        $f32('1C0BF15E'),
        skip: 'failed',
      );
      returns(
          'f64_no_fold_to_hypot_0',
          () => m.$('f64.no_fold_to_hypot',
              [$f64('1831A0AC4F7C8711'), $f64('1E91372EBAFFF551')]),
          $f64('1E913463FA37014E'));
      returns(
          'f64_no_fold_to_hypot_1',
          () => m.$('f64.no_fold_to_hypot',
              [$f64('58AB793512167499'), $f64('D9911CBC52AF4C36')]),
          $f64('59911CBC530783A2'));
      returns(
          'f64_no_fold_to_hypot_2',
          () => m.$('f64.no_fold_to_hypot',
              [$f64('1E776777F44FF40B'), $f64('901C3896E4DC1FB0')]),
          $f64('1E78000000000000'));
      returns(
          'f64_no_fold_to_hypot_3',
          () => m.$('f64.no_fold_to_hypot',
              [$f64('9F6889AC72CC6B5D'), $f64('1228D7084E659F3B')]),
          $f64('1F6889AC72CA843A'));
      returns(
          'f64_no_fold_to_hypot_4',
          () => m.$('f64.no_fold_to_hypot',
              [$f64('1615EE588C02CB08'), $f64('9FD05CE25788D9EC')]),
          $f64('1FD05CE25788D9DF'));
    });

    group('float_exprs.26.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.26.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
          'f32_no_approximate_reciprocal_0',
          () => m.$('f32.no_approximate_reciprocal', [$f32('BA94805B')]),
          $f32('C45CA86A'));
      returns(
          'f32_no_approximate_reciprocal_1',
          () => m.$('f32.no_approximate_reciprocal', [$f32('7F739090')]),
          $f32('21A23F'));
      returns(
          'f32_no_approximate_reciprocal_2',
          () => m.$('f32.no_approximate_reciprocal', [$f32('91215233')]),
          $f32('EDCB1F73'));
      returns(
          'f32_no_approximate_reciprocal_3',
          () => m.$('f32.no_approximate_reciprocal', [$f32('65AE8619')]),
          $f32('193BC1B1'));
      returns(
          'f32_no_approximate_reciprocal_4',
          () => m.$('f32.no_approximate_reciprocal', [$f32('96B00EF1')]),
          $f32('E83A1EBF'));
    });

    group('float_exprs.27.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.27.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
          'f32_no_approximate_reciprocal_sqrt_0',
          () => m.$('f32.no_approximate_reciprocal_sqrt', [$f32('2A357895')]),
          $f32('4A18076A'));
      returns(
          'f32_no_approximate_reciprocal_sqrt_1',
          () => m.$('f32.no_approximate_reciprocal_sqrt', [$f32('3BF417E3')]),
          $f32('413961BB'));
      returns(
          'f32_no_approximate_reciprocal_sqrt_2',
          () => m.$('f32.no_approximate_reciprocal_sqrt', [$f32('1EDCFD4E')]),
          $f32('4FC2D4DD'));
      returns(
          'f32_no_approximate_reciprocal_sqrt_3',
          () => m.$('f32.no_approximate_reciprocal_sqrt', [$f32('29FA7AA3')]),
          $f32('4A3700E1'));
      returns(
          'f32_no_approximate_reciprocal_sqrt_4',
          () => m.$('f32.no_approximate_reciprocal_sqrt', [$f32('14AED3D5')]),
          $f32('54DB0C65'));
      returns(
          'f64_no_fuse_reciprocal_sqrt_0',
          () => m.$('f64.no_fuse_reciprocal_sqrt', [$f64('7781568A63B55FA3')]),
          $f64('2425BC9C74C99520'));
      returns(
          'f64_no_fuse_reciprocal_sqrt_1',
          () => m.$('f64.no_fuse_reciprocal_sqrt', [$f64('536239FCD0939CAF')]),
          $f64('3635334A922B4818'));
      returns(
          'f64_no_fuse_reciprocal_sqrt_2',
          () => m.$('f64.no_fuse_reciprocal_sqrt', [$f64('4676E36A24E11054')]),
          $f64('3CAAC13F20977F29'));
      returns(
          'f64_no_fuse_reciprocal_sqrt_3',
          () => m.$('f64.no_fuse_reciprocal_sqrt', [$f64('69B23EE173219F83')]),
          $f64('2B0DF753E055862D'));
      returns(
          'f64_no_fuse_reciprocal_sqrt_4',
          () => m.$('f64.no_fuse_reciprocal_sqrt', [$f64('491B30F74CAF9BAB')]),
          $f64('3B588BFC3D1764A9'));
    });

    group('float_exprs.28.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.28.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
          'f32_no_approximate_sqrt_reciprocal_0',
          () => m.$('f32.no_approximate_sqrt_reciprocal', [$f32('5DD264C3')]),
          $f32('3047AD63'));
      returns(
          'f32_no_approximate_sqrt_reciprocal_1',
          () => m.$('f32.no_approximate_sqrt_reciprocal', [$f32('3B28288F')]),
          $f32('419DEEA3'));
      returns(
          'f32_no_approximate_sqrt_reciprocal_2',
          () => m.$('f32.no_approximate_sqrt_reciprocal', [$f32('62092F61')]),
          $f32('2E2EDAB9'));
      returns(
          'f32_no_approximate_sqrt_reciprocal_3',
          () => m.$('f32.no_approximate_sqrt_reciprocal', [$f32('465D2628')]),
          $f32('3C09B78B'));
      returns(
          'f32_no_approximate_sqrt_reciprocal_4',
          () => m.$('f32.no_approximate_sqrt_reciprocal', [$f32('73A52DF1')]),
          $f32('25615AD8'));
    });

    group('float_exprs.29.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.29.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns('i32_no_fold_f32_s_0',
          () => m.$('i32.no_fold_f32_s', [$i32('1000000')]), $i32('1000000'));
      returns(
        'i32_no_fold_f32_s_1',
        () => m.$('i32.no_fold_f32_s', [$i32('1000001')]),
        $i32('1000000'),
        skip: 'failed',
      );
      returns('i32_no_fold_f32_s_2',
          () => m.$('i32.no_fold_f32_s', [$i32('F0000010')]), $i32('F0000010'));
      returns('i32_no_fold_f32_u_0',
          () => m.$('i32.no_fold_f32_u', [$i32('1000000')]), $i32('1000000'));
      returns(
        'i32_no_fold_f32_u_1',
        () => m.$('i32.no_fold_f32_u', [$i32('1000001')]),
        $i32('1000000'),
        skip: 'failed',
      );
      returns(
        'i32_no_fold_f32_u_2',
        () => m.$('i32.no_fold_f32_u', [$i32('F0000010')]),
        $i32('F0000000'),
        skip: 'failed',
      );
      returns(
          'i64_no_fold_f64_s_0',
          () => m.$('i64.no_fold_f64_s', [$i64('20000000000000')]),
          $i64('20000000000000'));
      returns(
          'i64_no_fold_f64_s_1',
          () => m.$('i64.no_fold_f64_s', [$i64('20000000000001')]),
          $i64('20000000000000'));
      returns(
          'i64_no_fold_f64_s_2',
          () => m.$('i64.no_fold_f64_s', [$i64('F000000000000400')]),
          $i64('F000000000000400'));
      returns(
          'i64_no_fold_f64_u_0',
          () => m.$('i64.no_fold_f64_u', [$i64('20000000000000')]),
          $i64('20000000000000'));
      returns(
          'i64_no_fold_f64_u_1',
          () => m.$('i64.no_fold_f64_u', [$i64('20000000000001')]),
          $i64('20000000000000'));
      returns(
        'i64_no_fold_f64_u_2',
        () => m.$('i64.no_fold_f64_u', [$i64('F000000000000400')]),
        $i64('F000000000000000'),
        skip: 'failed',
      );
    });

    group('float_exprs.30.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.30.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
        'f32_no_fold_add_sub_0',
        () => m.$('f32.no_fold_add_sub', [$f32('285AA9F2'), $f32('B2B3ED96')]),
        $f32('28600000'),
        skip: 'failed',
      );
      returns(
          'f32_no_fold_add_sub_1',
          () =>
              m.$('f32.no_fold_add_sub', [$f32('B4544268'), $f32('3679570F')]),
          $f32('B4544270'));
      returns(
        'f32_no_fold_add_sub_2',
        () => m.$('f32.no_fold_add_sub', [$f32('E8FE0278'), $f32('F232A01D')]),
        $f32('E9000000'),
        skip: 'failed',
      );
      returns(
        'f32_no_fold_add_sub_3',
        () => m.$('f32.no_fold_add_sub', [$f32('18C387D1'), $f32('23E2A48B')]),
        $f32('18C00000'),
        skip: 'failed',
      );
      returns(
        'f32_no_fold_add_sub_4',
        () => m.$('f32.no_fold_add_sub', [$f32('898BF4B3'), $f32('95AFD30D')]),
        $f32('8A000000'),
        skip: 'failed',
      );
      returns(
          'f64_no_fold_add_sub_0',
          () => m.$('f64.no_fold_add_sub',
              [$f64('8951053EA172DBA8'), $f64('A6113C413408AC8')]),
          $f64('8951053EA1720000'));
      returns(
          'f64_no_fold_add_sub_1',
          () => m.$('f64.no_fold_add_sub',
              [$f64('1DDE377D54807972'), $f64('1F1040A0A4D1FF70')]),
          $f64('1DDE377D54800000'));
      returns(
          'f64_no_fold_add_sub_2',
          () => m.$('f64.no_fold_add_sub',
              [$f64('BE175F53CD926B62'), $f64('BFC66B176E602BB5')]),
          $f64('BE175F53D0000000'));
      returns(
          'f64_no_fold_add_sub_3',
          () => m.$('f64.no_fold_add_sub',
              [$f64('AAAC450FF28332A0'), $f64('2CE15A5855023BAE')]),
          $f64('AAAC451000000000'));
      returns(
          'f64_no_fold_add_sub_4',
          () => m.$('f64.no_fold_add_sub',
              [$f64('9941AD4A596D3EA8'), $f64('9B317D81A41C0EA8')]),
          $f64('9941AD4A80000000'));
    });

    group('float_exprs.31.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.31.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
          'f32_no_fold_sub_add_0',
          () =>
              m.$('f32.no_fold_sub_add', [$f32('C4291E5C'), $f32('43C984B6')]),
          $f32('C4291E5D'));
      returns(
        'f32_no_fold_sub_add_1',
        () => m.$('f32.no_fold_sub_add', [$f32('88518D08'), $f32('103A2F78')]),
        $f32('88520000'),
        skip: 'failed',
      );
      returns(
        'f32_no_fold_sub_add_2',
        () => m.$('f32.no_fold_sub_add', [$f32('4C9EA994'), $f32('512C2B38')]),
        $f32('4C9EAA00'),
        skip: 'failed',
      );
      returns(
        'f32_no_fold_sub_add_3',
        () => m.$('f32.no_fold_sub_add', [$f32('2C1BA713'), $f32('B2335280')]),
        $f32('2C1BA000'),
        skip: 'failed',
      );
      returns(
        'f32_no_fold_sub_add_4',
        () => m.$('f32.no_fold_sub_add', [$f32('3E1907D6'), $f32('C6D6034D')]),
        $f32('3E1A0000'),
        skip: 'failed',
      );
      returns(
          'f64_no_fold_sub_add_0',
          () => m.$('f64.no_fold_sub_add',
              [$f64('4FE8F92AAD2C9B8D'), $f64('D0208CD4992266CB')]),
          $f64('4FE8F92AAD2C9B90'));
      returns(
          'f64_no_fold_sub_add_1',
          () => m.$('f64.no_fold_sub_add',
              [$f64('1655AAFF55742C8B'), $f64('1788F5F47181F46D')]),
          $f64('1655AAFF55780000'));
      returns(
          'f64_no_fold_sub_add_2',
          () => m.$('f64.no_fold_sub_add',
              [$f64('4FA21BC52967A98D'), $f64('D2BFCFFAA32D0884')]),
          $f64('4FA2000000000000'));
      returns(
          'f64_no_fold_sub_add_3',
          () => m.$('f64.no_fold_sub_add',
              [$f64('3E59C78361F47374'), $f64('BF269D69F4EDC61C')]),
          $f64('3E59C78361F48000'));
      returns(
          'f64_no_fold_sub_add_4',
          () => m.$('f64.no_fold_sub_add',
              [$f64('2904DBE68E4AFAB2'), $f64('A96DC24E5B39CD02')]),
          $f64('2904DBE68E4AFAC0'));
    });

    group('float_exprs.32.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.32.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
          'f32_no_fold_mul_div_0',
          () =>
              m.$('f32.no_fold_mul_div', [$f32('DAE6C2CD'), $f32('2836549B')]),
          $f32('DAE6C2CC'));
      returns(
        'f32_no_fold_mul_div_1',
        () => m.$('f32.no_fold_mul_div', [$f32('B285AB5C'), $f32('AA41326')]),
        $f32('B285AB52'),
        skip: 'failed',
      );
      returns(
          'f32_no_fold_mul_div_2',
          () =>
              m.$('f32.no_fold_mul_div', [$f32('A7F3AAAE'), $f32('D7C8B0E0')]),
          $f32('A7F3AAAD'));
      returns(
          'f32_no_fold_mul_div_3',
          () =>
              m.$('f32.no_fold_mul_div', [$f32('59D55287'), $f32('DDEFD9CF')]),
          $f32('59D55286'));
      returns(
          'f32_no_fold_mul_div_4',
          () =>
              m.$('f32.no_fold_mul_div', [$f32('9195BEFD'), $f32('AD3E2653')]),
          $f32('9195BEFF'));
      returns(
          'f64_no_fold_mul_div_0',
          () => m.$('f64.no_fold_mul_div',
              [$f64('8BA3D79FF4118A1A'), $f64('B32B8B5DDA31808C')]),
          $f64('8BA3D79FF412263E'));
      returns(
          'f64_no_fold_mul_div_1',
          () => m.$('f64.no_fold_mul_div',
              [$f64('57FF894D1EE6B3A4'), $f64('6488C2606D03D58A')]),
          $f64('57FF894D1EE6B3A5'));
      returns(
          'f64_no_fold_mul_div_2',
          () => m.$('f64.no_fold_mul_div',
              [$f64('CEDA022260ACC993'), $f64('9D75FBC128FC8E3C')]),
          $f64('CEDA022260ACC992'));
      returns(
          'f64_no_fold_mul_div_3',
          () => m.$('f64.no_fold_mul_div',
              [$f64('3599D4B8ED174F54'), $f64('75EE3D467AEEAC6')]),
          $f64('3598DCC95A053B2B'));
      returns(
          'f64_no_fold_mul_div_4',
          () => m.$('f64.no_fold_mul_div',
              [$f64('E93E95EA897CDCD4'), $f64('AB8854D5DF085F2E')]),
          $f64('E93E95EA897CDCD5'));
    });

    group('float_exprs.33.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.33.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
          'f32_no_fold_div_mul_0',
          () =>
              m.$('f32.no_fold_div_mul', [$f32('D2EE31B2'), $f32('4E6B1876')]),
          $f32('D2EE31B1'));
      returns(
          'f32_no_fold_div_mul_1',
          () =>
              m.$('f32.no_fold_div_mul', [$f32('A58FCC1B'), $f32('B68B6272')]),
          $f32('A58FCC1C'));
      returns(
        'f32_no_fold_div_mul_2',
        () => m.$('f32.no_fold_div_mul', [$f32('E2CB96'), $f32('C36B32CF')]),
        $f32('E2CC07'),
        skip: 'failed',
      );
      returns(
        'f32_no_fold_div_mul_3',
        () => m.$('f32.no_fold_div_mul', [$f32('9A971D4F'), $f32('DD1A9CCA')]),
        $f32('9A971D20'),
        skip: 'failed',
      );
      returns(
          'f32_no_fold_div_mul_4',
          () => m.$('f32.no_fold_div_mul', [$f32('EECB5C1'), $f32('4D4AEC84')]),
          $f32('EECB5C2'));
      returns(
          'f64_no_fold_div_mul_0',
          () => m.$('f64.no_fold_div_mul',
              [$f64('93D01F913A52481'), $f64('CB72CD0668B28344')]),
          $f64('93D020DAF71CDC0'));
      returns(
          'f64_no_fold_div_mul_1',
          () => m.$('f64.no_fold_div_mul',
              [$f64('93581CB7D400918D'), $f64('3CA7CAA643586D6E')]),
          $f64('93581CB7D400918E'));
      returns(
          'f64_no_fold_div_mul_2',
          () => m.$('f64.no_fold_div_mul',
              [$f64('B6E66904C97B5C8E'), $f64('5AB5C3481592AD4C')]),
          $f64('B6E66904C97B5C8D'));
      returns(
          'f64_no_fold_div_mul_3',
          () => m.$('f64.no_fold_div_mul',
              [$f64('AE9E75859D2F0765'), $f64('D1A5F19B6AB497F9')]),
          $f64('AE9E75859D2F0764'));
      returns(
          'f64_no_fold_div_mul_4',
          () => m.$('f64.no_fold_div_mul',
              [$f64('E6B515FE9C3B5F50'), $f64('7DC36BE869C99F7A')]),
          $f64('E6B515FE9C3B5F4F'));
    });

    group('float_exprs.34.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.34.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
          'f32_no_fold_div2_mul2_0',
          () => m.$('f32.no_fold_div2_mul2', [$f32('FFFFFF')]),
          $f32('1000000'));
      returns(
          'f64_no_fold_div2_mul2_0',
          () => m.$('f64.no_fold_div2_mul2', [$f64('1FFFFFFFFFFFFF')]),
          $f64('20000000000000'));
    });

    group('float_exprs.35.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.35.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
        'no_fold_demote_promote_0',
        () => m.$('no_fold_demote_promote', [$f64('B7ADECE272390F5D')]),
        $f64('B7ADECE000000000'),
        skip: 'failed',
      );
      returns(
          'no_fold_demote_promote_1',
          () => m.$('no_fold_demote_promote', [$f64('BAA19E6C79938A6F')]),
          $f64('BAA19E6C80000000'));
      returns(
          'no_fold_demote_promote_2',
          () => m.$('no_fold_demote_promote', [$f64('46A49B297EC44DC1')]),
          $f64('46A49B2980000000'));
      returns(
          'no_fold_demote_promote_3',
          () => m.$('no_fold_demote_promote', [$f64('BA774F5BD8651630')]),
          $f64('BA774F5BE0000000'));
      returns(
          'no_fold_demote_promote_4',
          () => m.$('no_fold_demote_promote', [$f64('46726D675662367E')]),
          $f64('46726D6760000000'));
    });

    group('float_exprs.36.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.36.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
        'no_fold_promote_demote_0',
        () => m.$('no_fold_promote_demote', [$f32('7FA00000')]),
        double.nan,
        skip: 'failed',
      );
      returns('no_fold_promote_demote_1',
          () => m.$('no_fold_promote_demote', [$f32('0')]), $f32('0'));
      returns(
          'no_fold_promote_demote_2',
          () => m.$('no_fold_promote_demote', [$f32('80000000')]),
          $f32('80000000'));
      returns('no_fold_promote_demote_3',
          () => m.$('no_fold_promote_demote', [$f32('1')]), $f32('1'));
      returns(
          'no_fold_promote_demote_4',
          () => m.$('no_fold_promote_demote', [$f32('80000001')]),
          $f32('80000001'));
      returns(
          'no_fold_promote_demote_5',
          () => m.$('no_fold_promote_demote', [$f32('7FFFFF')]),
          $f32('7FFFFF'));
      returns(
          'no_fold_promote_demote_6',
          () => m.$('no_fold_promote_demote', [$f32('807FFFFF')]),
          $f32('807FFFFF'));
      returns(
          'no_fold_promote_demote_7',
          () => m.$('no_fold_promote_demote', [$f32('800000')]),
          $f32('800000'));
      returns(
          'no_fold_promote_demote_8',
          () => m.$('no_fold_promote_demote', [$f32('80800000')]),
          $f32('80800000'));
      returns(
          'no_fold_promote_demote_9',
          () => m.$('no_fold_promote_demote', [$f32('7F7FFFFF')]),
          $f32('7F7FFFFF'));
      returns(
          'no_fold_promote_demote_10',
          () => m.$('no_fold_promote_demote', [$f32('FF7FFFFF')]),
          $f32('FF7FFFFF'));
      returns(
        'no_fold_promote_demote_11',
        () => m.$('no_fold_promote_demote', [$f32('7F800000')]),
        $f32('7F800000'),
        skip: 'failed',
      );
      returns(
        'no_fold_promote_demote_12',
        () => m.$('no_fold_promote_demote', [$f32('FF800000')]),
        $f32('FF800000'),
        skip: 'failed',
      );
    });

    group('float_exprs.37.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.37.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
          'no_demote_mixed_add_0',
          () => m.$('no_demote_mixed_add',
              [$f64('3A0F51A9D04854F9'), $f32('41FA74E')]),
          $f32('107A8D4F'));
      returns(
          'no_demote_mixed_add_1',
          () => m.$('no_demote_mixed_add',
              [$f64('424065B3D81AD8D0'), $f32('52BAC66C')]),
          $f32('52FC5D3B'));
      returns(
          'no_demote_mixed_add_2',
          () => m.$('no_demote_mixed_add',
              [$f64('388626C80963BD17'), $f32('834DDFC3')]),
          $f32('3FB7C9F'));
      returns(
          'no_demote_mixed_add_3',
          () => m.$('no_demote_mixed_add',
              [$f64('BEB0D5110E3385BB'), $f32('3104B7A5')]),
          $f32('B586662D'));
      returns(
          'no_demote_mixed_add_4',
          () => m.$('no_demote_mixed_add',
              [$f64('BEB73852DB4E5075'), $f32('AB12723A')]),
          $f32('B5B9C29B'));
      returns(
          'no_demote_mixed_add_commuted_0',
          () => m.$('no_demote_mixed_add_commuted',
              [$f32('41FA74E'), $f64('3A0F51A9D04854F9')]),
          $f32('107A8D4F'));
      returns(
          'no_demote_mixed_add_commuted_1',
          () => m.$('no_demote_mixed_add_commuted',
              [$f32('52BAC66C'), $f64('424065B3D81AD8D0')]),
          $f32('52FC5D3B'));
      returns(
          'no_demote_mixed_add_commuted_2',
          () => m.$('no_demote_mixed_add_commuted',
              [$f32('834DDFC3'), $f64('388626C80963BD17')]),
          $f32('3FB7C9F'));
      returns(
          'no_demote_mixed_add_commuted_3',
          () => m.$('no_demote_mixed_add_commuted',
              [$f32('3104B7A5'), $f64('BEB0D5110E3385BB')]),
          $f32('B586662D'));
      returns(
          'no_demote_mixed_add_commuted_4',
          () => m.$('no_demote_mixed_add_commuted',
              [$f32('AB12723A'), $f64('BEB73852DB4E5075')]),
          $f32('B5B9C29B'));
    });

    group('float_exprs.38.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.38.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
          'no_demote_mixed_sub_0',
          () => m.$('no_demote_mixed_sub',
              [$f64('451A0A183220E9B1'), $f32('5E62D67C')]),
          $f32('68D050BA'));
      returns(
          'no_demote_mixed_sub_1',
          () => m.$('no_demote_mixed_sub',
              [$f64('C1D6E2C5AC39F63E'), $f32('486A4652')]),
          $f32('CEB71D80'));
      returns(
          'no_demote_mixed_sub_2',
          () => m.$('no_demote_mixed_sub',
              [$f64('C0598C74350DDE6A'), $f32('39CEB4DE')]),
          $f32('C2CC63D5'));
      returns(
          'no_demote_mixed_sub_3',
          () => m.$('no_demote_mixed_sub',
              [$f64('3C90459F34091DBF'), $f32('1C30D684')]),
          $f32('24822CA1'));
      returns(
          'no_demote_mixed_sub_4',
          () => m.$('no_demote_mixed_sub',
              [$f64('40DA7498DCA3FDB7'), $f32('477690E4')]),
          $f32('C70CBE81'));
    });

    group('float_exprs.39.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.39.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
          'f32_i32_no_fold_trunc_s_convert_s_0',
          () => m.$('f32.i32.no_fold_trunc_s_convert_s', [$f32('3FC00000')]),
          $f32('3F800000'));
      returns(
          'f32_i32_no_fold_trunc_s_convert_s_1',
          () => m.$('f32.i32.no_fold_trunc_s_convert_s', [$f32('BFC00000')]),
          $f32('BF800000'));
      returns(
          'f32_i32_no_fold_trunc_u_convert_s_0',
          () => m.$('f32.i32.no_fold_trunc_u_convert_s', [$f32('3FC00000')]),
          $f32('3F800000'));
      returns(
          'f32_i32_no_fold_trunc_u_convert_s_1',
          () => m.$('f32.i32.no_fold_trunc_u_convert_s', [$f32('BF000000')]),
          $f32('0'));
      returns(
          'f32_i32_no_fold_trunc_s_convert_u_0',
          () => m.$('f32.i32.no_fold_trunc_s_convert_u', [$f32('3FC00000')]),
          $f32('3F800000'));
      returns(
          'f32_i32_no_fold_trunc_s_convert_u_1',
          () => m.$('f32.i32.no_fold_trunc_s_convert_u', [$f32('BFC00000')]),
          $f32('4F800000'));
      returns(
          'f32_i32_no_fold_trunc_u_convert_u_0',
          () => m.$('f32.i32.no_fold_trunc_u_convert_u', [$f32('3FC00000')]),
          $f32('3F800000'));
      returns(
          'f32_i32_no_fold_trunc_u_convert_u_1',
          () => m.$('f32.i32.no_fold_trunc_u_convert_u', [$f32('BF000000')]),
          $f32('0'));
      returns(
          'f64_i32_no_fold_trunc_s_convert_s_0',
          () => m.$(
              'f64.i32.no_fold_trunc_s_convert_s', [$f64('3FF8000000000000')]),
          $f64('3FF0000000000000'));
      returns(
          'f64_i32_no_fold_trunc_s_convert_s_1',
          () => m.$(
              'f64.i32.no_fold_trunc_s_convert_s', [$f64('BFF8000000000000')]),
          $f64('BFF0000000000000'));
      returns(
          'f64_i32_no_fold_trunc_u_convert_s_0',
          () => m.$(
              'f64.i32.no_fold_trunc_u_convert_s', [$f64('3FF8000000000000')]),
          $f64('3FF0000000000000'));
      returns(
          'f64_i32_no_fold_trunc_u_convert_s_1',
          () => m.$(
              'f64.i32.no_fold_trunc_u_convert_s', [$f64('BFE0000000000000')]),
          $f64('0'));
      returns(
          'f64_i32_no_fold_trunc_s_convert_u_0',
          () => m.$(
              'f64.i32.no_fold_trunc_s_convert_u', [$f64('3FF8000000000000')]),
          $f64('3FF0000000000000'));
      returns(
          'f64_i32_no_fold_trunc_s_convert_u_1',
          () => m.$(
              'f64.i32.no_fold_trunc_s_convert_u', [$f64('BFF8000000000000')]),
          $f64('41EFFFFFFFE00000'));
      returns(
          'f64_i32_no_fold_trunc_u_convert_u_0',
          () => m.$(
              'f64.i32.no_fold_trunc_u_convert_u', [$f64('3FF8000000000000')]),
          $f64('3FF0000000000000'));
      returns(
          'f64_i32_no_fold_trunc_u_convert_u_1',
          () => m.$(
              'f64.i32.no_fold_trunc_u_convert_u', [$f64('BFE0000000000000')]),
          $f64('0'));
      returns(
          'f32_i64_no_fold_trunc_s_convert_s_0',
          () => m.$('f32.i64.no_fold_trunc_s_convert_s', [$f32('3FC00000')]),
          $f32('3F800000'));
      returns(
          'f32_i64_no_fold_trunc_s_convert_s_1',
          () => m.$('f32.i64.no_fold_trunc_s_convert_s', [$f32('BFC00000')]),
          $f32('BF800000'));
      returns(
          'f32_i64_no_fold_trunc_u_convert_s_0',
          () => m.$('f32.i64.no_fold_trunc_u_convert_s', [$f32('3FC00000')]),
          $f32('3F800000'));
      returns(
          'f32_i64_no_fold_trunc_u_convert_s_1',
          () => m.$('f32.i64.no_fold_trunc_u_convert_s', [$f32('BF000000')]),
          $f32('0'));
      returns(
          'f32_i64_no_fold_trunc_s_convert_u_0',
          () => m.$('f32.i64.no_fold_trunc_s_convert_u', [$f32('3FC00000')]),
          $f32('3F800000'));
      returns(
        'f32_i64_no_fold_trunc_s_convert_u_1',
        () => m.$('f32.i64.no_fold_trunc_s_convert_u', [$f32('BFC00000')]),
        $f32('5F800000'),
        skip: 'failed',
      );
      returns(
          'f32_i64_no_fold_trunc_u_convert_u_0',
          () => m.$('f32.i64.no_fold_trunc_u_convert_u', [$f32('3FC00000')]),
          $f32('3F800000'));
      returns(
          'f32_i64_no_fold_trunc_u_convert_u_1',
          () => m.$('f32.i64.no_fold_trunc_u_convert_u', [$f32('BF000000')]),
          $f32('0'));
      returns(
          'f64_i64_no_fold_trunc_s_convert_s_0',
          () => m.$(
              'f64.i64.no_fold_trunc_s_convert_s', [$f64('3FF8000000000000')]),
          $f64('3FF0000000000000'));
      returns(
          'f64_i64_no_fold_trunc_s_convert_s_1',
          () => m.$(
              'f64.i64.no_fold_trunc_s_convert_s', [$f64('BFF8000000000000')]),
          $f64('BFF0000000000000'));
      returns(
          'f64_i64_no_fold_trunc_u_convert_s_0',
          () => m.$(
              'f64.i64.no_fold_trunc_u_convert_s', [$f64('3FF8000000000000')]),
          $f64('3FF0000000000000'));
      returns(
          'f64_i64_no_fold_trunc_u_convert_s_1',
          () => m.$(
              'f64.i64.no_fold_trunc_u_convert_s', [$f64('BFE0000000000000')]),
          $f64('0'));
      returns(
          'f64_i64_no_fold_trunc_s_convert_u_0',
          () => m.$(
              'f64.i64.no_fold_trunc_s_convert_u', [$f64('3FF8000000000000')]),
          $f64('3FF0000000000000'));
      returns(
        'f64_i64_no_fold_trunc_s_convert_u_1',
        () => m
            .$('f64.i64.no_fold_trunc_s_convert_u', [$f64('BFF8000000000000')]),
        $f64('43F0000000000000'),
        skip: 'failed',
      );
      returns(
          'f64_i64_no_fold_trunc_u_convert_u_0',
          () => m.$(
              'f64.i64.no_fold_trunc_u_convert_u', [$f64('3FF8000000000000')]),
          $f64('3FF0000000000000'));
      returns(
          'f64_i64_no_fold_trunc_u_convert_u_1',
          () => m.$(
              'f64.i64.no_fold_trunc_u_convert_u', [$f64('BFE0000000000000')]),
          $f64('0'));
    });

    group('float_exprs.40.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.40.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      action('init_0', () => m.$('init', [0, $f32('4171999A')]));
      action('init_1', () => m.$('init', [4, $f32('41733333')]));
      action('init_2', () => m.$('init', [8, $f32('4174CCCD')]));
      action('init_3', () => m.$('init', [0xC, $f32('41766666')]));
      returns('check_0', () => m.$('check', [0]), $f32('4171999A'));
      returns('check_1', () => m.$('check', [4]), $f32('41733333'));
      returns('check_2', () => m.$('check', [8]), $f32('4174CCCD'));
      returns('check_3', () => m.$('check', [0xC]), $f32('41766666'));
      action('run_0', () => m.$('run', [0x10, $f32('40400000')]));
      returns('check_4', () => m.$('check', [0]), $f32('40A11111'));
      returns('check_5', () => m.$('check', [4]), $f32('40A22222'));
      returns('check_6', () => m.$('check', [8]), $f32('40A33333'));
      returns('check_7', () => m.$('check', [0xC]), $f32('40A44444'));
    });

    group('float_exprs.41.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.41.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      action('init_0', () => m.$('init', [0, $f64('402E333333333333')]));
      action('init_1', () => m.$('init', [8, $f64('402E666666666666')]));
      action('init_2', () => m.$('init', [0x10, $f64('402E99999999999A')]));
      action('init_3', () => m.$('init', [0x18, $f64('402ECCCCCCCCCCCD')]));
      returns('check_0', () => m.$('check', [0]), $f64('402E333333333333'));
      returns('check_1', () => m.$('check', [8]), $f64('402E666666666666'));
      returns('check_2', () => m.$('check', [0x10]), $f64('402E99999999999A'));
      returns('check_3', () => m.$('check', [0x18]), $f64('402ECCCCCCCCCCCD'));
      action('run_0', () => m.$('run', [0x20, $f64('4008000000000000')]));
      returns('check_4', () => m.$('check', [0]), $f64('4014222222222222'));
      returns('check_5', () => m.$('check', [8]), $f64('4014444444444444'));
      returns('check_6', () => m.$('check', [0x10]), $f64('4014666666666667'));
      returns('check_7', () => m.$('check', [0x18]), $f64('4014888888888889'));
    });

    group('float_exprs.42.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.42.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns('f32_ult_0',
          () => m.$('f32.ult', [$f32('40400000'), $f32('40000000')]), 0);
      returns('f32_ult_1',
          () => m.$('f32.ult', [$f32('40000000'), $f32('40000000')]), 0);
      returns('f32_ult_2',
          () => m.$('f32.ult', [$f32('40000000'), $f32('40400000')]), 1);
      returns('f32_ult_3',
          () => m.$('f32.ult', [$f32('40000000'), $f32('7FC00000')]), 1);
      returns('f32_ule_0',
          () => m.$('f32.ule', [$f32('40400000'), $f32('40000000')]), 0);
      returns('f32_ule_1',
          () => m.$('f32.ule', [$f32('40000000'), $f32('40000000')]), 1);
      returns('f32_ule_2',
          () => m.$('f32.ule', [$f32('40000000'), $f32('40400000')]), 1);
      returns('f32_ule_3',
          () => m.$('f32.ule', [$f32('40000000'), $f32('7FC00000')]), 1);
      returns('f32_ugt_0',
          () => m.$('f32.ugt', [$f32('40400000'), $f32('40000000')]), 1);
      returns('f32_ugt_1',
          () => m.$('f32.ugt', [$f32('40000000'), $f32('40000000')]), 0);
      returns('f32_ugt_2',
          () => m.$('f32.ugt', [$f32('40000000'), $f32('40400000')]), 0);
      returns('f32_ugt_3',
          () => m.$('f32.ugt', [$f32('40000000'), $f32('7FC00000')]), 1);
      returns('f32_uge_0',
          () => m.$('f32.uge', [$f32('40400000'), $f32('40000000')]), 1);
      returns('f32_uge_1',
          () => m.$('f32.uge', [$f32('40000000'), $f32('40000000')]), 1);
      returns('f32_uge_2',
          () => m.$('f32.uge', [$f32('40000000'), $f32('40400000')]), 0);
      returns('f32_uge_3',
          () => m.$('f32.uge', [$f32('40000000'), $f32('7FC00000')]), 1);
      returns(
          'f64_ult_0',
          () => m.$(
              'f64.ult', [$f64('4008000000000000'), $f64('4000000000000000')]),
          0);
      returns(
          'f64_ult_1',
          () => m.$(
              'f64.ult', [$f64('4000000000000000'), $f64('4000000000000000')]),
          0);
      returns(
          'f64_ult_2',
          () => m.$(
              'f64.ult', [$f64('4000000000000000'), $f64('4008000000000000')]),
          1);
      returns(
          'f64_ult_3',
          () => m.$(
              'f64.ult', [$f64('4000000000000000'), $f64('7FF8000000000000')]),
          1);
      returns(
          'f64_ule_0',
          () => m.$(
              'f64.ule', [$f64('4008000000000000'), $f64('4000000000000000')]),
          0);
      returns(
          'f64_ule_1',
          () => m.$(
              'f64.ule', [$f64('4000000000000000'), $f64('4000000000000000')]),
          1);
      returns(
          'f64_ule_2',
          () => m.$(
              'f64.ule', [$f64('4000000000000000'), $f64('4008000000000000')]),
          1);
      returns(
          'f64_ule_3',
          () => m.$(
              'f64.ule', [$f64('4000000000000000'), $f64('7FF8000000000000')]),
          1);
      returns(
          'f64_ugt_0',
          () => m.$(
              'f64.ugt', [$f64('4008000000000000'), $f64('4000000000000000')]),
          1);
      returns(
          'f64_ugt_1',
          () => m.$(
              'f64.ugt', [$f64('4000000000000000'), $f64('4000000000000000')]),
          0);
      returns(
          'f64_ugt_2',
          () => m.$(
              'f64.ugt', [$f64('4000000000000000'), $f64('4008000000000000')]),
          0);
      returns(
          'f64_ugt_3',
          () => m.$(
              'f64.ugt', [$f64('4000000000000000'), $f64('7FF8000000000000')]),
          1);
      returns(
          'f64_uge_0',
          () => m.$(
              'f64.uge', [$f64('4008000000000000'), $f64('4000000000000000')]),
          1);
      returns(
          'f64_uge_1',
          () => m.$(
              'f64.uge', [$f64('4000000000000000'), $f64('4000000000000000')]),
          1);
      returns(
          'f64_uge_2',
          () => m.$(
              'f64.uge', [$f64('4000000000000000'), $f64('4008000000000000')]),
          0);
      returns(
          'f64_uge_3',
          () => m.$(
              'f64.uge', [$f64('4000000000000000'), $f64('7FF8000000000000')]),
          1);
    });

    group('float_exprs.43.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.43.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
          'f32_no_fold_lt_select_0',
          () => m.$('f32.no_fold_lt_select', [$f32('0'), $f32('7FC00000')]),
          $f32('7FC00000'));
      returns(
          'f32_no_fold_lt_select_1',
          () => m.$('f32.no_fold_lt_select', [$f32('7FC00000'), $f32('0')]),
          $f32('0'));
      returns(
          'f32_no_fold_lt_select_2',
          () => m.$('f32.no_fold_lt_select', [$f32('0'), $f32('80000000')]),
          $f32('80000000'));
      returns(
          'f32_no_fold_lt_select_3',
          () => m.$('f32.no_fold_lt_select', [$f32('80000000'), $f32('0')]),
          $f32('0'));
      returns(
          'f32_no_fold_le_select_0',
          () => m.$('f32.no_fold_le_select', [$f32('0'), $f32('7FC00000')]),
          $f32('7FC00000'));
      returns(
          'f32_no_fold_le_select_1',
          () => m.$('f32.no_fold_le_select', [$f32('7FC00000'), $f32('0')]),
          $f32('0'));
      returns(
          'f32_no_fold_le_select_2',
          () => m.$('f32.no_fold_le_select', [$f32('0'), $f32('80000000')]),
          $f32('0'));
      returns(
          'f32_no_fold_le_select_3',
          () => m.$('f32.no_fold_le_select', [$f32('80000000'), $f32('0')]),
          $f32('80000000'));
      returns(
          'f32_no_fold_gt_select_0',
          () => m.$('f32.no_fold_gt_select', [$f32('0'), $f32('7FC00000')]),
          $f32('7FC00000'));
      returns(
          'f32_no_fold_gt_select_1',
          () => m.$('f32.no_fold_gt_select', [$f32('7FC00000'), $f32('0')]),
          $f32('0'));
      returns(
          'f32_no_fold_gt_select_2',
          () => m.$('f32.no_fold_gt_select', [$f32('0'), $f32('80000000')]),
          $f32('80000000'));
      returns(
          'f32_no_fold_gt_select_3',
          () => m.$('f32.no_fold_gt_select', [$f32('80000000'), $f32('0')]),
          $f32('0'));
      returns(
          'f32_no_fold_ge_select_0',
          () => m.$('f32.no_fold_ge_select', [$f32('0'), $f32('7FC00000')]),
          $f32('7FC00000'));
      returns(
          'f32_no_fold_ge_select_1',
          () => m.$('f32.no_fold_ge_select', [$f32('7FC00000'), $f32('0')]),
          $f32('0'));
      returns(
          'f32_no_fold_ge_select_2',
          () => m.$('f32.no_fold_ge_select', [$f32('0'), $f32('80000000')]),
          $f32('0'));
      returns(
          'f32_no_fold_ge_select_3',
          () => m.$('f32.no_fold_ge_select', [$f32('80000000'), $f32('0')]),
          $f32('80000000'));
      returns(
          'f64_no_fold_lt_select_0',
          () => m.$(
              'f64.no_fold_lt_select', [$f64('0'), $f64('7FF8000000000000')]),
          $f64('7FF8000000000000'));
      returns(
          'f64_no_fold_lt_select_1',
          () => m.$(
              'f64.no_fold_lt_select', [$f64('7FF8000000000000'), $f64('0')]),
          $f64('0'));
      returns(
          'f64_no_fold_lt_select_2',
          () => m.$(
              'f64.no_fold_lt_select', [$f64('0'), $f64('8000000000000000')]),
          $f64('8000000000000000'));
      returns(
          'f64_no_fold_lt_select_3',
          () => m.$(
              'f64.no_fold_lt_select', [$f64('8000000000000000'), $f64('0')]),
          $f64('0'));
      returns(
          'f64_no_fold_le_select_0',
          () => m.$(
              'f64.no_fold_le_select', [$f64('0'), $f64('7FF8000000000000')]),
          $f64('7FF8000000000000'));
      returns(
          'f64_no_fold_le_select_1',
          () => m.$(
              'f64.no_fold_le_select', [$f64('7FF8000000000000'), $f64('0')]),
          $f64('0'));
      returns(
          'f64_no_fold_le_select_2',
          () => m.$(
              'f64.no_fold_le_select', [$f64('0'), $f64('8000000000000000')]),
          $f64('0'));
      returns(
          'f64_no_fold_le_select_3',
          () => m.$(
              'f64.no_fold_le_select', [$f64('8000000000000000'), $f64('0')]),
          $f64('8000000000000000'));
      returns(
          'f64_no_fold_gt_select_0',
          () => m.$(
              'f64.no_fold_gt_select', [$f64('0'), $f64('7FF8000000000000')]),
          $f64('7FF8000000000000'));
      returns(
          'f64_no_fold_gt_select_1',
          () => m.$(
              'f64.no_fold_gt_select', [$f64('7FF8000000000000'), $f64('0')]),
          $f64('0'));
      returns(
          'f64_no_fold_gt_select_2',
          () => m.$(
              'f64.no_fold_gt_select', [$f64('0'), $f64('8000000000000000')]),
          $f64('8000000000000000'));
      returns(
          'f64_no_fold_gt_select_3',
          () => m.$(
              'f64.no_fold_gt_select', [$f64('8000000000000000'), $f64('0')]),
          $f64('0'));
      returns(
          'f64_no_fold_ge_select_0',
          () => m.$(
              'f64.no_fold_ge_select', [$f64('0'), $f64('7FF8000000000000')]),
          $f64('7FF8000000000000'));
      returns(
          'f64_no_fold_ge_select_1',
          () => m.$(
              'f64.no_fold_ge_select', [$f64('7FF8000000000000'), $f64('0')]),
          $f64('0'));
      returns(
          'f64_no_fold_ge_select_2',
          () => m.$(
              'f64.no_fold_ge_select', [$f64('0'), $f64('8000000000000000')]),
          $f64('0'));
      returns(
          'f64_no_fold_ge_select_3',
          () => m.$(
              'f64.no_fold_ge_select', [$f64('8000000000000000'), $f64('0')]),
          $f64('8000000000000000'));
    });

    group('float_exprs.44.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.44.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
          'f32_no_fold_lt_if_0',
          () => m.$('f32.no_fold_lt_if', [$f32('0'), $f32('7FC00000')]),
          $f32('7FC00000'));
      returns(
          'f32_no_fold_lt_if_1',
          () => m.$('f32.no_fold_lt_if', [$f32('7FC00000'), $f32('0')]),
          $f32('0'));
      returns(
          'f32_no_fold_lt_if_2',
          () => m.$('f32.no_fold_lt_if', [$f32('0'), $f32('80000000')]),
          $f32('80000000'));
      returns(
          'f32_no_fold_lt_if_3',
          () => m.$('f32.no_fold_lt_if', [$f32('80000000'), $f32('0')]),
          $f32('0'));
      returns(
          'f32_no_fold_le_if_0',
          () => m.$('f32.no_fold_le_if', [$f32('0'), $f32('7FC00000')]),
          $f32('7FC00000'));
      returns(
          'f32_no_fold_le_if_1',
          () => m.$('f32.no_fold_le_if', [$f32('7FC00000'), $f32('0')]),
          $f32('0'));
      returns(
          'f32_no_fold_le_if_2',
          () => m.$('f32.no_fold_le_if', [$f32('0'), $f32('80000000')]),
          $f32('0'));
      returns(
          'f32_no_fold_le_if_3',
          () => m.$('f32.no_fold_le_if', [$f32('80000000'), $f32('0')]),
          $f32('80000000'));
      returns(
          'f32_no_fold_gt_if_0',
          () => m.$('f32.no_fold_gt_if', [$f32('0'), $f32('7FC00000')]),
          $f32('7FC00000'));
      returns(
          'f32_no_fold_gt_if_1',
          () => m.$('f32.no_fold_gt_if', [$f32('7FC00000'), $f32('0')]),
          $f32('0'));
      returns(
          'f32_no_fold_gt_if_2',
          () => m.$('f32.no_fold_gt_if', [$f32('0'), $f32('80000000')]),
          $f32('80000000'));
      returns(
          'f32_no_fold_gt_if_3',
          () => m.$('f32.no_fold_gt_if', [$f32('80000000'), $f32('0')]),
          $f32('0'));
      returns(
          'f32_no_fold_ge_if_0',
          () => m.$('f32.no_fold_ge_if', [$f32('0'), $f32('7FC00000')]),
          $f32('7FC00000'));
      returns(
          'f32_no_fold_ge_if_1',
          () => m.$('f32.no_fold_ge_if', [$f32('7FC00000'), $f32('0')]),
          $f32('0'));
      returns(
          'f32_no_fold_ge_if_2',
          () => m.$('f32.no_fold_ge_if', [$f32('0'), $f32('80000000')]),
          $f32('0'));
      returns(
          'f32_no_fold_ge_if_3',
          () => m.$('f32.no_fold_ge_if', [$f32('80000000'), $f32('0')]),
          $f32('80000000'));
      returns(
          'f64_no_fold_lt_if_0',
          () => m.$('f64.no_fold_lt_if', [$f64('0'), $f64('7FF8000000000000')]),
          $f64('7FF8000000000000'));
      returns(
          'f64_no_fold_lt_if_1',
          () => m.$('f64.no_fold_lt_if', [$f64('7FF8000000000000'), $f64('0')]),
          $f64('0'));
      returns(
          'f64_no_fold_lt_if_2',
          () => m.$('f64.no_fold_lt_if', [$f64('0'), $f64('8000000000000000')]),
          $f64('8000000000000000'));
      returns(
          'f64_no_fold_lt_if_3',
          () => m.$('f64.no_fold_lt_if', [$f64('8000000000000000'), $f64('0')]),
          $f64('0'));
      returns(
          'f64_no_fold_le_if_0',
          () => m.$('f64.no_fold_le_if', [$f64('0'), $f64('7FF8000000000000')]),
          $f64('7FF8000000000000'));
      returns(
          'f64_no_fold_le_if_1',
          () => m.$('f64.no_fold_le_if', [$f64('7FF8000000000000'), $f64('0')]),
          $f64('0'));
      returns(
          'f64_no_fold_le_if_2',
          () => m.$('f64.no_fold_le_if', [$f64('0'), $f64('8000000000000000')]),
          $f64('0'));
      returns(
          'f64_no_fold_le_if_3',
          () => m.$('f64.no_fold_le_if', [$f64('8000000000000000'), $f64('0')]),
          $f64('8000000000000000'));
      returns(
          'f64_no_fold_gt_if_0',
          () => m.$('f64.no_fold_gt_if', [$f64('0'), $f64('7FF8000000000000')]),
          $f64('7FF8000000000000'));
      returns(
          'f64_no_fold_gt_if_1',
          () => m.$('f64.no_fold_gt_if', [$f64('7FF8000000000000'), $f64('0')]),
          $f64('0'));
      returns(
          'f64_no_fold_gt_if_2',
          () => m.$('f64.no_fold_gt_if', [$f64('0'), $f64('8000000000000000')]),
          $f64('8000000000000000'));
      returns(
          'f64_no_fold_gt_if_3',
          () => m.$('f64.no_fold_gt_if', [$f64('8000000000000000'), $f64('0')]),
          $f64('0'));
      returns(
          'f64_no_fold_ge_if_0',
          () => m.$('f64.no_fold_ge_if', [$f64('0'), $f64('7FF8000000000000')]),
          $f64('7FF8000000000000'));
      returns(
          'f64_no_fold_ge_if_1',
          () => m.$('f64.no_fold_ge_if', [$f64('7FF8000000000000'), $f64('0')]),
          $f64('0'));
      returns(
          'f64_no_fold_ge_if_2',
          () => m.$('f64.no_fold_ge_if', [$f64('0'), $f64('8000000000000000')]),
          $f64('0'));
      returns(
          'f64_no_fold_ge_if_3',
          () => m.$('f64.no_fold_ge_if', [$f64('8000000000000000'), $f64('0')]),
          $f64('8000000000000000'));
    });

    group('float_exprs.45.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.45.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
          'f32_no_fold_lt_select_to_abs_0',
          () => m.$('f32.no_fold_lt_select_to_abs', [$f32('7FA00000')]),
          $f32('7FA00000'));
      returns(
          'f32_no_fold_lt_select_to_abs_1',
          () => m.$('f32.no_fold_lt_select_to_abs', [$f32('FFC00000')]),
          $f32('FFC00000'));
      returns('f32_no_fold_lt_select_to_abs_2',
          () => m.$('f32.no_fold_lt_select_to_abs', [$f32('0')]), $f32('0'));
      returns(
          'f32_no_fold_lt_select_to_abs_3',
          () => m.$('f32.no_fold_lt_select_to_abs', [$f32('80000000')]),
          $f32('80000000'));
      returns(
          'f32_no_fold_le_select_to_abs_0',
          () => m.$('f32.no_fold_le_select_to_abs', [$f32('7FA00000')]),
          $f32('7FA00000'));
      returns(
          'f32_no_fold_le_select_to_abs_1',
          () => m.$('f32.no_fold_le_select_to_abs', [$f32('FFC00000')]),
          $f32('FFC00000'));
      returns(
          'f32_no_fold_le_select_to_abs_2',
          () => m.$('f32.no_fold_le_select_to_abs', [$f32('0')]),
          $f32('80000000'));
      returns(
          'f32_no_fold_le_select_to_abs_3',
          () => m.$('f32.no_fold_le_select_to_abs', [$f32('80000000')]),
          $f32('0'));
      returns(
          'f32_no_fold_gt_select_to_abs_0',
          () => m.$('f32.no_fold_gt_select_to_abs', [$f32('7FA00000')]),
          $f32('FFA00000'));
      returns(
          'f32_no_fold_gt_select_to_abs_1',
          () => m.$('f32.no_fold_gt_select_to_abs', [$f32('FFC00000')]),
          $f32('7FC00000'));
      returns(
          'f32_no_fold_gt_select_to_abs_2',
          () => m.$('f32.no_fold_gt_select_to_abs', [$f32('0')]),
          $f32('80000000'));
      returns(
          'f32_no_fold_gt_select_to_abs_3',
          () => m.$('f32.no_fold_gt_select_to_abs', [$f32('80000000')]),
          $f32('0'));
      returns(
          'f32_no_fold_ge_select_to_abs_0',
          () => m.$('f32.no_fold_ge_select_to_abs', [$f32('7FA00000')]),
          $f32('FFA00000'));
      returns(
          'f32_no_fold_ge_select_to_abs_1',
          () => m.$('f32.no_fold_ge_select_to_abs', [$f32('FFC00000')]),
          $f32('7FC00000'));
      returns('f32_no_fold_ge_select_to_abs_2',
          () => m.$('f32.no_fold_ge_select_to_abs', [$f32('0')]), $f32('0'));
      returns(
          'f32_no_fold_ge_select_to_abs_3',
          () => m.$('f32.no_fold_ge_select_to_abs', [$f32('80000000')]),
          $f32('80000000'));
      returns(
          'f64_no_fold_lt_select_to_abs_0',
          () => m.$('f64.no_fold_lt_select_to_abs', [$f64('7FF4000000000000')]),
          $f64('7FF4000000000000'));
      returns(
          'f64_no_fold_lt_select_to_abs_1',
          () => m.$('f64.no_fold_lt_select_to_abs', [$f64('FFF8000000000000')]),
          $f64('FFF8000000000000'));
      returns('f64_no_fold_lt_select_to_abs_2',
          () => m.$('f64.no_fold_lt_select_to_abs', [$f64('0')]), $f64('0'));
      returns(
          'f64_no_fold_lt_select_to_abs_3',
          () => m.$('f64.no_fold_lt_select_to_abs', [$f64('8000000000000000')]),
          $f64('8000000000000000'));
      returns(
          'f64_no_fold_le_select_to_abs_0',
          () => m.$('f64.no_fold_le_select_to_abs', [$f64('7FF4000000000000')]),
          $f64('7FF4000000000000'));
      returns(
          'f64_no_fold_le_select_to_abs_1',
          () => m.$('f64.no_fold_le_select_to_abs', [$f64('FFF8000000000000')]),
          $f64('FFF8000000000000'));
      returns(
          'f64_no_fold_le_select_to_abs_2',
          () => m.$('f64.no_fold_le_select_to_abs', [$f64('0')]),
          $f64('8000000000000000'));
      returns(
          'f64_no_fold_le_select_to_abs_3',
          () => m.$('f64.no_fold_le_select_to_abs', [$f64('8000000000000000')]),
          $f64('0'));
      returns(
          'f64_no_fold_gt_select_to_abs_0',
          () => m.$('f64.no_fold_gt_select_to_abs', [$f64('7FF4000000000000')]),
          $f64('FFF4000000000000'));
      returns(
          'f64_no_fold_gt_select_to_abs_1',
          () => m.$('f64.no_fold_gt_select_to_abs', [$f64('FFF8000000000000')]),
          $f64('7FF8000000000000'));
      returns(
          'f64_no_fold_gt_select_to_abs_2',
          () => m.$('f64.no_fold_gt_select_to_abs', [$f64('0')]),
          $f64('8000000000000000'));
      returns(
          'f64_no_fold_gt_select_to_abs_3',
          () => m.$('f64.no_fold_gt_select_to_abs', [$f64('8000000000000000')]),
          $f64('0'));
      returns(
          'f64_no_fold_ge_select_to_abs_0',
          () => m.$('f64.no_fold_ge_select_to_abs', [$f64('7FF4000000000000')]),
          $f64('FFF4000000000000'));
      returns(
          'f64_no_fold_ge_select_to_abs_1',
          () => m.$('f64.no_fold_ge_select_to_abs', [$f64('FFF8000000000000')]),
          $f64('7FF8000000000000'));
      returns('f64_no_fold_ge_select_to_abs_2',
          () => m.$('f64.no_fold_ge_select_to_abs', [$f64('0')]), $f64('0'));
      returns(
          'f64_no_fold_ge_select_to_abs_3',
          () => m.$('f64.no_fold_ge_select_to_abs', [$f64('8000000000000000')]),
          $f64('8000000000000000'));
    });

    group('float_exprs.46.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.46.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
          'f32_no_fold_lt_if_to_abs_0',
          () => m.$('f32.no_fold_lt_if_to_abs', [$f32('7FA00000')]),
          $f32('7FA00000'));
      returns(
          'f32_no_fold_lt_if_to_abs_1',
          () => m.$('f32.no_fold_lt_if_to_abs', [$f32('FFC00000')]),
          $f32('FFC00000'));
      returns('f32_no_fold_lt_if_to_abs_2',
          () => m.$('f32.no_fold_lt_if_to_abs', [$f32('0')]), $f32('0'));
      returns(
          'f32_no_fold_lt_if_to_abs_3',
          () => m.$('f32.no_fold_lt_if_to_abs', [$f32('80000000')]),
          $f32('80000000'));
      returns(
          'f32_no_fold_le_if_to_abs_0',
          () => m.$('f32.no_fold_le_if_to_abs', [$f32('7FA00000')]),
          $f32('7FA00000'));
      returns(
          'f32_no_fold_le_if_to_abs_1',
          () => m.$('f32.no_fold_le_if_to_abs', [$f32('FFC00000')]),
          $f32('FFC00000'));
      returns('f32_no_fold_le_if_to_abs_2',
          () => m.$('f32.no_fold_le_if_to_abs', [$f32('0')]), $f32('80000000'));
      returns('f32_no_fold_le_if_to_abs_3',
          () => m.$('f32.no_fold_le_if_to_abs', [$f32('80000000')]), $f32('0'));
      returns(
          'f32_no_fold_gt_if_to_abs_0',
          () => m.$('f32.no_fold_gt_if_to_abs', [$f32('7FA00000')]),
          $f32('FFA00000'));
      returns(
          'f32_no_fold_gt_if_to_abs_1',
          () => m.$('f32.no_fold_gt_if_to_abs', [$f32('FFC00000')]),
          $f32('7FC00000'));
      returns('f32_no_fold_gt_if_to_abs_2',
          () => m.$('f32.no_fold_gt_if_to_abs', [$f32('0')]), $f32('80000000'));
      returns('f32_no_fold_gt_if_to_abs_3',
          () => m.$('f32.no_fold_gt_if_to_abs', [$f32('80000000')]), $f32('0'));
      returns(
          'f32_no_fold_ge_if_to_abs_0',
          () => m.$('f32.no_fold_ge_if_to_abs', [$f32('7FA00000')]),
          $f32('FFA00000'));
      returns(
          'f32_no_fold_ge_if_to_abs_1',
          () => m.$('f32.no_fold_ge_if_to_abs', [$f32('FFC00000')]),
          $f32('7FC00000'));
      returns('f32_no_fold_ge_if_to_abs_2',
          () => m.$('f32.no_fold_ge_if_to_abs', [$f32('0')]), $f32('0'));
      returns(
          'f32_no_fold_ge_if_to_abs_3',
          () => m.$('f32.no_fold_ge_if_to_abs', [$f32('80000000')]),
          $f32('80000000'));
      returns(
          'f64_no_fold_lt_if_to_abs_0',
          () => m.$('f64.no_fold_lt_if_to_abs', [$f64('7FF4000000000000')]),
          $f64('7FF4000000000000'));
      returns(
          'f64_no_fold_lt_if_to_abs_1',
          () => m.$('f64.no_fold_lt_if_to_abs', [$f64('FFF8000000000000')]),
          $f64('FFF8000000000000'));
      returns('f64_no_fold_lt_if_to_abs_2',
          () => m.$('f64.no_fold_lt_if_to_abs', [$f64('0')]), $f64('0'));
      returns(
          'f64_no_fold_lt_if_to_abs_3',
          () => m.$('f64.no_fold_lt_if_to_abs', [$f64('8000000000000000')]),
          $f64('8000000000000000'));
      returns(
          'f64_no_fold_le_if_to_abs_0',
          () => m.$('f64.no_fold_le_if_to_abs', [$f64('7FF4000000000000')]),
          $f64('7FF4000000000000'));
      returns(
          'f64_no_fold_le_if_to_abs_1',
          () => m.$('f64.no_fold_le_if_to_abs', [$f64('FFF8000000000000')]),
          $f64('FFF8000000000000'));
      returns(
          'f64_no_fold_le_if_to_abs_2',
          () => m.$('f64.no_fold_le_if_to_abs', [$f64('0')]),
          $f64('8000000000000000'));
      returns(
          'f64_no_fold_le_if_to_abs_3',
          () => m.$('f64.no_fold_le_if_to_abs', [$f64('8000000000000000')]),
          $f64('0'));
      returns(
          'f64_no_fold_gt_if_to_abs_0',
          () => m.$('f64.no_fold_gt_if_to_abs', [$f64('7FF4000000000000')]),
          $f64('FFF4000000000000'));
      returns(
          'f64_no_fold_gt_if_to_abs_1',
          () => m.$('f64.no_fold_gt_if_to_abs', [$f64('FFF8000000000000')]),
          $f64('7FF8000000000000'));
      returns(
          'f64_no_fold_gt_if_to_abs_2',
          () => m.$('f64.no_fold_gt_if_to_abs', [$f64('0')]),
          $f64('8000000000000000'));
      returns(
          'f64_no_fold_gt_if_to_abs_3',
          () => m.$('f64.no_fold_gt_if_to_abs', [$f64('8000000000000000')]),
          $f64('0'));
      returns(
          'f64_no_fold_ge_if_to_abs_0',
          () => m.$('f64.no_fold_ge_if_to_abs', [$f64('7FF4000000000000')]),
          $f64('FFF4000000000000'));
      returns(
          'f64_no_fold_ge_if_to_abs_1',
          () => m.$('f64.no_fold_ge_if_to_abs', [$f64('FFF8000000000000')]),
          $f64('7FF8000000000000'));
      returns('f64_no_fold_ge_if_to_abs_2',
          () => m.$('f64.no_fold_ge_if_to_abs', [$f64('0')]), $f64('0'));
      returns(
          'f64_no_fold_ge_if_to_abs_3',
          () => m.$('f64.no_fold_ge_if_to_abs', [$f64('8000000000000000')]),
          $f64('8000000000000000'));
    });

    group('float_exprs.47.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.47.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
        'f32_incorrect_correction_0',
        () => m.$('f32.incorrect_correction', []),
        $f32('34000000'),
        skip: 'failed',
      );
      returns('f64_incorrect_correction_0',
          () => m.$('f64.incorrect_correction', []), $f64('BCB0000000000000'));
    });

    group('float_exprs.48.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.48.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns('calculate_0', () => m.$('calculate', []), $f32('C3E976A3'));
    });

    group('float_exprs.49.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.49.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
          'calculate_0', () => m.$('calculate', []), $f64('C07D2ED4D0218C93'));
    });

    group('float_exprs.50.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.50.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns('llvm_pr26746_0', () => m.$('llvm_pr26746', [$f32('80000000')]),
          $f32('0'));
    });

    group('float_exprs.51.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.51.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns('llvm_pr27153_0', () => m.$('llvm_pr27153', [$i32('2000002')]),
          $f32('4BC00000'));
    });

    group('float_exprs.52.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.52.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
          'llvm_pr27036_0',
          () => m.$('llvm_pr27036', [$i32('FE81FFCB'), $i32('E40000')]),
          $f32('CB1A0034'));
    });

    group('float_exprs.53.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.53.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
          'thepast0_0',
          () => m.$('thepast0', [
                $f64('20000000000000'),
                $f64('3FEFFFFFFFFFFFFF'),
                $f64('4000000000000000'),
                $f64('3FE0000000000000')
              ]),
          $f64('1FFFFFFFFFFFFF'));
      returns(
          'thepast1_0',
          () => m.$('thepast1', [
                $f64('3C90000000000000'),
                $f64('3FEFFFFFFFFFFFFF'),
                $f64('3C90000000000000')
              ]),
          $f64('B940000000000000'));
      returns(
          'thepast2_0',
          () => m.$('thepast2',
              [$f32('1000000'), $f32('3F000000'), $f32('3F800000')]),
          $f32('800000'));
    });

    group('float_exprs.54.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.54.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns('inverse_0', () => m.$('inverse', [$f32('42C00000')]),
          $f32('3C2AAAAB'));
    });

    group('float_exprs.55.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.55.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns('f32_sqrt_minus_2_0',
          () => m.$('f32_sqrt_minus_2', [$f32('40800000')]), $f32('0'));
      returns('f64_sqrt_minus_2_0',
          () => m.$('f64_sqrt_minus_2', [$f64('4010000000000000')]), $f64('0'));
    });

    group('float_exprs.56.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.56.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
          'f32_no_fold_recip_recip_0',
          () => m.$('f32.no_fold_recip_recip', [$f32('E0745F8C')]),
          $f32('E0745F8B'));
      returns(
          'f32_no_fold_recip_recip_1',
          () => m.$('f32.no_fold_recip_recip', [$f32('19712124')]),
          $f32('19712123'));
      returns(
          'f32_no_fold_recip_recip_2',
          () => m.$('f32.no_fold_recip_recip', [$f32('1FE57874')]),
          $f32('1FE57875'));
      returns(
          'f32_no_fold_recip_recip_3',
          () => m.$('f32.no_fold_recip_recip', [$f32('C1F334C1')]),
          $f32('C1F334C2'));
      returns(
          'f32_no_fold_recip_recip_4',
          () => m.$('f32.no_fold_recip_recip', [$f32('62FCCC8B')]),
          $f32('62FCCC8A'));
      returns(
          'f32_no_fold_recip_recip_5',
          () => m.$('f32.no_fold_recip_recip', [$f32('80000000')]),
          $f32('80000000'));
      returns('f32_no_fold_recip_recip_6',
          () => m.$('f32.no_fold_recip_recip', [$f32('0')]), $f32('0'));
      returns(
          'f32_no_fold_recip_recip_7',
          () => m.$('f32.no_fold_recip_recip', [$f32('FF800000')]),
          $f32('FF800000'));
      returns(
          'f32_no_fold_recip_recip_8',
          () => m.$('f32.no_fold_recip_recip', [$f32('7F800000')]),
          $f32('7F800000'));
      returns(
          'f64_no_fold_recip_recip_0',
          () => m.$('f64.no_fold_recip_recip', [$f64('C93D81248DDA63D0')]),
          $f64('C93D81248DDA63D1'));
      returns(
          'f64_no_fold_recip_recip_1',
          () => m.$('f64.no_fold_recip_recip', [$f64('C41F4750312039E3')]),
          $f64('C41F4750312039E2'));
      returns(
          'f64_no_fold_recip_recip_2',
          () => m.$('f64.no_fold_recip_recip', [$f64('4A5FA50630EEC7F6')]),
          $f64('4A5FA50630EEC7F5'));
      returns(
          'f64_no_fold_recip_recip_3',
          () => m.$('f64.no_fold_recip_recip', [$f64('151DB0598617BA92')]),
          $f64('151DB0598617BA91'));
      returns(
          'f64_no_fold_recip_recip_4',
          () => m.$('f64.no_fold_recip_recip', [$f64('78585F1638A0C82B')]),
          $f64('78585F1638A0C82A'));
      returns(
          'f64_no_fold_recip_recip_5',
          () => m.$('f64.no_fold_recip_recip', [$f64('8000000000000000')]),
          $f64('8000000000000000'));
      returns('f64_no_fold_recip_recip_6',
          () => m.$('f64.no_fold_recip_recip', [$f64('0')]), $f64('0'));
      returns(
          'f64_no_fold_recip_recip_7',
          () => m.$('f64.no_fold_recip_recip', [$f64('FFF0000000000000')]),
          $f64('FFF0000000000000'));
      returns(
          'f64_no_fold_recip_recip_8',
          () => m.$('f64.no_fold_recip_recip', [$f64('7FF0000000000000')]),
          $f64('7FF0000000000000'));
    });

    group('float_exprs.57.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.57.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
          'f32_no_algebraic_factoring_0',
          () => m.$('f32.no_algebraic_factoring',
              [$f32('A477B3C7'), $f32('24E0B05C')]),
          $f32('8A094A01'));
      returns(
          'f32_no_algebraic_factoring_1',
          () => m.$('f32.no_algebraic_factoring',
              [$f32('CB96BB5E'), $f32('4BFA044E')]),
          $f32('D81B6C4D'));
      returns(
          'f32_no_algebraic_factoring_2',
          () => m.$('f32.no_algebraic_factoring',
              [$f32('563E5159'), $f32('D704289E')]),
          $f32('EE6D886F'));
      returns(
          'f32_no_algebraic_factoring_3',
          () => m.$('f32.no_algebraic_factoring',
              [$f32('483EAF18'), $f32('C363C1DA')]),
          $f32('510E0853'));
      returns(
          'f32_no_algebraic_factoring_4',
          () => m.$('f32.no_algebraic_factoring',
              [$f32('C36D7CB0'), $f32('C96D6358')]),
          $f32('D35C2117'));
      returns(
          'f64_no_algebraic_factoring_0',
          () => m.$('f64.no_algebraic_factoring',
              [$f64('223E17C0A02AC6B5'), $f64('230E8F13F1FCDC14')]),
          $f64('862D2EC518F62863'));
      returns(
          'f64_no_algebraic_factoring_1',
          () => m.$('f64.no_algebraic_factoring',
              [$f64('286971B55A57E3A3'), $f64('270EDEB4233C1B27')]),
          $f64('10E43B3F69FB258B'));
      returns(
          'f64_no_algebraic_factoring_2',
          () => m.$('f64.no_algebraic_factoring',
              [$f64('A85C3B9DC02472FA'), $f64('A8E74E9FAEBAFF14')]),
          $f64('91E0F9C07E8CAA25'));
      returns(
          'f64_no_algebraic_factoring_3',
          () => m.$('f64.no_algebraic_factoring',
              [$f64('CB2AFAF4688ED019'), $f64('4BBB07171CB49E94')]),
          $f64('D786D3F2E2BEBCF7'));
      returns(
          'f64_no_algebraic_factoring_4',
          () => m.$('f64.no_algebraic_factoring',
              [$f64('4714377A98948F12'), $f64('C59500C05BD24C97')]),
          $f64('4E398B72DBF7BF72'));
    });

    group('float_exprs.58.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.58.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
          'f32_no_algebraic_factoring_0',
          () => m.$('f32.no_algebraic_factoring',
              [$f32('28C7160A'), $f32('2C5D6ACD')]),
          $f32('993F7F28'));
      returns(
          'f32_no_algebraic_factoring_1',
          () => m.$('f32.no_algebraic_factoring',
              [$f32('D43F78C9'), $f32('D06D8C25')]),
          $f32('690F3499'));
      returns(
          'f32_no_algebraic_factoring_2',
          () => m.$('f32.no_algebraic_factoring',
              [$f32('39BF5A2C'), $f32('B929624C')]),
          $f32('33E605E3'));
      returns(
          'f32_no_algebraic_factoring_3',
          () => m.$('f32.no_algebraic_factoring',
              [$f32('29933AE3'), $f32('A8F6E98D')]),
          $f32('138B94A6'));
      returns(
          'f32_no_algebraic_factoring_4',
          () => m.$('f32.no_algebraic_factoring',
              [$f32('594D2FC9'), $f32('D995804C')]),
          $f32('F338C4D3'));
      returns(
          'f64_no_algebraic_factoring_0',
          () => m.$('f64.no_algebraic_factoring',
              [$f64('563749A128F18F69'), $f64('D500BC97EE1354E1')]),
          $f64('6C80F28115518D74'));
      returns(
          'f64_no_algebraic_factoring_1',
          () => m.$('f64.no_algebraic_factoring',
              [$f64('D342DAB01B2215EA'), $f64('D4AE12B288BFF2BD')]),
          $f64('E96C4319AD25D201'));
      returns(
          'f64_no_algebraic_factoring_2',
          () => m.$('f64.no_algebraic_factoring',
              [$f64('4293ED898431E102'), $f64('C26C409183FA92E6')]),
          $f64('45380A611103C71D'));
      returns(
          'f64_no_algebraic_factoring_3',
          () => m.$('f64.no_algebraic_factoring',
              [$f64('CB5BE663E4C0E4B2'), $f64('CA5DA85703760D25')]),
          $f64('56C853434F1A2FFE'));
      returns(
          'f64_no_algebraic_factoring_4',
          () => m.$('f64.no_algebraic_factoring',
              [$f64('B13230E09952DF1C'), $f64('B12FA2752ADFADC9')]),
          $f64('22542E43156BD1B8'));
    });

    group('float_exprs.59.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.59.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns('f32_simple_x4_sum_0',
          () => m.$('f32.simple_x4_sum', [0, 0x10, 0x20]), null /*void*/);
      returns('f32_load_0', () => m.$('f32.load', [0x20]), $f32('2'));
      returns('f32_load_1', () => m.$('f32.load', [0x24]), $f32('0'));
      returns('f32_load_2', () => m.$('f32.load', [0x28]), $f32('1'));
      returns('f32_load_3', () => m.$('f32.load', [0x2C]), $f32('80000001'));
    });

    group('float_exprs.60.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.60.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns('f64_simple_x4_sum_0',
          () => m.$('f64.simple_x4_sum', [0, 0x20, 0x40]), null /*void*/);
      returns('f64_load_0', () => m.$('f64.load', [0x40]), $f64('2'));
      returns('f64_load_1', () => m.$('f64.load', [0x48]), $f64('0'));
      returns('f64_load_2', () => m.$('f64.load', [0x50]), $f64('1'));
      returns('f64_load_3', () => m.$('f64.load', [0x58]),
          $f64('8000000000000001'));
    });

    group('float_exprs.61.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.61.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
        'f32_kahan_sum_0',
        () => m.$('f32.kahan_sum', [0, 0x100]),
        $f32('F3880D0D'),
        skip: 'failed',
      );
      returns(
        'f32_plain_sum_0',
        () => m.$('f32.plain_sum', [0, 0x100]),
        $f32('F3501A1D'),
        skip: 'failed',
      );
    });

    group('float_exprs.62.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.62.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns('f64_kahan_sum_0', () => m.$('f64.kahan_sum', [0, 0x100]),
          $f64('7E5DD7CB2A5FFC88'));
      returns('f64_plain_sum_0', () => m.$('f64.plain_sum', [0, 0x100]),
          $f64('7E5DD7CB2A63FC87'));
    });

    group('float_exprs.63.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.63.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
          'f32_no_fold_neg_sub_0',
          () =>
              m.$('f32.no_fold_neg_sub', [$f32('80000000'), $f32('80000000')]),
          $f32('80000000'));
      returns(
          'f32_no_fold_neg_sub_1',
          () => m.$('f32.no_fold_neg_sub', [$f32('0'), $f32('80000000')]),
          $f32('80000000'));
      returns(
          'f32_no_fold_neg_sub_2',
          () => m.$('f32.no_fold_neg_sub', [$f32('80000000'), $f32('0')]),
          $f32('0'));
      returns(
          'f32_no_fold_neg_sub_3',
          () => m.$('f32.no_fold_neg_sub', [$f32('0'), $f32('0')]),
          $f32('80000000'));
      returns(
          'f64_no_fold_neg_sub_0',
          () => m.$('f64.no_fold_neg_sub',
              [$f64('8000000000000000'), $f64('8000000000000000')]),
          $f64('8000000000000000'));
      returns(
          'f64_no_fold_neg_sub_1',
          () =>
              m.$('f64.no_fold_neg_sub', [$f64('0'), $f64('8000000000000000')]),
          $f64('8000000000000000'));
      returns(
          'f64_no_fold_neg_sub_2',
          () =>
              m.$('f64.no_fold_neg_sub', [$f64('8000000000000000'), $f64('0')]),
          $f64('0'));
      returns(
          'f64_no_fold_neg_sub_3',
          () => m.$('f64.no_fold_neg_sub', [$f64('0'), $f64('0')]),
          $f64('8000000000000000'));
    });

    group('float_exprs.64.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.64.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
          'f32_no_fold_neg_add_0',
          () =>
              m.$('f32.no_fold_neg_add', [$f32('80000000'), $f32('80000000')]),
          $f32('0'));
      returns(
          'f32_no_fold_neg_add_1',
          () => m.$('f32.no_fold_neg_add', [$f32('0'), $f32('80000000')]),
          $f32('80000000'));
      returns(
          'f32_no_fold_neg_add_2',
          () => m.$('f32.no_fold_neg_add', [$f32('80000000'), $f32('0')]),
          $f32('80000000'));
      returns(
          'f32_no_fold_neg_add_3',
          () => m.$('f32.no_fold_neg_add', [$f32('0'), $f32('0')]),
          $f32('80000000'));
      returns(
          'f64_no_fold_neg_add_0',
          () => m.$('f64.no_fold_neg_add',
              [$f64('8000000000000000'), $f64('8000000000000000')]),
          $f64('0'));
      returns(
          'f64_no_fold_neg_add_1',
          () =>
              m.$('f64.no_fold_neg_add', [$f64('0'), $f64('8000000000000000')]),
          $f64('8000000000000000'));
      returns(
          'f64_no_fold_neg_add_2',
          () =>
              m.$('f64.no_fold_neg_add', [$f64('8000000000000000'), $f64('0')]),
          $f64('8000000000000000'));
      returns(
          'f64_no_fold_neg_add_3',
          () => m.$('f64.no_fold_neg_add', [$f64('0'), $f64('0')]),
          $f64('8000000000000000'));
    });

    group('float_exprs.65.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.65.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
          'f32_no_fold_add_neg_neg_0',
          () => m.$(
              'f32.no_fold_add_neg_neg', [$f32('80000000'), $f32('80000000')]),
          $f32('0'));
      returns(
          'f32_no_fold_add_neg_neg_1',
          () => m.$('f32.no_fold_add_neg_neg', [$f32('0'), $f32('80000000')]),
          $f32('0'));
      returns(
          'f32_no_fold_add_neg_neg_2',
          () => m.$('f32.no_fold_add_neg_neg', [$f32('80000000'), $f32('0')]),
          $f32('0'));
      returns(
          'f32_no_fold_add_neg_neg_3',
          () => m.$('f32.no_fold_add_neg_neg', [$f32('0'), $f32('0')]),
          $f32('80000000'));
      returns(
          'f64_no_fold_add_neg_neg_0',
          () => m.$('f64.no_fold_add_neg_neg',
              [$f64('8000000000000000'), $f64('8000000000000000')]),
          $f64('0'));
      returns(
          'f64_no_fold_add_neg_neg_1',
          () => m.$(
              'f64.no_fold_add_neg_neg', [$f64('0'), $f64('8000000000000000')]),
          $f64('0'));
      returns(
          'f64_no_fold_add_neg_neg_2',
          () => m.$(
              'f64.no_fold_add_neg_neg', [$f64('8000000000000000'), $f64('0')]),
          $f64('0'));
      returns(
          'f64_no_fold_add_neg_neg_3',
          () => m.$('f64.no_fold_add_neg_neg', [$f64('0'), $f64('0')]),
          $f64('8000000000000000'));
    });

    group('float_exprs.66.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.66.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns('f32_no_fold_add_neg_0',
          () => m.$('f32.no_fold_add_neg', [$f32('0')]), $f32('0'));
      returns('f32_no_fold_add_neg_1',
          () => m.$('f32.no_fold_add_neg', [$f32('80000000')]), $f32('0'));
      returns('f32_no_fold_add_neg_2',
          () => m.$('f32.no_fold_add_neg', [$f32('7F800000')]), double.nan);
      returns('f32_no_fold_add_neg_3',
          () => m.$('f32.no_fold_add_neg', [$f32('FF800000')]), double.nan);
      returns('f64_no_fold_add_neg_0',
          () => m.$('f64.no_fold_add_neg', [$f64('0')]), $f64('0'));
      returns(
          'f64_no_fold_add_neg_1',
          () => m.$('f64.no_fold_add_neg', [$f64('8000000000000000')]),
          $f64('0'));
      returns(
          'f64_no_fold_add_neg_2',
          () => m.$('f64.no_fold_add_neg', [$f64('7FF0000000000000')]),
          double.nan);
      returns(
          'f64_no_fold_add_neg_3',
          () => m.$('f64.no_fold_add_neg', [$f64('FFF0000000000000')]),
          double.nan);
    });

    group('float_exprs.67.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.67.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
          'f32_no_fold_6x_via_add_0',
          () => m.$('f32.no_fold_6x_via_add', [$f32('F12CC506')]),
          $f32('F28193C5'));
      returns(
          'f32_no_fold_6x_via_add_1',
          () => m.$('f32.no_fold_6x_via_add', [$f32('9969F3D6')]),
          $f32('9AAF76E1'));
      returns(
          'f32_no_fold_6x_via_add_2',
          () => m.$('f32.no_fold_6x_via_add', [$f32('19007D01')]),
          $f32('1A40BB81'));
      returns(
          'f32_no_fold_6x_via_add_3',
          () => m.$('f32.no_fold_6x_via_add', [$f32('B028FA1A')]),
          $f32('B17D7726'));
      returns(
          'f32_no_fold_6x_via_add_4',
          () => m.$('f32.no_fold_6x_via_add', [$f32('E7801945')]),
          $f32('E8C025E7'));
      returns(
          'f64_no_fold_6x_via_add_0',
          () => m.$('f64.no_fold_6x_via_add', [$f64('C43310E15ACAFFE6')]),
          $f64('C45C995208307FDA'));
      returns(
          'f64_no_fold_6x_via_add_1',
          () => m.$('f64.no_fold_6x_via_add', [$f64('9E8AAD62C78FA9B4')]),
          $f64('9EB4020A15ABBF46'));
      returns(
          'f64_no_fold_6x_via_add_2',
          () => m.$('f64.no_fold_6x_via_add', [$f64('D0EF8FBFA94F6AB2')]),
          $f64('D117ABCFBEFB9005'));
      returns(
          'f64_no_fold_6x_via_add_3',
          () => m.$('f64.no_fold_6x_via_add', [$f64('6EE756CCC2830A8E')]),
          $f64('6F11811991E247EB'));
      returns(
          'f64_no_fold_6x_via_add_4',
          () => m.$('f64.no_fold_6x_via_add', [$f64('CE98FD1AB1D2402A')]),
          $f64('CEC2BDD4055DB01F'));
    });

    group('float_exprs.68.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.68.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
          'f32_no_fold_div_div_0',
          () => m.$('f32.no_fold_div_div',
              [$f32('E6FB8114'), $f32('B7FDE309'), $f32('C4C61BC8')]),
          $f32('E923DA1E'));
      returns(
        'f32_no_fold_div_div_1',
        () => m.$('f32.no_fold_div_div',
            [$f32('1CE94E97'), $f32('76F9D0BF'), $f32('87B26A08')]),
        $f32('80000000'),
        skip: 'failed',
      );
      returns(
        'f32_no_fold_div_div_2',
        () => m.$('f32.no_fold_div_div',
            [$f32('55433FCC'), $f32('B18567E'), $f32('7471086C')]),
        $f32('7F800000'),
        skip: 'failed',
      );
      returns(
        'f32_no_fold_div_div_3',
        () => m.$('f32.no_fold_div_div',
            [$f32('B8E2000D'), $f32('FDCDF5B6'), $f32('AA3A79A6')]),
        $f32('8FC0CC3A'),
        skip: 'failed',
      );
      returns(
        'f32_no_fold_div_div_4',
        () => m.$('f32.no_fold_div_div',
            [$f32('56ED8737'), $f32('5BAAF751'), $f32('FDF989A0')]),
        $f32('80005B38'),
        skip: 'failed',
      );
      returns(
          'f64_no_fold_div_div_0',
          () => m.$('f64.no_fold_div_div', [
                $f64('550B4DC8EC3C7777'),
                $f64('6479F95AC2D18630'),
                $f64('8F1D4318ABBA341E')
              ]),
          $f64('E152649159D87E02'));
      returns(
          'f64_no_fold_div_div_1',
          () => m.$('f64.no_fold_div_div', [
                $f64('F16AC53AF5EB445F'),
                $f64('3E28549C0A4CEB13'),
                $f64('53B64E384003C801')
              ]),
          $f64('DF69417CDCCBAE91'));
      returns(
          'f64_no_fold_div_div_2',
          () => m.$('f64.no_fold_div_div', [
                $f64('C01D2685AFB27327'),
                $f64('F6FABB1EEED3DBEB'),
                $f64('4A9A543E2E6968A3')
              ]),
          $f64('2A69A5F'));
      returns(
          'f64_no_fold_div_div_3',
          () => m.$('f64.no_fold_div_div', [
                $f64('F3847DDEDE78AD1C'),
                $f64('CA6D932D070A367'),
                $f64('7C079CF18CC64F00')
              ]),
          $f64('FFF0000000000000'));
      returns(
          'f64_no_fold_div_div_4',
          () => m.$('f64.no_fold_div_div', [
                $f64('887F73D4979A9379'),
                $f64('1AB4D83B53E97788'),
                $f64('B74F8F86C9603B5B')
              ]),
          $f64('36587A7BD89C586C'));
    });

    group('float_exprs.69.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.69.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
          'f32_no_fold_mul_divs_0',
          () => m.$('f32.no_fold_mul_divs', [
                $f32('896241DF'),
                $f32('11F70E1E'),
                $f32('13C003AB'),
                $f32('C1CADCB9')
              ]),
          $f32('8DDE986'));
      returns(
          'f32_no_fold_mul_divs_1',
          () => m.$('f32.no_fold_mul_divs', [
                $f32('F287A131'),
                $f32('4C12424C'),
                $f32('377B353E'),
                $f32('3E44BFE4')
              ]),
          $f32('DF178D52'));
      returns(
          'f32_no_fold_mul_divs_2',
          () => m.$('f32.no_fold_mul_divs', [
                $f32('D06FAF91'),
                $f32('D37E771F'),
                $f32('CE4F548A'),
                $f32('C4962698')
              ]),
          $f32('46267A8E'));
      returns(
        'f32_no_fold_mul_divs_3',
        () => m.$('f32.no_fold_mul_divs', [
          $f32('F67AB45E'),
          $f32('2EECCB18'),
          $f32('379BD43D'),
          $f32('66D0A925')
        ]),
        $f32('FF800000'),
        skip: 'failed',
      );
      returns(
          'f32_no_fold_mul_divs_4',
          () => m.$('f32.no_fold_mul_divs', [
                $f32('251EEAC9'),
                $f32('9F999611'),
                $f32('12580832'),
                $f32('2DC95D9D')
              ]),
          $f32('A98E16D8'));
      returns(
          'f64_no_fold_mul_divs_0',
          () => m.$('f64.no_fold_mul_divs', [
                $f64('8CC363D6764F7B12'),
                $f64('A2FED5471F660B5F'),
                $f64('E22671B0A7F3A420'),
                $f64('4B90633BE34BA1F2')
              ]),
          $f64('C04B8FA2B76BAEEB'));
      returns(
          'f64_no_fold_mul_divs_1',
          () => m.$('f64.no_fold_mul_divs', [
                $f64('C7237880182E0FA8'),
                $f64('67F842631576147'),
                $f64('D69999372231D156'),
                $f64('DD2D5DB481AB9554')
              ]),
          $f64('FFF0000000000000'));
      returns(
          'f64_no_fold_mul_divs_2',
          () => m.$('f64.no_fold_mul_divs', [
                $f64('D339A747C8D4B541'),
                $f64('CBF99092AD6BBDC8'),
                $f64('B73CB23755C20101'),
                $f64('EDBDE8716F6B0B6A')
              ]),
          $f64('10AECF584C8466A5'));
      returns(
          'f64_no_fold_mul_divs_3',
          () => m.$('f64.no_fold_mul_divs', [
                $f64('C80C424B2ECE903D'),
                $f64('AA4568CE281DB37F'),
                $f64('4253900B99FD3D0'),
                $f64('4DE5C33952254DAD')
              ]),
          $f64('0'));
      returns(
          'f64_no_fold_mul_divs_4',
          () => m.$('f64.no_fold_mul_divs', [
                $f64('3EDA8EC2CECB32A9'),
                $f64('2EA58ACAB0051851'),
                $f64('19335E87C9077F7F'),
                $f64('D5F925EE37FFB386')
              ]),
          $f64('935E6286970B31BF'));
    });

    group('float_exprs.70.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.70.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
          'f32_no_fold_add_divs_0',
          () => m.$('f32.no_fold_add_divs',
              [$f32('43BCAF38'), $f32('BD2452F7'), $f32('FECD1226')]),
          $f32('846B84DB'));
      returns(
          'f32_no_fold_add_divs_1',
          () => m.$('f32.no_fold_add_divs',
              [$f32('A05744F4'), $f32('A774C81F'), $f32('D71B8546')]),
          $f32('FC979FB'));
      returns(
          'f32_no_fold_add_divs_2',
          () => m.$('f32.no_fold_add_divs',
              [$f32('A8B13204'), $f32('1F9772D9'), $f32('D7F677D5')]),
          $f32('10380C32'));
      returns(
          'f32_no_fold_add_divs_3',
          () => m.$('f32.no_fold_add_divs',
              [$f32('8D030E98'), $f32('E9C1A49'), $f32('EB8EC969')]),
          $f32('0'));
      returns(
          'f32_no_fold_add_divs_4',
          () => m.$('f32.no_fold_add_divs',
              [$f32('3A8F51CF'), $f32('3E53FFFF'), $f32('237E2BA')]),
          $f32('7B94596F'));
      returns(
          'f64_no_fold_add_divs_0',
          () => m.$('f64.no_fold_add_divs', [
                $f64('DADC5FCC3273B136'),
                $f64('5B1892A09EED8F6F'),
                $f64('78E8258B71E64397')
              ]),
          $f64('221E36EB9706AD82'));
      returns(
          'f64_no_fold_add_divs_1',
          () => m.$('f64.no_fold_add_divs', [
                $f64('C342215D4061B5B3'),
                $f64('404FB6184D97F27C'),
                $f64('842F3BB59DACC0EB')
              ]),
          $f64('7F02934EB0118BE3'));
      returns(
          'f64_no_fold_add_divs_2',
          () => m.$('f64.no_fold_add_divs', [
                $f64('838E7A4533741D8E'),
                $f64('2FA519BB7FEB802'),
                $f64('5F71F8A43454E51A')
              ]),
          $f64('0'));
      returns(
          'f64_no_fold_add_divs_3',
          () => m.$('f64.no_fold_add_divs', [
                $f64('538991C6CF93E2B4'),
                $f64('D48F2F7432698D11'),
                $f64('3810D8C1B2453617')
              ]),
          $f64('DC6D9E1D84DDD1D4'));
      returns(
          'f64_no_fold_add_divs_4',
          () => m.$('f64.no_fold_add_divs', [
                $f64('927D436849DC1271'),
                $f64('10C19D1C1450E52D'),
                $f64('3B9FA1BE69EA06FE')
              ]),
          $f64('96CD9A9B1C2F5623'));
    });

    group('float_exprs.71.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.71.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
          'f32_no_fold_sqrt_square_0',
          () => m.$('f32.no_fold_sqrt_square', [$f32('9EAE598B')]),
          $f32('1EAE5991'));
      returns(
        'f32_no_fold_sqrt_square_1',
        () => m.$('f32.no_fold_sqrt_square', [$f32('9B587CF2')]),
        $f32('1B5908D9'),
        skip: 'failed',
      );
      returns(
        'f32_no_fold_sqrt_square_2',
        () => m.$('f32.no_fold_sqrt_square', [$f32('9C6F20BE')]),
        $f32('1C6F32DC'),
        skip: 'failed',
      );
      returns(
        'f32_no_fold_sqrt_square_3',
        () => m.$('f32.no_fold_sqrt_square', [$f32('14B26439')]),
        $f32('0'),
        skip: 'failed',
      );
      returns(
        'f32_no_fold_sqrt_square_4',
        () => m.$('f32.no_fold_sqrt_square', [$f32('75F0CCF2')]),
        $f32('7F800000'),
        skip: 'failed',
      );
      returns(
          'f64_no_fold_sqrt_square_0',
          () => m.$('f64.no_fold_sqrt_square', [$f64('1EE1759D657203FD')]),
          $f64('1EE1759DD57545F3'));
      returns(
          'f64_no_fold_sqrt_square_1',
          () => m.$('f64.no_fold_sqrt_square', [$f64('9FD4C68DE1C78D83')]),
          $f64('1FD4C68DE1C78D81'));
      returns(
          'f64_no_fold_sqrt_square_2',
          () => m.$('f64.no_fold_sqrt_square', [$f64('9F6214736EDB6E1E')]),
          $f64('1F6214736ED9CF8D'));
      returns(
          'f64_no_fold_sqrt_square_3',
          () => m.$('f64.no_fold_sqrt_square', [$f64('9970864B9F684570')]),
          $f64('0'));
      returns(
          'f64_no_fold_sqrt_square_4',
          () => m.$('f64.no_fold_sqrt_square', [$f64('757B2A9855995ABA')]),
          $f64('7FF0000000000000'));
    });

    group('float_exprs.72.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.72.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
          'f32_no_fold_mul_sqrts_0',
          () =>
              m.$('f32.no_fold_mul_sqrts', [$f32('16EEED4'), $f32('9612E915')]),
          double.nan);
      returns(
          'f32_no_fold_mul_sqrts_1',
          () => m
              .$('f32.no_fold_mul_sqrts', [$f32('11A0C68A'), $f32('2FE329AE')]),
          $f32('20BF1B9D'));
      returns(
          'f32_no_fold_mul_sqrts_2',
          () => m
              .$('f32.no_fold_mul_sqrts', [$f32('13A6F3F0'), $f32('42C27F8C')]),
          $f32('2B343334'));
      returns(
          'f32_no_fold_mul_sqrts_3',
          () => m
              .$('f32.no_fold_mul_sqrts', [$f32('723C048F'), $f32('3B40FF5C')]),
          $f32('56BE7DCC'));
      returns(
          'f32_no_fold_mul_sqrts_4',
          () => m
              .$('f32.no_fold_mul_sqrts', [$f32('23AC1D00'), $f32('3B0A5D15')]),
          $f32('2F5A3D47'));
      returns(
          'f64_no_fold_mul_sqrts_0',
          () => m.$('f64.no_fold_mul_sqrts',
              [$f64('984D1144CC28CDBE'), $f64('BF7BF9BC373D3B6A')]),
          double.nan);
      returns(
          'f64_no_fold_mul_sqrts_1',
          () => m.$('f64.no_fold_mul_sqrts',
              [$f64('17C5A7EB976BEBC9'), $f64('26BF30CB8865A4CA')]),
          $f64('1F4260A1032D6E76'));
      returns(
          'f64_no_fold_mul_sqrts_2',
          () => m.$('f64.no_fold_mul_sqrts',
              [$f64('3A6711A0C1707935'), $f64('6E6FB5DE51A20D3')]),
          $f64('20A7067CA28E31EC'));
      returns(
          'f64_no_fold_mul_sqrts_3',
          () => m.$('f64.no_fold_mul_sqrts',
              [$f64('294FB0BBEA33B076'), $f64('1C2D963B34894158')]),
          $f64('22BE9EDC1FA624AF'));
      returns(
          'f64_no_fold_mul_sqrts_4',
          () => m.$('f64.no_fold_mul_sqrts',
              [$f64('4178676EAB7A4D0D'), $f64('60075A58231BA7A5')]),
          $f64('50C0E16AEBE203B3'));
    });

    group('float_exprs.73.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.73.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
          'f32_no_fold_div_sqrts_0',
          () => m
              .$('f32.no_fold_div_sqrts', [$f32('CC5F54DD'), $f32('A2EDBBB7')]),
          double.nan);
      returns(
          'f32_no_fold_div_sqrts_1',
          () => m
              .$('f32.no_fold_div_sqrts', [$f32('4FDCC1DB'), $f32('4D480F8F')]),
          $f32('40BE26FB'));
      returns(
          'f32_no_fold_div_sqrts_2',
          () =>
              m.$('f32.no_fold_div_sqrts', [$f32('3EA2F39'), $f32('4755A4E6')]),
          $f32('1DBD8582'));
      returns(
          'f32_no_fold_div_sqrts_3',
          () => m
              .$('f32.no_fold_div_sqrts', [$f32('5D597222'), $f32('30ADC58B')]),
          $f32('55CA7E54'));
      returns(
          'f32_no_fold_div_sqrts_4',
          () =>
              m.$('f32.no_fold_div_sqrts', [$f32('7C1AD53'), $f32('C68B894')]),
          $f32('3D252340'));
      returns(
          'f64_no_fold_div_sqrts_0',
          () => m.$('f64.no_fold_div_sqrts',
              [$f64('938509FC16411167'), $f64('B449C4255F5D6517')]),
          double.nan);
      returns(
          'f64_no_fold_div_sqrts_1',
          () => m.$('f64.no_fold_div_sqrts',
              [$f64('1B4B6897BDDAC760'), $f64('61C104578B4C91F3')]),
          $f64('1CB44E4F21F26CC9'));
      returns(
          'f64_no_fold_div_sqrts_2',
          () => m.$('f64.no_fold_div_sqrts',
              [$f64('60AAC83451B08989'), $f64('3928DA575C6D12B8')]),
          $f64('53B09C003991CE17'));
      returns(
          'f64_no_fold_div_sqrts_3',
          () => m.$('f64.no_fold_div_sqrts',
              [$f64('D5BAB7836456417'), $f64('5221FF60D03BA607')]),
          $f64('1D8C0E6C833BF657'));
      returns(
          'f64_no_fold_div_sqrts_4',
          () => m.$('f64.no_fold_div_sqrts',
              [$f64('EAA957816AD9515'), $f64('7B08C18A3A222AB1')]),
          $f64('9C0948539781E92'));
    });

    group('float_exprs.74.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.74.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
        'f32_no_fold_mul_sqrt_div_0',
        () => m.$(
            'f32.no_fold_mul_sqrt_div', [$f32('E87A53E5'), $f32('6DE04D6F')]),
        $f32('FF800000'),
        skip: 'failed',
      );
      returns(
        'f32_no_fold_mul_sqrt_div_1',
        () => m
            .$('f32.no_fold_mul_sqrt_div', [$f32('83C85F8E'), $f32('F46DF44')]),
        $f32('80000000'),
        skip: 'failed',
      );
      returns(
          'f32_no_fold_mul_sqrt_div_2',
          () => m.$(
              'f32.no_fold_mul_sqrt_div', [$f32('4E42B874'), $f32('242FA6')]),
          $f32('6E371C8D'));
      returns(
          'f32_no_fold_mul_sqrt_div_3',
          () => m.$(
              'f32.no_fold_mul_sqrt_div', [$f32('D52DA329'), $f32('77D4EB8E')]),
          $f32('B906A11D'));
      returns(
          'f32_no_fold_mul_sqrt_div_4',
          () => m.$(
              'f32.no_fold_mul_sqrt_div', [$f32('C3C88302'), $f32('43065489')]),
          $f32('C20A66F6'));
      returns(
          'f64_no_fold_mul_sqrt_div_0',
          () => m.$('f64.no_fold_mul_sqrt_div',
              [$f64('6B91DCDEB857305F'), $f64('6F5A066171C40EB9')]),
          $f64('7FF0000000000000'));
      returns(
          'f64_no_fold_mul_sqrt_div_1',
          () => m.$('f64.no_fold_mul_sqrt_div',
              [$f64('8C48B4F1C218E2AB'), $f64('1625E1EE65953B0B')]),
          $f64('8000000000000000'));
      returns(
          'f64_no_fold_mul_sqrt_div_2',
          () => m.$('f64.no_fold_mul_sqrt_div',
              [$f64('25674EE531DDBA38'), $f64('62FF370F758857F3')]),
          $f64('13E0AFF34269583E'));
      returns(
          'f64_no_fold_mul_sqrt_div_3',
          () => m.$('f64.no_fold_mul_sqrt_div',
              [$f64('D5F27F216B0DA6C5'), $f64('21C8E0B4E0B9FD7E')]),
          $f64('E504FA558AAD514E'));
      returns(
          'f64_no_fold_mul_sqrt_div_4',
          () => m.$('f64.no_fold_mul_sqrt_div',
              [$f64('4674C6955DF9912B'), $f64('7490CCA42C9D371E')]),
          $f64('2C24468072F54294'));
    });

    group('float_exprs.75.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.75.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
          'f32_no_flush_intermediate_subnormal_0',
          () => m.$('f32.no_flush_intermediate_subnormal',
              [$f32('800000'), $f32('34000000'), $f32('4B000000')]),
          $f32('800000'));
      returns(
          'f64_no_flush_intermediate_subnormal_0',
          () => m.$('f64.no_flush_intermediate_subnormal', [
                $f64('10000000000000'),
                $f64('3CB0000000000000'),
                $f64('4330000000000000')
              ]),
          $f64('10000000000000'));
    });

    group('float_exprs.76.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.76.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
          'f32_recoding_eq_0',
          () => m.$('f32.recoding_eq', [$f32('FF800000'), $f32('40400000')]),
          1);
      returns(
          'f32_recoding_le_0',
          () => m.$('f32.recoding_le', [$f32('FF800000'), $f32('40400000')]),
          1);
      returns(
          'f32_recoding_lt_0',
          () => m.$('f32.recoding_lt', [$f32('FF800000'), $f32('40400000')]),
          0);
      returns('f32_recoding_eq_1',
          () => m.$('f32.recoding_eq', [$f32('0'), $f32('3F800000')]), 1);
      returns('f32_recoding_le_1',
          () => m.$('f32.recoding_le', [$f32('0'), $f32('3F800000')]), 1);
      returns('f32_recoding_lt_1',
          () => m.$('f32.recoding_lt', [$f32('0'), $f32('3F800000')]), 0);
      returns(
          'f64_recoding_eq_0',
          () => m.$('f64.recoding_eq',
              [$f64('FFF0000000000000'), $f64('4008000000000000')]),
          1);
      returns(
          'f64_recoding_le_0',
          () => m.$('f64.recoding_le',
              [$f64('FFF0000000000000'), $f64('4008000000000000')]),
          1);
      returns(
          'f64_recoding_lt_0',
          () => m.$('f64.recoding_lt',
              [$f64('FFF0000000000000'), $f64('4008000000000000')]),
          0);
      returns(
          'f64_recoding_eq_1',
          () => m.$('f64.recoding_eq', [$f64('0'), $f64('3FF0000000000000')]),
          1);
      returns(
          'f64_recoding_le_1',
          () => m.$('f64.recoding_le', [$f64('0'), $f64('3FF0000000000000')]),
          1);
      returns(
          'f64_recoding_lt_1',
          () => m.$('f64.recoding_lt', [$f64('0'), $f64('3FF0000000000000')]),
          0);
      returns(
          'recoding_demote_0',
          () => m.$(
              'recoding_demote', [$f64('37B4C8F800000000'), $f32('4498A000')]),
          $f32('2C6450E'));
    });

    group('float_exprs.77.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.77.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
        'f32_no_extended_precision_div_0',
        () => m.$('f32.no_extended_precision_div',
            [$f32('40400000'), $f32('40E00000'), $f32('3EDB6DB7')]),
        1,
        skip: 'failed',
      );
      returns(
          'f64_no_extended_precision_div_0',
          () => m.$('f64.no_extended_precision_div', [
                $f64('4008000000000000'),
                $f64('401C000000000000'),
                $f64('3FDB6DB6DB6DB6DB')
              ]),
          1);
    });

    group('float_exprs.78.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.78.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns('f32_no_distribute_exact_0',
          () => m.$('f32.no_distribute_exact', [$f32('80000000')]), $f32('0'));
      returns(
          'f64_no_distribute_exact_0',
          () => m.$('f64.no_distribute_exact', [$f64('8000000000000000')]),
          $f64('0'));
    });

    group('float_exprs.79.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.79.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns('f32_sqrt_0', () => m.$('f32.sqrt', [$f32('40000000')]),
          $f32('3FB504F3'));
      returns(
          'f32_xkcd_sqrt_2_0',
          () => m.$('f32.xkcd_sqrt_2', [
                $f32('40400000'),
                $f32('40A00000'),
                $f32('40490FDB'),
                $f32('40E00000')
              ]),
          $f32('3FB5052A'));
      returns('f32_sqrt_1', () => m.$('f32.sqrt', [$f32('40400000')]),
          $f32('3FDDB3D7'));
      returns(
          'f32_xkcd_sqrt_3_0',
          () => m.$('f32.xkcd_sqrt_3',
              [$f32('40000000'), $f32('402DF854'), $f32('40490FDB')]),
          $f32('3FDD816A'));
      returns('f32_sqrt_2', () => m.$('f32.sqrt', [$f32('40A00000')]),
          $f32('400F1BBD'));
      returns(
          'f32_xkcd_sqrt_5_0',
          () => m.$('f32.xkcd_sqrt_5',
              [$f32('40000000'), $f32('402DF854'), $f32('40400000')]),
          $f32('400F16AC'));
      returns(
          'f32_xkcd_better_sqrt_5_0',
          () => m.$('f32.xkcd_better_sqrt_5', [
                $f32('41500000'),
                $f32('40800000'),
                $f32('40490FDB'),
                $f32('41C00000')
              ]),
          $f32('400F1BBD'));
      returns('f64_sqrt_0', () => m.$('f64.sqrt', [$f64('4000000000000000')]),
          $f64('3FF6A09E667F3BCD'));
      returns(
          'f64_xkcd_sqrt_2_0',
          () => m.$('f64.xkcd_sqrt_2', [
                $f64('4008000000000000'),
                $f64('4014000000000000'),
                $f64('400921FB54442D18'),
                $f64('401C000000000000')
              ]),
          $f64('3FF6A0A5362B055F'));
      returns('f64_sqrt_1', () => m.$('f64.sqrt', [$f64('4008000000000000')]),
          $f64('3FFBB67AE8584CAA'));
      returns(
          'f64_xkcd_sqrt_3_0',
          () => m.$('f64.xkcd_sqrt_3', [
                $f64('4000000000000000'),
                $f64('4005BF0A8B145769'),
                $f64('400921FB54442D18')
              ]),
          $f64('3FFBB02D4ECA8F95'));
      returns('f64_sqrt_2', () => m.$('f64.sqrt', [$f64('4014000000000000')]),
          $f64('4001E3779B97F4A8'));
      returns(
          'f64_xkcd_sqrt_5_0',
          () => m.$('f64.xkcd_sqrt_5', [
                $f64('4000000000000000'),
                $f64('4005BF0A8B145769'),
                $f64('4008000000000000')
              ]),
          $f64('4001E2D58D8B3BCE'));
      returns(
          'f64_xkcd_better_sqrt_5_0',
          () => m.$('f64.xkcd_better_sqrt_5', [
                $f64('402A000000000000'),
                $f64('4010000000000000'),
                $f64('400921FB54442D18'),
                $f64('4038000000000000')
              ]),
          $f64('4001E3778509A5A3'));
    });

    group('float_exprs.80.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.80.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
          'f32_compute_radix_0',
          () => m.$('f32.compute_radix', [$f32('3F800000'), $f32('3F800000')]),
          $f32('40000000'));
      returns(
          'f64_compute_radix_0',
          () => m.$('f64.compute_radix',
              [$f64('3FF0000000000000'), $f64('3FF0000000000000')]),
          $f64('4000000000000000'));
    });

    group('float_exprs.81.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.81.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
        'f32_no_fold_sub1_mul_add_0',
        () => m.$(
            'f32.no_fold_sub1_mul_add', [$f32('2F800000'), $f32('3F800000')]),
        $f32('0'),
        skip: 'failed',
      );
      returns(
          'f64_no_fold_sub1_mul_add_0',
          () => m.$('f64.no_fold_sub1_mul_add',
              [$f64('3BF0000000000000'), $f64('3FF0000000000000')]),
          $f64('0'));
    });

    group('float_exprs.82.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.82.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
          'f32_no_fold_add_le_monotonicity_0',
          () => m.$('f32.no_fold_add_le_monotonicity',
              [$f32('0'), $f32('0'), $f32('7FC00000')]),
          0);
      returns(
          'f32_no_fold_add_le_monotonicity_1',
          () => m.$('f32.no_fold_add_le_monotonicity',
              [$f32('7F800000'), $f32('FF800000'), $f32('7F800000')]),
          0);
      returns(
          'f64_no_fold_add_le_monotonicity_0',
          () => m.$('f64.no_fold_add_le_monotonicity',
              [$f64('0'), $f64('0'), $f64('7FF8000000000000')]),
          0);
      returns(
          'f64_no_fold_add_le_monotonicity_1',
          () => m.$('f64.no_fold_add_le_monotonicity', [
                $f64('7FF0000000000000'),
                $f64('FFF0000000000000'),
                $f64('7FF0000000000000')
              ]),
          0);
    });

    group('float_exprs.83.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.83.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns('f32_not_lt_0',
          () => m.$('f32.not_lt', [$f32('7FC00000'), $f32('0')]), 1);
      returns('f32_not_le_0',
          () => m.$('f32.not_le', [$f32('7FC00000'), $f32('0')]), 1);
      returns('f32_not_gt_0',
          () => m.$('f32.not_gt', [$f32('7FC00000'), $f32('0')]), 1);
      returns('f32_not_ge_0',
          () => m.$('f32.not_ge', [$f32('7FC00000'), $f32('0')]), 1);
      returns('f64_not_lt_0',
          () => m.$('f64.not_lt', [$f64('7FF8000000000000'), $f64('0')]), 1);
      returns('f64_not_le_0',
          () => m.$('f64.not_le', [$f64('7FF8000000000000'), $f64('0')]), 1);
      returns('f64_not_gt_0',
          () => m.$('f64.not_gt', [$f64('7FF8000000000000'), $f64('0')]), 1);
      returns('f64_not_ge_0',
          () => m.$('f64.not_ge', [$f64('7FF8000000000000'), $f64('0')]), 1);
    });

    group('float_exprs.84.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.84.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
        'f32_epsilon_0',
        () => m.$('f32.epsilon', []),
        $f32('B4000000'),
        skip: 'failed',
      );
      returns('f64_epsilon_0', () => m.$('f64.epsilon', []),
          $f64('3CB0000000000000'));
    });

    group('float_exprs.85.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.85.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
        'f32_epsilon_0',
        () => m.$('f32.epsilon', []),
        $f32('34000000'),
        skip: 'failed',
      );
      returns('f64_epsilon_0', () => m.$('f64.epsilon', []),
          $f64('3CB0000000000000'));
    });

    group('float_exprs.86.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.86.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns('f32_no_trichotomy_lt_0',
          () => m.$('f32.no_trichotomy_lt', [$f32('0'), $f32('7FC00000')]), 0);
      returns('f32_no_trichotomy_le_0',
          () => m.$('f32.no_trichotomy_le', [$f32('0'), $f32('7FC00000')]), 0);
      returns('f32_no_trichotomy_gt_0',
          () => m.$('f32.no_trichotomy_gt', [$f32('0'), $f32('7FC00000')]), 0);
      returns('f32_no_trichotomy_ge_0',
          () => m.$('f32.no_trichotomy_ge', [$f32('0'), $f32('7FC00000')]), 0);
      returns(
          'f64_no_trichotomy_lt_0',
          () => m
              .$('f64.no_trichotomy_lt', [$f64('0'), $f64('7FF8000000000000')]),
          0);
      returns(
          'f64_no_trichotomy_le_0',
          () => m
              .$('f64.no_trichotomy_le', [$f64('0'), $f64('7FF8000000000000')]),
          0);
      returns(
          'f64_no_trichotomy_gt_0',
          () => m
              .$('f64.no_trichotomy_gt', [$f64('0'), $f64('7FF8000000000000')]),
          0);
      returns(
          'f64_no_trichotomy_ge_0',
          () => m
              .$('f64.no_trichotomy_ge', [$f64('0'), $f64('7FF8000000000000')]),
          0);
    });

    group('float_exprs.87.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.87.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
          'f32_arithmetic_nan_bitpattern_0',
          () => m.$('f32.arithmetic_nan_bitpattern',
              [$i32('7F803210'), $i32('7F803210')]),
          $i32('7FC00000'));
      returns('f32_canonical_nan_bitpattern_0',
          () => m.$('f32.canonical_nan_bitpattern', [0, 0]), $i32('7FC00000'));
      returns(
          'f32_canonical_nan_bitpattern_1',
          () => m.$('f32.canonical_nan_bitpattern',
              [$i32('7FC00000'), $i32('7FC00000')]),
          $i32('7FC00000'));
      returns(
          'f32_canonical_nan_bitpattern_2',
          () => m.$('f32.canonical_nan_bitpattern',
              [$i32('FFC00000'), $i32('7FC00000')]),
          $i32('7FC00000'));
      returns(
          'f32_canonical_nan_bitpattern_3',
          () => m.$('f32.canonical_nan_bitpattern',
              [$i32('7FC00000'), $i32('FFC00000')]),
          $i32('7FC00000'));
      returns(
          'f32_canonical_nan_bitpattern_4',
          () => m.$('f32.canonical_nan_bitpattern',
              [$i32('FFC00000'), $i32('FFC00000')]),
          $i32('7FC00000'));
      returns(
        'f32_nonarithmetic_nan_bitpattern_0',
        () => m.$('f32.nonarithmetic_nan_bitpattern', [$i32('7FC03210')]),
        $i32('FFC03210'),
        skip: 'failed',
      );
      returns(
          'f32_nonarithmetic_nan_bitpattern_1',
          () => m.$('f32.nonarithmetic_nan_bitpattern', [$i32('FFC03210')]),
          $i32('7FC03210'));
      returns(
        'f32_nonarithmetic_nan_bitpattern_2',
        () => m.$('f32.nonarithmetic_nan_bitpattern', [$i32('7F803210')]),
        $i32('FF803210'),
        skip: 'failed',
      );
      returns(
        'f32_nonarithmetic_nan_bitpattern_3',
        () => m.$('f32.nonarithmetic_nan_bitpattern', [$i32('FF803210')]),
        $i32('7F803210'),
        skip: 'failed',
      );
      returns(
          'f64_arithmetic_nan_bitpattern_0',
          () => m.$('f64.arithmetic_nan_bitpattern',
              [$i64('7FF0000000003210'), $i64('7FF0000000003210')]),
          $i64('7FF8000000000000'));
      returns(
          'f64_canonical_nan_bitpattern_0',
          () => m.$('f64.canonical_nan_bitpattern', [0, 0]),
          $i64('7FF8000000000000'));
      returns(
          'f64_canonical_nan_bitpattern_1',
          () => m.$('f64.canonical_nan_bitpattern',
              [$i64('7FF8000000000000'), $i64('7FF8000000000000')]),
          $i64('7FF8000000000000'));
      returns(
          'f64_canonical_nan_bitpattern_2',
          () => m.$('f64.canonical_nan_bitpattern',
              [$i64('FFF8000000000000'), $i64('7FF8000000000000')]),
          $i64('7FF8000000000000'));
      returns(
          'f64_canonical_nan_bitpattern_3',
          () => m.$('f64.canonical_nan_bitpattern',
              [$i64('7FF8000000000000'), $i64('FFF8000000000000')]),
          $i64('7FF8000000000000'));
      returns(
          'f64_canonical_nan_bitpattern_4',
          () => m.$('f64.canonical_nan_bitpattern',
              [$i64('FFF8000000000000'), $i64('FFF8000000000000')]),
          $i64('7FF8000000000000'));
      returns(
          'f64_nonarithmetic_nan_bitpattern_0',
          () => m.$(
              'f64.nonarithmetic_nan_bitpattern', [$i64('7FF8000000003210')]),
          $i64('FFF8000000003210'));
      returns(
          'f64_nonarithmetic_nan_bitpattern_1',
          () => m.$(
              'f64.nonarithmetic_nan_bitpattern', [$i64('FFF8000000003210')]),
          $i64('7FF8000000003210'));
      returns(
          'f64_nonarithmetic_nan_bitpattern_2',
          () => m.$(
              'f64.nonarithmetic_nan_bitpattern', [$i64('7FF0000000003210')]),
          $i64('FFF0000000003210'));
      returns(
          'f64_nonarithmetic_nan_bitpattern_3',
          () => m.$(
              'f64.nonarithmetic_nan_bitpattern', [$i64('FFF0000000003210')]),
          $i64('7FF0000000003210'));
      returns(
          'f32_no_fold_sub_zero_0',
          () => m.$('f32.no_fold_sub_zero', [$i32('7FA00000')]),
          $i32('7FC00000'));
      returns(
          'f32_no_fold_neg0_sub_0',
          () => m.$('f32.no_fold_neg0_sub', [$i32('7FA00000')]),
          $i32('7FC00000'));
      returns(
          'f32_no_fold_mul_one_0',
          () => m.$('f32.no_fold_mul_one', [$i32('7FA00000')]),
          $i32('7FC00000'));
      returns(
          'f32_no_fold_neg1_mul_0',
          () => m.$('f32.no_fold_neg1_mul', [$i32('7FA00000')]),
          $i32('7FC00000'));
      returns(
          'f32_no_fold_div_one_0',
          () => m.$('f32.no_fold_div_one', [$i32('7FA00000')]),
          $i32('7FC00000'));
      returns(
          'f32_no_fold_div_neg1_0',
          () => m.$('f32.no_fold_div_neg1', [$i32('7FA00000')]),
          $i32('7FC00000'));
      returns(
          'f64_no_fold_sub_zero_0',
          () => m.$('f64.no_fold_sub_zero', [$i64('7FF4000000000000')]),
          $i64('7FF8000000000000'));
      returns(
          'f64_no_fold_neg0_sub_0',
          () => m.$('f64.no_fold_neg0_sub', [$i64('7FF4000000000000')]),
          $i64('7FF8000000000000'));
      returns(
          'f64_no_fold_mul_one_0',
          () => m.$('f64.no_fold_mul_one', [$i64('7FF4000000000000')]),
          $i64('7FF8000000000000'));
      returns(
          'f64_no_fold_neg1_mul_0',
          () => m.$('f64.no_fold_neg1_mul', [$i64('7FF4000000000000')]),
          $i64('7FF8000000000000'));
      returns(
          'f64_no_fold_div_one_0',
          () => m.$('f64.no_fold_div_one', [$i64('7FF4000000000000')]),
          $i64('7FF8000000000000'));
      returns(
          'f64_no_fold_div_neg1_0',
          () => m.$('f64.no_fold_div_neg1', [$i64('7FF4000000000000')]),
          $i64('7FF8000000000000'));
      returns(
        'no_fold_promote_demote_0',
        () => m.$('no_fold_promote_demote', [$i32('7FA00000')]),
        $i32('7FC00000'),
        skip: 'failed',
      );
    });

    group('float_exprs.88.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.88.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
          'dot_product_example_0',
          () => m.$('dot_product_example', [
                $f64('417E848000000000'),
                $f64('3FF0000000000000'),
                $f64('BFF0000000000000'),
                $f64('419312D000000000'),
                $f64('418312D000000000'),
                $f64('3FF0000000000000'),
                $f64('BFF0000000000000'),
                $f64('C16E848000000000')
              ]),
          $f64('4000000000000000'));
      returns(
          'with_binary_sum_collapse_0',
          () => m.$('with_binary_sum_collapse', [
                $f64('417E848000000000'),
                $f64('3FF0000000000000'),
                $f64('BFF0000000000000'),
                $f64('419312D000000000'),
                $f64('418312D000000000'),
                $f64('3FF0000000000000'),
                $f64('BFF0000000000000'),
                $f64('C16E848000000000')
              ]),
          $f64('4000000000000000'));
    });

    group('float_exprs.89.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.89.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
          'f32_contract2fma_0',
          () => m.$('f32.contract2fma', [$f32('3F800000'), $f32('3F800000')]),
          $f32('0'));
      returns(
          'f32_contract2fma_1',
          () => m.$('f32.contract2fma', [$f32('3F8CCCCD'), $f32('3F8CCCCD')]),
          $f32('0'));
      returns(
          'f32_contract2fma_2',
          () => m.$('f32.contract2fma', [$f32('3F999999'), $f32('3F999999')]),
          $f32('0'));
      returns(
          'f64_contract2fma_0',
          () => m.$('f64.contract2fma',
              [$f64('3FF0000000000000'), $f64('3FF0000000000000')]),
          $f64('0'));
      returns(
          'f64_contract2fma_1',
          () => m.$('f64.contract2fma',
              [$f64('3FF199999999999A'), $f64('3FF199999999999A')]),
          $f64('0'));
      returns(
          'f64_contract2fma_2',
          () => m.$('f64.contract2fma',
              [$f64('3FF3333333333333'), $f64('3FF3333333333333')]),
          $f64('0'));
    });

    group('float_exprs.90.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.90.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
        'f32_division_by_small_number_0',
        () => m.$('f32.division_by_small_number',
            [$f32('4CD59F80'), $f32('47C35000'), $f32('3A6BEDFA')]),
        $f32('49590380'),
        skip: 'failed',
      );
      returns(
          'f64_division_by_small_number_0',
          () => m.$('f64.division_by_small_number', [
                $f64('419AB3F000000000'),
                $f64('40F86A0000000000'),
                $f64('3F4D7DBF487FCB92')
              ]),
          $f64('412B2071C71C7180'));
    });

    group('float_exprs.91.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.91.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
          'f32_golden_ratio_0',
          () => m.$('f32.golden_ratio',
              [$f32('3F000000'), $f32('3F800000'), $f32('40A00000')]),
          $f32('3FCF1BBD'));
      returns(
          'f64_golden_ratio_0',
          () => m.$('f64.golden_ratio', [
                $f64('3FE0000000000000'),
                $f64('3FF0000000000000'),
                $f64('4014000000000000')
              ]),
          $f64('3FF9E3779B97F4A8'));
    });

    group('float_exprs.92.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.92.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns('f32_silver_means_0', () => m.$('f32.silver_means', [$f32('0')]),
          $f32('3F800000'));
      returns('f32_silver_means_1',
          () => m.$('f32.silver_means', [$f32('3F800000')]), $f32('3FCF1BBD'));
      returns('f32_silver_means_2',
          () => m.$('f32.silver_means', [$f32('40000000')]), $f32('401A827A'));
      returns('f32_silver_means_3',
          () => m.$('f32.silver_means', [$f32('40400000')]), $f32('405360AD'));
      returns('f32_silver_means_4',
          () => m.$('f32.silver_means', [$f32('40800000')]), $f32('40878DDE'));
      returns('f32_silver_means_5',
          () => m.$('f32.silver_means', [$f32('40A00000')]), $f32('40A629A2'));
      returns('f64_silver_means_0', () => m.$('f64.silver_means', [$f64('0')]),
          $f64('3FF0000000000000'));
      returns(
          'f64_silver_means_1',
          () => m.$('f64.silver_means', [$f64('3FF0000000000000')]),
          $f64('3FF9E3779B97F4A8'));
      returns(
          'f64_silver_means_2',
          () => m.$('f64.silver_means', [$f64('4000000000000000')]),
          $f64('4003504F333F9DE6'));
      returns(
          'f64_silver_means_3',
          () => m.$('f64.silver_means', [$f64('4008000000000000')]),
          $f64('400A6C15A230ACFA'));
      returns(
          'f64_silver_means_4',
          () => m.$('f64.silver_means', [$f64('4010000000000000')]),
          $f64('4010F1BBCDCBFA54'));
      returns(
          'f64_silver_means_5',
          () => m.$('f64.silver_means', [$f64('4014000000000000')]),
          $f64('4014C53452546CFA'));
    });

    group('float_exprs.93.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.93.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
          'point_four_0',
          () => m.$('point_four',
              [$f64('4010000000000000'), $f64('4024000000000000')]),
          0);
    });

    group('float_exprs.94.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.94.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns('tau_0', () => m.$('tau', [0xA]), $f64('401921FB54442D14'));
      returns('tau_1', () => m.$('tau', [0xB]), $f64('401921FB54442D18'));
    });

    group('float_exprs.95.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_exprs/float_exprs.95.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
          'f32_no_fold_conditional_inc_0',
          () => m.$('f32.no_fold_conditional_inc',
              [$f32('80000000'), $f32('BF800000')]),
          $f32('80000000'));
      returns(
          'f64_no_fold_conditional_inc_0',
          () => m.$('f64.no_fold_conditional_inc',
              [$f64('8000000000000000'), $f64('BFF0000000000000')]),
          $f64('8000000000000000'));
    });
  });
}
