// Generated from spec/test/core/f64_bitwise.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';

import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';

import '../framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};

  group('f64_bitwise.0.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/f64_bitwise/f64_bitwise.0.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    returns(
        'copysign_0',
        () => m.$(
            'copysign', [$f64('8000000000000000'), $f64('8000000000000000')]),
        $f64('8000000000000000'));
    returns(
        'copysign_1',
        () => m.$('copysign', [$f64('8000000000000000'), $f64('0')]),
        $f64('0'));
    returns(
        'copysign_2',
        () => m.$('copysign', [$f64('0'), $f64('8000000000000000')]),
        $f64('8000000000000000'));
    returns(
        'copysign_3', () => m.$('copysign', [$f64('0'), $f64('0')]), $f64('0'));
    returns(
        'copysign_4',
        () => m.$(
            'copysign', [$f64('8000000000000000'), $f64('8000000000000001')]),
        $f64('8000000000000000'));
    returns(
        'copysign_5',
        () => m.$('copysign', [$f64('8000000000000000'), $f64('1')]),
        $f64('0'));
    returns(
        'copysign_6',
        () => m.$('copysign', [$f64('0'), $f64('8000000000000001')]),
        $f64('8000000000000000'));
    returns(
        'copysign_7', () => m.$('copysign', [$f64('0'), $f64('1')]), $f64('0'));
    returns(
        'copysign_8',
        () => m.$(
            'copysign', [$f64('8000000000000000'), $f64('8010000000000000')]),
        $f64('8000000000000000'));
    returns(
        'copysign_9',
        () =>
            m.$('copysign', [$f64('8000000000000000'), $f64('10000000000000')]),
        $f64('0'));
    returns(
        'copysign_10',
        () => m.$('copysign', [$f64('0'), $f64('8010000000000000')]),
        $f64('8000000000000000'));
    returns('copysign_11',
        () => m.$('copysign', [$f64('0'), $f64('10000000000000')]), $f64('0'));
    returns(
        'copysign_12',
        () => m.$(
            'copysign', [$f64('8000000000000000'), $f64('BFE0000000000000')]),
        $f64('8000000000000000'));
    returns(
        'copysign_13',
        () => m.$(
            'copysign', [$f64('8000000000000000'), $f64('3FE0000000000000')]),
        $f64('0'));
    returns(
        'copysign_14',
        () => m.$('copysign', [$f64('0'), $f64('BFE0000000000000')]),
        $f64('8000000000000000'));
    returns(
        'copysign_15',
        () => m.$('copysign', [$f64('0'), $f64('3FE0000000000000')]),
        $f64('0'));
    returns(
        'copysign_16',
        () => m.$(
            'copysign', [$f64('8000000000000000'), $f64('BFF0000000000000')]),
        $f64('8000000000000000'));
    returns(
        'copysign_17',
        () => m.$(
            'copysign', [$f64('8000000000000000'), $f64('3FF0000000000000')]),
        $f64('0'));
    returns(
        'copysign_18',
        () => m.$('copysign', [$f64('0'), $f64('BFF0000000000000')]),
        $f64('8000000000000000'));
    returns(
        'copysign_19',
        () => m.$('copysign', [$f64('0'), $f64('3FF0000000000000')]),
        $f64('0'));
    returns(
        'copysign_20',
        () => m.$(
            'copysign', [$f64('8000000000000000'), $f64('C01921FB54442D18')]),
        $f64('8000000000000000'));
    returns(
        'copysign_21',
        () => m.$(
            'copysign', [$f64('8000000000000000'), $f64('401921FB54442D18')]),
        $f64('0'));
    returns(
        'copysign_22',
        () => m.$('copysign', [$f64('0'), $f64('C01921FB54442D18')]),
        $f64('8000000000000000'));
    returns(
        'copysign_23',
        () => m.$('copysign', [$f64('0'), $f64('401921FB54442D18')]),
        $f64('0'));
    returns(
        'copysign_24',
        () => m.$(
            'copysign', [$f64('8000000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('8000000000000000'));
    returns(
        'copysign_25',
        () => m.$(
            'copysign', [$f64('8000000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('0'));
    returns(
        'copysign_26',
        () => m.$('copysign', [$f64('0'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('8000000000000000'));
    returns(
        'copysign_27',
        () => m.$('copysign', [$f64('0'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('0'));
    returns(
        'copysign_28',
        () => m.$(
            'copysign', [$f64('8000000000000000'), $f64('FFF0000000000000')]),
        $f64('8000000000000000'));
    returns(
        'copysign_29',
        () => m.$(
            'copysign', [$f64('8000000000000000'), $f64('7FF0000000000000')]),
        $f64('0'));
    returns(
        'copysign_30',
        () => m.$('copysign', [$f64('0'), $f64('FFF0000000000000')]),
        $f64('8000000000000000'));
    returns(
        'copysign_31',
        () => m.$('copysign', [$f64('0'), $f64('7FF0000000000000')]),
        $f64('0'));
    returns(
        'copysign_32',
        () => m.$(
            'copysign', [$f64('8000000000000000'), $f64('FFF8000000000000')]),
        $f64('8000000000000000'));
    returns(
        'copysign_33',
        () => m.$(
            'copysign', [$f64('8000000000000000'), $f64('7FF8000000000000')]),
        $f64('0'));
    returns(
        'copysign_34',
        () => m.$('copysign', [$f64('0'), $f64('FFF8000000000000')]),
        $f64('8000000000000000'));
    returns(
        'copysign_35',
        () => m.$('copysign', [$f64('0'), $f64('7FF8000000000000')]),
        $f64('0'));
    returns(
        'copysign_36',
        () => m.$(
            'copysign', [$f64('8000000000000001'), $f64('8000000000000000')]),
        $f64('8000000000000001'));
    returns(
        'copysign_37',
        () => m.$('copysign', [$f64('8000000000000001'), $f64('0')]),
        $f64('1'));
    returns(
        'copysign_38',
        () => m.$('copysign', [$f64('1'), $f64('8000000000000000')]),
        $f64('8000000000000001'));
    returns('copysign_39', () => m.$('copysign', [$f64('1'), $f64('0')]),
        $f64('1'));
    returns(
        'copysign_40',
        () => m.$(
            'copysign', [$f64('8000000000000001'), $f64('8000000000000001')]),
        $f64('8000000000000001'));
    returns(
        'copysign_41',
        () => m.$('copysign', [$f64('8000000000000001'), $f64('1')]),
        $f64('1'));
    returns(
        'copysign_42',
        () => m.$('copysign', [$f64('1'), $f64('8000000000000001')]),
        $f64('8000000000000001'));
    returns('copysign_43', () => m.$('copysign', [$f64('1'), $f64('1')]),
        $f64('1'));
    returns(
        'copysign_44',
        () => m.$(
            'copysign', [$f64('8000000000000001'), $f64('8010000000000000')]),
        $f64('8000000000000001'));
    returns(
        'copysign_45',
        () =>
            m.$('copysign', [$f64('8000000000000001'), $f64('10000000000000')]),
        $f64('1'));
    returns(
        'copysign_46',
        () => m.$('copysign', [$f64('1'), $f64('8010000000000000')]),
        $f64('8000000000000001'));
    returns('copysign_47',
        () => m.$('copysign', [$f64('1'), $f64('10000000000000')]), $f64('1'));
    returns(
        'copysign_48',
        () => m.$(
            'copysign', [$f64('8000000000000001'), $f64('BFE0000000000000')]),
        $f64('8000000000000001'));
    returns(
        'copysign_49',
        () => m.$(
            'copysign', [$f64('8000000000000001'), $f64('3FE0000000000000')]),
        $f64('1'));
    returns(
        'copysign_50',
        () => m.$('copysign', [$f64('1'), $f64('BFE0000000000000')]),
        $f64('8000000000000001'));
    returns(
        'copysign_51',
        () => m.$('copysign', [$f64('1'), $f64('3FE0000000000000')]),
        $f64('1'));
    returns(
        'copysign_52',
        () => m.$(
            'copysign', [$f64('8000000000000001'), $f64('BFF0000000000000')]),
        $f64('8000000000000001'));
    returns(
        'copysign_53',
        () => m.$(
            'copysign', [$f64('8000000000000001'), $f64('3FF0000000000000')]),
        $f64('1'));
    returns(
        'copysign_54',
        () => m.$('copysign', [$f64('1'), $f64('BFF0000000000000')]),
        $f64('8000000000000001'));
    returns(
        'copysign_55',
        () => m.$('copysign', [$f64('1'), $f64('3FF0000000000000')]),
        $f64('1'));
    returns(
        'copysign_56',
        () => m.$(
            'copysign', [$f64('8000000000000001'), $f64('C01921FB54442D18')]),
        $f64('8000000000000001'));
    returns(
        'copysign_57',
        () => m.$(
            'copysign', [$f64('8000000000000001'), $f64('401921FB54442D18')]),
        $f64('1'));
    returns(
        'copysign_58',
        () => m.$('copysign', [$f64('1'), $f64('C01921FB54442D18')]),
        $f64('8000000000000001'));
    returns(
        'copysign_59',
        () => m.$('copysign', [$f64('1'), $f64('401921FB54442D18')]),
        $f64('1'));
    returns(
        'copysign_60',
        () => m.$(
            'copysign', [$f64('8000000000000001'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('8000000000000001'));
    returns(
        'copysign_61',
        () => m.$(
            'copysign', [$f64('8000000000000001'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('1'));
    returns(
        'copysign_62',
        () => m.$('copysign', [$f64('1'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('8000000000000001'));
    returns(
        'copysign_63',
        () => m.$('copysign', [$f64('1'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('1'));
    returns(
        'copysign_64',
        () => m.$(
            'copysign', [$f64('8000000000000001'), $f64('FFF0000000000000')]),
        $f64('8000000000000001'));
    returns(
        'copysign_65',
        () => m.$(
            'copysign', [$f64('8000000000000001'), $f64('7FF0000000000000')]),
        $f64('1'));
    returns(
        'copysign_66',
        () => m.$('copysign', [$f64('1'), $f64('FFF0000000000000')]),
        $f64('8000000000000001'));
    returns(
        'copysign_67',
        () => m.$('copysign', [$f64('1'), $f64('7FF0000000000000')]),
        $f64('1'));
    returns(
      'copysign_68',
      () =>
          m.$('copysign', [$f64('8000000000000001'), $f64('FFF8000000000000')]),
      $f64('8000000000000001'),
      skip: 'failed',
    );
    returns(
        'copysign_69',
        () => m.$(
            'copysign', [$f64('8000000000000001'), $f64('7FF8000000000000')]),
        $f64('1'));
    returns(
      'copysign_70',
      () => m.$('copysign', [$f64('1'), $f64('FFF8000000000000')]),
      $f64('8000000000000001'),
      skip: 'failed',
    );
    returns(
        'copysign_71',
        () => m.$('copysign', [$f64('1'), $f64('7FF8000000000000')]),
        $f64('1'));
    returns(
        'copysign_72',
        () => m.$(
            'copysign', [$f64('8010000000000000'), $f64('8000000000000000')]),
        $f64('8010000000000000'));
    returns(
        'copysign_73',
        () => m.$('copysign', [$f64('8010000000000000'), $f64('0')]),
        $f64('10000000000000'));
    returns(
        'copysign_74',
        () =>
            m.$('copysign', [$f64('10000000000000'), $f64('8000000000000000')]),
        $f64('8010000000000000'));
    returns(
        'copysign_75',
        () => m.$('copysign', [$f64('10000000000000'), $f64('0')]),
        $f64('10000000000000'));
    returns(
        'copysign_76',
        () => m.$(
            'copysign', [$f64('8010000000000000'), $f64('8000000000000001')]),
        $f64('8010000000000000'));
    returns(
        'copysign_77',
        () => m.$('copysign', [$f64('8010000000000000'), $f64('1')]),
        $f64('10000000000000'));
    returns(
        'copysign_78',
        () =>
            m.$('copysign', [$f64('10000000000000'), $f64('8000000000000001')]),
        $f64('8010000000000000'));
    returns(
        'copysign_79',
        () => m.$('copysign', [$f64('10000000000000'), $f64('1')]),
        $f64('10000000000000'));
    returns(
        'copysign_80',
        () => m.$(
            'copysign', [$f64('8010000000000000'), $f64('8010000000000000')]),
        $f64('8010000000000000'));
    returns(
        'copysign_81',
        () =>
            m.$('copysign', [$f64('8010000000000000'), $f64('10000000000000')]),
        $f64('10000000000000'));
    returns(
        'copysign_82',
        () =>
            m.$('copysign', [$f64('10000000000000'), $f64('8010000000000000')]),
        $f64('8010000000000000'));
    returns(
        'copysign_83',
        () => m.$('copysign', [$f64('10000000000000'), $f64('10000000000000')]),
        $f64('10000000000000'));
    returns(
        'copysign_84',
        () => m.$(
            'copysign', [$f64('8010000000000000'), $f64('BFE0000000000000')]),
        $f64('8010000000000000'));
    returns(
        'copysign_85',
        () => m.$(
            'copysign', [$f64('8010000000000000'), $f64('3FE0000000000000')]),
        $f64('10000000000000'));
    returns(
        'copysign_86',
        () =>
            m.$('copysign', [$f64('10000000000000'), $f64('BFE0000000000000')]),
        $f64('8010000000000000'));
    returns(
        'copysign_87',
        () =>
            m.$('copysign', [$f64('10000000000000'), $f64('3FE0000000000000')]),
        $f64('10000000000000'));
    returns(
        'copysign_88',
        () => m.$(
            'copysign', [$f64('8010000000000000'), $f64('BFF0000000000000')]),
        $f64('8010000000000000'));
    returns(
        'copysign_89',
        () => m.$(
            'copysign', [$f64('8010000000000000'), $f64('3FF0000000000000')]),
        $f64('10000000000000'));
    returns(
        'copysign_90',
        () =>
            m.$('copysign', [$f64('10000000000000'), $f64('BFF0000000000000')]),
        $f64('8010000000000000'));
    returns(
        'copysign_91',
        () =>
            m.$('copysign', [$f64('10000000000000'), $f64('3FF0000000000000')]),
        $f64('10000000000000'));
    returns(
        'copysign_92',
        () => m.$(
            'copysign', [$f64('8010000000000000'), $f64('C01921FB54442D18')]),
        $f64('8010000000000000'));
    returns(
        'copysign_93',
        () => m.$(
            'copysign', [$f64('8010000000000000'), $f64('401921FB54442D18')]),
        $f64('10000000000000'));
    returns(
        'copysign_94',
        () =>
            m.$('copysign', [$f64('10000000000000'), $f64('C01921FB54442D18')]),
        $f64('8010000000000000'));
    returns(
        'copysign_95',
        () =>
            m.$('copysign', [$f64('10000000000000'), $f64('401921FB54442D18')]),
        $f64('10000000000000'));
    returns(
        'copysign_96',
        () => m.$(
            'copysign', [$f64('8010000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('8010000000000000'));
    returns(
        'copysign_97',
        () => m.$(
            'copysign', [$f64('8010000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('10000000000000'));
    returns(
        'copysign_98',
        () =>
            m.$('copysign', [$f64('10000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('8010000000000000'));
    returns(
        'copysign_99',
        () =>
            m.$('copysign', [$f64('10000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('10000000000000'));
    returns(
        'copysign_100',
        () => m.$(
            'copysign', [$f64('8010000000000000'), $f64('FFF0000000000000')]),
        $f64('8010000000000000'));
    returns(
        'copysign_101',
        () => m.$(
            'copysign', [$f64('8010000000000000'), $f64('7FF0000000000000')]),
        $f64('10000000000000'));
    returns(
        'copysign_102',
        () =>
            m.$('copysign', [$f64('10000000000000'), $f64('FFF0000000000000')]),
        $f64('8010000000000000'));
    returns(
        'copysign_103',
        () =>
            m.$('copysign', [$f64('10000000000000'), $f64('7FF0000000000000')]),
        $f64('10000000000000'));
    returns(
      'copysign_104',
      () =>
          m.$('copysign', [$f64('8010000000000000'), $f64('FFF8000000000000')]),
      $f64('8010000000000000'),
      skip: 'failed',
    );
    returns(
        'copysign_105',
        () => m.$(
            'copysign', [$f64('8010000000000000'), $f64('7FF8000000000000')]),
        $f64('10000000000000'));
    returns(
      'copysign_106',
      () => m.$('copysign', [$f64('10000000000000'), $f64('FFF8000000000000')]),
      $f64('8010000000000000'),
      skip: 'failed',
    );
    returns(
        'copysign_107',
        () =>
            m.$('copysign', [$f64('10000000000000'), $f64('7FF8000000000000')]),
        $f64('10000000000000'));
    returns(
        'copysign_108',
        () => m.$(
            'copysign', [$f64('BFE0000000000000'), $f64('8000000000000000')]),
        $f64('BFE0000000000000'));
    returns(
        'copysign_109',
        () => m.$('copysign', [$f64('BFE0000000000000'), $f64('0')]),
        $f64('3FE0000000000000'));
    returns(
        'copysign_110',
        () => m.$(
            'copysign', [$f64('3FE0000000000000'), $f64('8000000000000000')]),
        $f64('BFE0000000000000'));
    returns(
        'copysign_111',
        () => m.$('copysign', [$f64('3FE0000000000000'), $f64('0')]),
        $f64('3FE0000000000000'));
    returns(
        'copysign_112',
        () => m.$(
            'copysign', [$f64('BFE0000000000000'), $f64('8000000000000001')]),
        $f64('BFE0000000000000'));
    returns(
        'copysign_113',
        () => m.$('copysign', [$f64('BFE0000000000000'), $f64('1')]),
        $f64('3FE0000000000000'));
    returns(
        'copysign_114',
        () => m.$(
            'copysign', [$f64('3FE0000000000000'), $f64('8000000000000001')]),
        $f64('BFE0000000000000'));
    returns(
        'copysign_115',
        () => m.$('copysign', [$f64('3FE0000000000000'), $f64('1')]),
        $f64('3FE0000000000000'));
    returns(
        'copysign_116',
        () => m.$(
            'copysign', [$f64('BFE0000000000000'), $f64('8010000000000000')]),
        $f64('BFE0000000000000'));
    returns(
        'copysign_117',
        () =>
            m.$('copysign', [$f64('BFE0000000000000'), $f64('10000000000000')]),
        $f64('3FE0000000000000'));
    returns(
        'copysign_118',
        () => m.$(
            'copysign', [$f64('3FE0000000000000'), $f64('8010000000000000')]),
        $f64('BFE0000000000000'));
    returns(
        'copysign_119',
        () =>
            m.$('copysign', [$f64('3FE0000000000000'), $f64('10000000000000')]),
        $f64('3FE0000000000000'));
    returns(
        'copysign_120',
        () => m.$(
            'copysign', [$f64('BFE0000000000000'), $f64('BFE0000000000000')]),
        $f64('BFE0000000000000'));
    returns(
        'copysign_121',
        () => m.$(
            'copysign', [$f64('BFE0000000000000'), $f64('3FE0000000000000')]),
        $f64('3FE0000000000000'));
    returns(
        'copysign_122',
        () => m.$(
            'copysign', [$f64('3FE0000000000000'), $f64('BFE0000000000000')]),
        $f64('BFE0000000000000'));
    returns(
        'copysign_123',
        () => m.$(
            'copysign', [$f64('3FE0000000000000'), $f64('3FE0000000000000')]),
        $f64('3FE0000000000000'));
    returns(
        'copysign_124',
        () => m.$(
            'copysign', [$f64('BFE0000000000000'), $f64('BFF0000000000000')]),
        $f64('BFE0000000000000'));
    returns(
        'copysign_125',
        () => m.$(
            'copysign', [$f64('BFE0000000000000'), $f64('3FF0000000000000')]),
        $f64('3FE0000000000000'));
    returns(
        'copysign_126',
        () => m.$(
            'copysign', [$f64('3FE0000000000000'), $f64('BFF0000000000000')]),
        $f64('BFE0000000000000'));
    returns(
        'copysign_127',
        () => m.$(
            'copysign', [$f64('3FE0000000000000'), $f64('3FF0000000000000')]),
        $f64('3FE0000000000000'));
    returns(
        'copysign_128',
        () => m.$(
            'copysign', [$f64('BFE0000000000000'), $f64('C01921FB54442D18')]),
        $f64('BFE0000000000000'));
    returns(
        'copysign_129',
        () => m.$(
            'copysign', [$f64('BFE0000000000000'), $f64('401921FB54442D18')]),
        $f64('3FE0000000000000'));
    returns(
        'copysign_130',
        () => m.$(
            'copysign', [$f64('3FE0000000000000'), $f64('C01921FB54442D18')]),
        $f64('BFE0000000000000'));
    returns(
        'copysign_131',
        () => m.$(
            'copysign', [$f64('3FE0000000000000'), $f64('401921FB54442D18')]),
        $f64('3FE0000000000000'));
    returns(
        'copysign_132',
        () => m.$(
            'copysign', [$f64('BFE0000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('BFE0000000000000'));
    returns(
        'copysign_133',
        () => m.$(
            'copysign', [$f64('BFE0000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('3FE0000000000000'));
    returns(
        'copysign_134',
        () => m.$(
            'copysign', [$f64('3FE0000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('BFE0000000000000'));
    returns(
        'copysign_135',
        () => m.$(
            'copysign', [$f64('3FE0000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('3FE0000000000000'));
    returns(
        'copysign_136',
        () => m.$(
            'copysign', [$f64('BFE0000000000000'), $f64('FFF0000000000000')]),
        $f64('BFE0000000000000'));
    returns(
        'copysign_137',
        () => m.$(
            'copysign', [$f64('BFE0000000000000'), $f64('7FF0000000000000')]),
        $f64('3FE0000000000000'));
    returns(
        'copysign_138',
        () => m.$(
            'copysign', [$f64('3FE0000000000000'), $f64('FFF0000000000000')]),
        $f64('BFE0000000000000'));
    returns(
        'copysign_139',
        () => m.$(
            'copysign', [$f64('3FE0000000000000'), $f64('7FF0000000000000')]),
        $f64('3FE0000000000000'));
    returns(
      'copysign_140',
      () =>
          m.$('copysign', [$f64('BFE0000000000000'), $f64('FFF8000000000000')]),
      $f64('BFE0000000000000'),
      skip: 'failed',
    );
    returns(
        'copysign_141',
        () => m.$(
            'copysign', [$f64('BFE0000000000000'), $f64('7FF8000000000000')]),
        $f64('3FE0000000000000'));
    returns(
      'copysign_142',
      () =>
          m.$('copysign', [$f64('3FE0000000000000'), $f64('FFF8000000000000')]),
      $f64('BFE0000000000000'),
      skip: 'failed',
    );
    returns(
        'copysign_143',
        () => m.$(
            'copysign', [$f64('3FE0000000000000'), $f64('7FF8000000000000')]),
        $f64('3FE0000000000000'));
    returns(
        'copysign_144',
        () => m.$(
            'copysign', [$f64('BFF0000000000000'), $f64('8000000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'copysign_145',
        () => m.$('copysign', [$f64('BFF0000000000000'), $f64('0')]),
        $f64('3FF0000000000000'));
    returns(
        'copysign_146',
        () => m.$(
            'copysign', [$f64('3FF0000000000000'), $f64('8000000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'copysign_147',
        () => m.$('copysign', [$f64('3FF0000000000000'), $f64('0')]),
        $f64('3FF0000000000000'));
    returns(
        'copysign_148',
        () => m.$(
            'copysign', [$f64('BFF0000000000000'), $f64('8000000000000001')]),
        $f64('BFF0000000000000'));
    returns(
        'copysign_149',
        () => m.$('copysign', [$f64('BFF0000000000000'), $f64('1')]),
        $f64('3FF0000000000000'));
    returns(
        'copysign_150',
        () => m.$(
            'copysign', [$f64('3FF0000000000000'), $f64('8000000000000001')]),
        $f64('BFF0000000000000'));
    returns(
        'copysign_151',
        () => m.$('copysign', [$f64('3FF0000000000000'), $f64('1')]),
        $f64('3FF0000000000000'));
    returns(
        'copysign_152',
        () => m.$(
            'copysign', [$f64('BFF0000000000000'), $f64('8010000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'copysign_153',
        () =>
            m.$('copysign', [$f64('BFF0000000000000'), $f64('10000000000000')]),
        $f64('3FF0000000000000'));
    returns(
        'copysign_154',
        () => m.$(
            'copysign', [$f64('3FF0000000000000'), $f64('8010000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'copysign_155',
        () =>
            m.$('copysign', [$f64('3FF0000000000000'), $f64('10000000000000')]),
        $f64('3FF0000000000000'));
    returns(
        'copysign_156',
        () => m.$(
            'copysign', [$f64('BFF0000000000000'), $f64('BFE0000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'copysign_157',
        () => m.$(
            'copysign', [$f64('BFF0000000000000'), $f64('3FE0000000000000')]),
        $f64('3FF0000000000000'));
    returns(
        'copysign_158',
        () => m.$(
            'copysign', [$f64('3FF0000000000000'), $f64('BFE0000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'copysign_159',
        () => m.$(
            'copysign', [$f64('3FF0000000000000'), $f64('3FE0000000000000')]),
        $f64('3FF0000000000000'));
    returns(
        'copysign_160',
        () => m.$(
            'copysign', [$f64('BFF0000000000000'), $f64('BFF0000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'copysign_161',
        () => m.$(
            'copysign', [$f64('BFF0000000000000'), $f64('3FF0000000000000')]),
        $f64('3FF0000000000000'));
    returns(
        'copysign_162',
        () => m.$(
            'copysign', [$f64('3FF0000000000000'), $f64('BFF0000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'copysign_163',
        () => m.$(
            'copysign', [$f64('3FF0000000000000'), $f64('3FF0000000000000')]),
        $f64('3FF0000000000000'));
    returns(
        'copysign_164',
        () => m.$(
            'copysign', [$f64('BFF0000000000000'), $f64('C01921FB54442D18')]),
        $f64('BFF0000000000000'));
    returns(
        'copysign_165',
        () => m.$(
            'copysign', [$f64('BFF0000000000000'), $f64('401921FB54442D18')]),
        $f64('3FF0000000000000'));
    returns(
        'copysign_166',
        () => m.$(
            'copysign', [$f64('3FF0000000000000'), $f64('C01921FB54442D18')]),
        $f64('BFF0000000000000'));
    returns(
        'copysign_167',
        () => m.$(
            'copysign', [$f64('3FF0000000000000'), $f64('401921FB54442D18')]),
        $f64('3FF0000000000000'));
    returns(
        'copysign_168',
        () => m.$(
            'copysign', [$f64('BFF0000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('BFF0000000000000'));
    returns(
        'copysign_169',
        () => m.$(
            'copysign', [$f64('BFF0000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('3FF0000000000000'));
    returns(
        'copysign_170',
        () => m.$(
            'copysign', [$f64('3FF0000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('BFF0000000000000'));
    returns(
        'copysign_171',
        () => m.$(
            'copysign', [$f64('3FF0000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('3FF0000000000000'));
    returns(
        'copysign_172',
        () => m.$(
            'copysign', [$f64('BFF0000000000000'), $f64('FFF0000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'copysign_173',
        () => m.$(
            'copysign', [$f64('BFF0000000000000'), $f64('7FF0000000000000')]),
        $f64('3FF0000000000000'));
    returns(
        'copysign_174',
        () => m.$(
            'copysign', [$f64('3FF0000000000000'), $f64('FFF0000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'copysign_175',
        () => m.$(
            'copysign', [$f64('3FF0000000000000'), $f64('7FF0000000000000')]),
        $f64('3FF0000000000000'));
    returns(
      'copysign_176',
      () =>
          m.$('copysign', [$f64('BFF0000000000000'), $f64('FFF8000000000000')]),
      $f64('BFF0000000000000'),
      skip: 'failed',
    );
    returns(
        'copysign_177',
        () => m.$(
            'copysign', [$f64('BFF0000000000000'), $f64('7FF8000000000000')]),
        $f64('3FF0000000000000'));
    returns(
      'copysign_178',
      () =>
          m.$('copysign', [$f64('3FF0000000000000'), $f64('FFF8000000000000')]),
      $f64('BFF0000000000000'),
      skip: 'failed',
    );
    returns(
        'copysign_179',
        () => m.$(
            'copysign', [$f64('3FF0000000000000'), $f64('7FF8000000000000')]),
        $f64('3FF0000000000000'));
    returns(
        'copysign_180',
        () => m.$(
            'copysign', [$f64('C01921FB54442D18'), $f64('8000000000000000')]),
        $f64('C01921FB54442D18'));
    returns(
        'copysign_181',
        () => m.$('copysign', [$f64('C01921FB54442D18'), $f64('0')]),
        $f64('401921FB54442D18'));
    returns(
        'copysign_182',
        () => m.$(
            'copysign', [$f64('401921FB54442D18'), $f64('8000000000000000')]),
        $f64('C01921FB54442D18'));
    returns(
        'copysign_183',
        () => m.$('copysign', [$f64('401921FB54442D18'), $f64('0')]),
        $f64('401921FB54442D18'));
    returns(
        'copysign_184',
        () => m.$(
            'copysign', [$f64('C01921FB54442D18'), $f64('8000000000000001')]),
        $f64('C01921FB54442D18'));
    returns(
        'copysign_185',
        () => m.$('copysign', [$f64('C01921FB54442D18'), $f64('1')]),
        $f64('401921FB54442D18'));
    returns(
        'copysign_186',
        () => m.$(
            'copysign', [$f64('401921FB54442D18'), $f64('8000000000000001')]),
        $f64('C01921FB54442D18'));
    returns(
        'copysign_187',
        () => m.$('copysign', [$f64('401921FB54442D18'), $f64('1')]),
        $f64('401921FB54442D18'));
    returns(
        'copysign_188',
        () => m.$(
            'copysign', [$f64('C01921FB54442D18'), $f64('8010000000000000')]),
        $f64('C01921FB54442D18'));
    returns(
        'copysign_189',
        () =>
            m.$('copysign', [$f64('C01921FB54442D18'), $f64('10000000000000')]),
        $f64('401921FB54442D18'));
    returns(
        'copysign_190',
        () => m.$(
            'copysign', [$f64('401921FB54442D18'), $f64('8010000000000000')]),
        $f64('C01921FB54442D18'));
    returns(
        'copysign_191',
        () =>
            m.$('copysign', [$f64('401921FB54442D18'), $f64('10000000000000')]),
        $f64('401921FB54442D18'));
    returns(
        'copysign_192',
        () => m.$(
            'copysign', [$f64('C01921FB54442D18'), $f64('BFE0000000000000')]),
        $f64('C01921FB54442D18'));
    returns(
        'copysign_193',
        () => m.$(
            'copysign', [$f64('C01921FB54442D18'), $f64('3FE0000000000000')]),
        $f64('401921FB54442D18'));
    returns(
        'copysign_194',
        () => m.$(
            'copysign', [$f64('401921FB54442D18'), $f64('BFE0000000000000')]),
        $f64('C01921FB54442D18'));
    returns(
        'copysign_195',
        () => m.$(
            'copysign', [$f64('401921FB54442D18'), $f64('3FE0000000000000')]),
        $f64('401921FB54442D18'));
    returns(
        'copysign_196',
        () => m.$(
            'copysign', [$f64('C01921FB54442D18'), $f64('BFF0000000000000')]),
        $f64('C01921FB54442D18'));
    returns(
        'copysign_197',
        () => m.$(
            'copysign', [$f64('C01921FB54442D18'), $f64('3FF0000000000000')]),
        $f64('401921FB54442D18'));
    returns(
        'copysign_198',
        () => m.$(
            'copysign', [$f64('401921FB54442D18'), $f64('BFF0000000000000')]),
        $f64('C01921FB54442D18'));
    returns(
        'copysign_199',
        () => m.$(
            'copysign', [$f64('401921FB54442D18'), $f64('3FF0000000000000')]),
        $f64('401921FB54442D18'));
    returns(
        'copysign_200',
        () => m.$(
            'copysign', [$f64('C01921FB54442D18'), $f64('C01921FB54442D18')]),
        $f64('C01921FB54442D18'));
    returns(
        'copysign_201',
        () => m.$(
            'copysign', [$f64('C01921FB54442D18'), $f64('401921FB54442D18')]),
        $f64('401921FB54442D18'));
    returns(
        'copysign_202',
        () => m.$(
            'copysign', [$f64('401921FB54442D18'), $f64('C01921FB54442D18')]),
        $f64('C01921FB54442D18'));
    returns(
        'copysign_203',
        () => m.$(
            'copysign', [$f64('401921FB54442D18'), $f64('401921FB54442D18')]),
        $f64('401921FB54442D18'));
    returns(
        'copysign_204',
        () => m.$(
            'copysign', [$f64('C01921FB54442D18'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('C01921FB54442D18'));
    returns(
        'copysign_205',
        () => m.$(
            'copysign', [$f64('C01921FB54442D18'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('401921FB54442D18'));
    returns(
        'copysign_206',
        () => m.$(
            'copysign', [$f64('401921FB54442D18'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('C01921FB54442D18'));
    returns(
        'copysign_207',
        () => m.$(
            'copysign', [$f64('401921FB54442D18'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('401921FB54442D18'));
    returns(
        'copysign_208',
        () => m.$(
            'copysign', [$f64('C01921FB54442D18'), $f64('FFF0000000000000')]),
        $f64('C01921FB54442D18'));
    returns(
        'copysign_209',
        () => m.$(
            'copysign', [$f64('C01921FB54442D18'), $f64('7FF0000000000000')]),
        $f64('401921FB54442D18'));
    returns(
        'copysign_210',
        () => m.$(
            'copysign', [$f64('401921FB54442D18'), $f64('FFF0000000000000')]),
        $f64('C01921FB54442D18'));
    returns(
        'copysign_211',
        () => m.$(
            'copysign', [$f64('401921FB54442D18'), $f64('7FF0000000000000')]),
        $f64('401921FB54442D18'));
    returns(
      'copysign_212',
      () =>
          m.$('copysign', [$f64('C01921FB54442D18'), $f64('FFF8000000000000')]),
      $f64('C01921FB54442D18'),
      skip: 'failed',
    );
    returns(
        'copysign_213',
        () => m.$(
            'copysign', [$f64('C01921FB54442D18'), $f64('7FF8000000000000')]),
        $f64('401921FB54442D18'));
    returns(
      'copysign_214',
      () =>
          m.$('copysign', [$f64('401921FB54442D18'), $f64('FFF8000000000000')]),
      $f64('C01921FB54442D18'),
      skip: 'failed',
    );
    returns(
        'copysign_215',
        () => m.$(
            'copysign', [$f64('401921FB54442D18'), $f64('7FF8000000000000')]),
        $f64('401921FB54442D18'));
    returns(
        'copysign_216',
        () => m.$(
            'copysign', [$f64('FFEFFFFFFFFFFFFF'), $f64('8000000000000000')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'copysign_217',
        () => m.$('copysign', [$f64('FFEFFFFFFFFFFFFF'), $f64('0')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'copysign_218',
        () => m.$(
            'copysign', [$f64('7FEFFFFFFFFFFFFF'), $f64('8000000000000000')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'copysign_219',
        () => m.$('copysign', [$f64('7FEFFFFFFFFFFFFF'), $f64('0')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'copysign_220',
        () => m.$(
            'copysign', [$f64('FFEFFFFFFFFFFFFF'), $f64('8000000000000001')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'copysign_221',
        () => m.$('copysign', [$f64('FFEFFFFFFFFFFFFF'), $f64('1')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'copysign_222',
        () => m.$(
            'copysign', [$f64('7FEFFFFFFFFFFFFF'), $f64('8000000000000001')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'copysign_223',
        () => m.$('copysign', [$f64('7FEFFFFFFFFFFFFF'), $f64('1')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'copysign_224',
        () => m.$(
            'copysign', [$f64('FFEFFFFFFFFFFFFF'), $f64('8010000000000000')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'copysign_225',
        () =>
            m.$('copysign', [$f64('FFEFFFFFFFFFFFFF'), $f64('10000000000000')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'copysign_226',
        () => m.$(
            'copysign', [$f64('7FEFFFFFFFFFFFFF'), $f64('8010000000000000')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'copysign_227',
        () =>
            m.$('copysign', [$f64('7FEFFFFFFFFFFFFF'), $f64('10000000000000')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'copysign_228',
        () => m.$(
            'copysign', [$f64('FFEFFFFFFFFFFFFF'), $f64('BFE0000000000000')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'copysign_229',
        () => m.$(
            'copysign', [$f64('FFEFFFFFFFFFFFFF'), $f64('3FE0000000000000')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'copysign_230',
        () => m.$(
            'copysign', [$f64('7FEFFFFFFFFFFFFF'), $f64('BFE0000000000000')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'copysign_231',
        () => m.$(
            'copysign', [$f64('7FEFFFFFFFFFFFFF'), $f64('3FE0000000000000')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'copysign_232',
        () => m.$(
            'copysign', [$f64('FFEFFFFFFFFFFFFF'), $f64('BFF0000000000000')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'copysign_233',
        () => m.$(
            'copysign', [$f64('FFEFFFFFFFFFFFFF'), $f64('3FF0000000000000')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'copysign_234',
        () => m.$(
            'copysign', [$f64('7FEFFFFFFFFFFFFF'), $f64('BFF0000000000000')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'copysign_235',
        () => m.$(
            'copysign', [$f64('7FEFFFFFFFFFFFFF'), $f64('3FF0000000000000')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'copysign_236',
        () => m.$(
            'copysign', [$f64('FFEFFFFFFFFFFFFF'), $f64('C01921FB54442D18')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'copysign_237',
        () => m.$(
            'copysign', [$f64('FFEFFFFFFFFFFFFF'), $f64('401921FB54442D18')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'copysign_238',
        () => m.$(
            'copysign', [$f64('7FEFFFFFFFFFFFFF'), $f64('C01921FB54442D18')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'copysign_239',
        () => m.$(
            'copysign', [$f64('7FEFFFFFFFFFFFFF'), $f64('401921FB54442D18')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'copysign_240',
        () => m.$(
            'copysign', [$f64('FFEFFFFFFFFFFFFF'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'copysign_241',
        () => m.$(
            'copysign', [$f64('FFEFFFFFFFFFFFFF'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'copysign_242',
        () => m.$(
            'copysign', [$f64('7FEFFFFFFFFFFFFF'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'copysign_243',
        () => m.$(
            'copysign', [$f64('7FEFFFFFFFFFFFFF'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'copysign_244',
        () => m.$(
            'copysign', [$f64('FFEFFFFFFFFFFFFF'), $f64('FFF0000000000000')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'copysign_245',
        () => m.$(
            'copysign', [$f64('FFEFFFFFFFFFFFFF'), $f64('7FF0000000000000')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'copysign_246',
        () => m.$(
            'copysign', [$f64('7FEFFFFFFFFFFFFF'), $f64('FFF0000000000000')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'copysign_247',
        () => m.$(
            'copysign', [$f64('7FEFFFFFFFFFFFFF'), $f64('7FF0000000000000')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
      'copysign_248',
      () =>
          m.$('copysign', [$f64('FFEFFFFFFFFFFFFF'), $f64('FFF8000000000000')]),
      $f64('FFEFFFFFFFFFFFFF'),
      skip: 'failed',
    );
    returns(
        'copysign_249',
        () => m.$(
            'copysign', [$f64('FFEFFFFFFFFFFFFF'), $f64('7FF8000000000000')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
      'copysign_250',
      () =>
          m.$('copysign', [$f64('7FEFFFFFFFFFFFFF'), $f64('FFF8000000000000')]),
      $f64('FFEFFFFFFFFFFFFF'),
      skip: 'failed',
    );
    returns(
        'copysign_251',
        () => m.$(
            'copysign', [$f64('7FEFFFFFFFFFFFFF'), $f64('7FF8000000000000')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'copysign_252',
        () => m.$(
            'copysign', [$f64('FFF0000000000000'), $f64('8000000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'copysign_253',
        () => m.$('copysign', [$f64('FFF0000000000000'), $f64('0')]),
        $f64('7FF0000000000000'));
    returns(
        'copysign_254',
        () => m.$(
            'copysign', [$f64('7FF0000000000000'), $f64('8000000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'copysign_255',
        () => m.$('copysign', [$f64('7FF0000000000000'), $f64('0')]),
        $f64('7FF0000000000000'));
    returns(
        'copysign_256',
        () => m.$(
            'copysign', [$f64('FFF0000000000000'), $f64('8000000000000001')]),
        $f64('FFF0000000000000'));
    returns(
        'copysign_257',
        () => m.$('copysign', [$f64('FFF0000000000000'), $f64('1')]),
        $f64('7FF0000000000000'));
    returns(
        'copysign_258',
        () => m.$(
            'copysign', [$f64('7FF0000000000000'), $f64('8000000000000001')]),
        $f64('FFF0000000000000'));
    returns(
        'copysign_259',
        () => m.$('copysign', [$f64('7FF0000000000000'), $f64('1')]),
        $f64('7FF0000000000000'));
    returns(
        'copysign_260',
        () => m.$(
            'copysign', [$f64('FFF0000000000000'), $f64('8010000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'copysign_261',
        () =>
            m.$('copysign', [$f64('FFF0000000000000'), $f64('10000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'copysign_262',
        () => m.$(
            'copysign', [$f64('7FF0000000000000'), $f64('8010000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'copysign_263',
        () =>
            m.$('copysign', [$f64('7FF0000000000000'), $f64('10000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'copysign_264',
        () => m.$(
            'copysign', [$f64('FFF0000000000000'), $f64('BFE0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'copysign_265',
        () => m.$(
            'copysign', [$f64('FFF0000000000000'), $f64('3FE0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'copysign_266',
        () => m.$(
            'copysign', [$f64('7FF0000000000000'), $f64('BFE0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'copysign_267',
        () => m.$(
            'copysign', [$f64('7FF0000000000000'), $f64('3FE0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'copysign_268',
        () => m.$(
            'copysign', [$f64('FFF0000000000000'), $f64('BFF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'copysign_269',
        () => m.$(
            'copysign', [$f64('FFF0000000000000'), $f64('3FF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'copysign_270',
        () => m.$(
            'copysign', [$f64('7FF0000000000000'), $f64('BFF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'copysign_271',
        () => m.$(
            'copysign', [$f64('7FF0000000000000'), $f64('3FF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'copysign_272',
        () => m.$(
            'copysign', [$f64('FFF0000000000000'), $f64('C01921FB54442D18')]),
        $f64('FFF0000000000000'));
    returns(
        'copysign_273',
        () => m.$(
            'copysign', [$f64('FFF0000000000000'), $f64('401921FB54442D18')]),
        $f64('7FF0000000000000'));
    returns(
        'copysign_274',
        () => m.$(
            'copysign', [$f64('7FF0000000000000'), $f64('C01921FB54442D18')]),
        $f64('FFF0000000000000'));
    returns(
        'copysign_275',
        () => m.$(
            'copysign', [$f64('7FF0000000000000'), $f64('401921FB54442D18')]),
        $f64('7FF0000000000000'));
    returns(
        'copysign_276',
        () => m.$(
            'copysign', [$f64('FFF0000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('FFF0000000000000'));
    returns(
        'copysign_277',
        () => m.$(
            'copysign', [$f64('FFF0000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('7FF0000000000000'));
    returns(
        'copysign_278',
        () => m.$(
            'copysign', [$f64('7FF0000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('FFF0000000000000'));
    returns(
        'copysign_279',
        () => m.$(
            'copysign', [$f64('7FF0000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('7FF0000000000000'));
    returns(
        'copysign_280',
        () => m.$(
            'copysign', [$f64('FFF0000000000000'), $f64('FFF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'copysign_281',
        () => m.$(
            'copysign', [$f64('FFF0000000000000'), $f64('7FF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'copysign_282',
        () => m.$(
            'copysign', [$f64('7FF0000000000000'), $f64('FFF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'copysign_283',
        () => m.$(
            'copysign', [$f64('7FF0000000000000'), $f64('7FF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
      'copysign_284',
      () =>
          m.$('copysign', [$f64('FFF0000000000000'), $f64('FFF8000000000000')]),
      $f64('FFF0000000000000'),
      skip: 'failed',
    );
    returns(
        'copysign_285',
        () => m.$(
            'copysign', [$f64('FFF0000000000000'), $f64('7FF8000000000000')]),
        $f64('7FF0000000000000'));
    returns(
      'copysign_286',
      () =>
          m.$('copysign', [$f64('7FF0000000000000'), $f64('FFF8000000000000')]),
      $f64('FFF0000000000000'),
      skip: 'failed',
    );
    returns(
        'copysign_287',
        () => m.$(
            'copysign', [$f64('7FF0000000000000'), $f64('7FF8000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'copysign_288',
        () => m.$(
            'copysign', [$f64('FFF8000000000000'), $f64('8000000000000000')]),
        $f64('FFF8000000000000'));
    returns(
        'copysign_289',
        () => m.$('copysign', [$f64('FFF8000000000000'), $f64('0')]),
        $f64('7FF8000000000000'));
    returns(
        'copysign_290',
        () => m.$(
            'copysign', [$f64('7FF8000000000000'), $f64('8000000000000000')]),
        $f64('FFF8000000000000'));
    returns(
        'copysign_291',
        () => m.$('copysign', [$f64('7FF8000000000000'), $f64('0')]),
        $f64('7FF8000000000000'));
    returns(
        'copysign_292',
        () => m.$(
            'copysign', [$f64('FFF8000000000000'), $f64('8000000000000001')]),
        $f64('FFF8000000000000'));
    returns(
        'copysign_293',
        () => m.$('copysign', [$f64('FFF8000000000000'), $f64('1')]),
        $f64('7FF8000000000000'));
    returns(
        'copysign_294',
        () => m.$(
            'copysign', [$f64('7FF8000000000000'), $f64('8000000000000001')]),
        $f64('FFF8000000000000'));
    returns(
        'copysign_295',
        () => m.$('copysign', [$f64('7FF8000000000000'), $f64('1')]),
        $f64('7FF8000000000000'));
    returns(
        'copysign_296',
        () => m.$(
            'copysign', [$f64('FFF8000000000000'), $f64('8010000000000000')]),
        $f64('FFF8000000000000'));
    returns(
        'copysign_297',
        () =>
            m.$('copysign', [$f64('FFF8000000000000'), $f64('10000000000000')]),
        $f64('7FF8000000000000'));
    returns(
        'copysign_298',
        () => m.$(
            'copysign', [$f64('7FF8000000000000'), $f64('8010000000000000')]),
        $f64('FFF8000000000000'));
    returns(
        'copysign_299',
        () =>
            m.$('copysign', [$f64('7FF8000000000000'), $f64('10000000000000')]),
        $f64('7FF8000000000000'));
    returns(
        'copysign_300',
        () => m.$(
            'copysign', [$f64('FFF8000000000000'), $f64('BFE0000000000000')]),
        $f64('FFF8000000000000'));
    returns(
        'copysign_301',
        () => m.$(
            'copysign', [$f64('FFF8000000000000'), $f64('3FE0000000000000')]),
        $f64('7FF8000000000000'));
    returns(
        'copysign_302',
        () => m.$(
            'copysign', [$f64('7FF8000000000000'), $f64('BFE0000000000000')]),
        $f64('FFF8000000000000'));
    returns(
        'copysign_303',
        () => m.$(
            'copysign', [$f64('7FF8000000000000'), $f64('3FE0000000000000')]),
        $f64('7FF8000000000000'));
    returns(
        'copysign_304',
        () => m.$(
            'copysign', [$f64('FFF8000000000000'), $f64('BFF0000000000000')]),
        $f64('FFF8000000000000'));
    returns(
        'copysign_305',
        () => m.$(
            'copysign', [$f64('FFF8000000000000'), $f64('3FF0000000000000')]),
        $f64('7FF8000000000000'));
    returns(
        'copysign_306',
        () => m.$(
            'copysign', [$f64('7FF8000000000000'), $f64('BFF0000000000000')]),
        $f64('FFF8000000000000'));
    returns(
        'copysign_307',
        () => m.$(
            'copysign', [$f64('7FF8000000000000'), $f64('3FF0000000000000')]),
        $f64('7FF8000000000000'));
    returns(
        'copysign_308',
        () => m.$(
            'copysign', [$f64('FFF8000000000000'), $f64('C01921FB54442D18')]),
        $f64('FFF8000000000000'));
    returns(
        'copysign_309',
        () => m.$(
            'copysign', [$f64('FFF8000000000000'), $f64('401921FB54442D18')]),
        $f64('7FF8000000000000'));
    returns(
        'copysign_310',
        () => m.$(
            'copysign', [$f64('7FF8000000000000'), $f64('C01921FB54442D18')]),
        $f64('FFF8000000000000'));
    returns(
        'copysign_311',
        () => m.$(
            'copysign', [$f64('7FF8000000000000'), $f64('401921FB54442D18')]),
        $f64('7FF8000000000000'));
    returns(
        'copysign_312',
        () => m.$(
            'copysign', [$f64('FFF8000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('FFF8000000000000'));
    returns(
        'copysign_313',
        () => m.$(
            'copysign', [$f64('FFF8000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('7FF8000000000000'));
    returns(
        'copysign_314',
        () => m.$(
            'copysign', [$f64('7FF8000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('FFF8000000000000'));
    returns(
        'copysign_315',
        () => m.$(
            'copysign', [$f64('7FF8000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('7FF8000000000000'));
    returns(
        'copysign_316',
        () => m.$(
            'copysign', [$f64('FFF8000000000000'), $f64('FFF0000000000000')]),
        $f64('FFF8000000000000'));
    returns(
        'copysign_317',
        () => m.$(
            'copysign', [$f64('FFF8000000000000'), $f64('7FF0000000000000')]),
        $f64('7FF8000000000000'));
    returns(
        'copysign_318',
        () => m.$(
            'copysign', [$f64('7FF8000000000000'), $f64('FFF0000000000000')]),
        $f64('FFF8000000000000'));
    returns(
        'copysign_319',
        () => m.$(
            'copysign', [$f64('7FF8000000000000'), $f64('7FF0000000000000')]),
        $f64('7FF8000000000000'));
    returns(
        'copysign_320',
        () => m.$(
            'copysign', [$f64('FFF8000000000000'), $f64('FFF8000000000000')]),
        $f64('FFF8000000000000'));
    returns(
        'copysign_321',
        () => m.$(
            'copysign', [$f64('FFF8000000000000'), $f64('7FF8000000000000')]),
        $f64('7FF8000000000000'));
    returns(
        'copysign_322',
        () => m.$(
            'copysign', [$f64('7FF8000000000000'), $f64('FFF8000000000000')]),
        $f64('FFF8000000000000'));
    returns(
        'copysign_323',
        () => m.$(
            'copysign', [$f64('7FF8000000000000'), $f64('7FF8000000000000')]),
        $f64('7FF8000000000000'));
    returns('abs_0', () => m.$('abs', [$f64('8000000000000000')]), $f64('0'));
    returns('abs_1', () => m.$('abs', [$f64('0')]), $f64('0'));
    returns('abs_2', () => m.$('abs', [$f64('8000000000000001')]), $f64('1'));
    returns('abs_3', () => m.$('abs', [$f64('1')]), $f64('1'));
    returns('abs_4', () => m.$('abs', [$f64('8010000000000000')]),
        $f64('10000000000000'));
    returns('abs_5', () => m.$('abs', [$f64('10000000000000')]),
        $f64('10000000000000'));
    returns('abs_6', () => m.$('abs', [$f64('BFE0000000000000')]),
        $f64('3FE0000000000000'));
    returns('abs_7', () => m.$('abs', [$f64('3FE0000000000000')]),
        $f64('3FE0000000000000'));
    returns('abs_8', () => m.$('abs', [$f64('BFF0000000000000')]),
        $f64('3FF0000000000000'));
    returns('abs_9', () => m.$('abs', [$f64('3FF0000000000000')]),
        $f64('3FF0000000000000'));
    returns('abs_10', () => m.$('abs', [$f64('C01921FB54442D18')]),
        $f64('401921FB54442D18'));
    returns('abs_11', () => m.$('abs', [$f64('401921FB54442D18')]),
        $f64('401921FB54442D18'));
    returns('abs_12', () => m.$('abs', [$f64('FFEFFFFFFFFFFFFF')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns('abs_13', () => m.$('abs', [$f64('7FEFFFFFFFFFFFFF')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns('abs_14', () => m.$('abs', [$f64('FFF0000000000000')]),
        $f64('7FF0000000000000'));
    returns('abs_15', () => m.$('abs', [$f64('7FF0000000000000')]),
        $f64('7FF0000000000000'));
    returns('abs_16', () => m.$('abs', [$f64('FFF8000000000000')]),
        $f64('7FF8000000000000'));
    returns('abs_17', () => m.$('abs', [$f64('7FF8000000000000')]),
        $f64('7FF8000000000000'));
    returns('neg_0', () => m.$('neg', [$f64('8000000000000000')]), $f64('0'));
    returns('neg_1', () => m.$('neg', [$f64('0')]), $f64('8000000000000000'));
    returns('neg_2', () => m.$('neg', [$f64('8000000000000001')]), $f64('1'));
    returns('neg_3', () => m.$('neg', [$f64('1')]), $f64('8000000000000001'));
    returns('neg_4', () => m.$('neg', [$f64('8010000000000000')]),
        $f64('10000000000000'));
    returns('neg_5', () => m.$('neg', [$f64('10000000000000')]),
        $f64('8010000000000000'));
    returns('neg_6', () => m.$('neg', [$f64('BFE0000000000000')]),
        $f64('3FE0000000000000'));
    returns('neg_7', () => m.$('neg', [$f64('3FE0000000000000')]),
        $f64('BFE0000000000000'));
    returns('neg_8', () => m.$('neg', [$f64('BFF0000000000000')]),
        $f64('3FF0000000000000'));
    returns('neg_9', () => m.$('neg', [$f64('3FF0000000000000')]),
        $f64('BFF0000000000000'));
    returns('neg_10', () => m.$('neg', [$f64('C01921FB54442D18')]),
        $f64('401921FB54442D18'));
    returns('neg_11', () => m.$('neg', [$f64('401921FB54442D18')]),
        $f64('C01921FB54442D18'));
    returns('neg_12', () => m.$('neg', [$f64('FFEFFFFFFFFFFFFF')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns('neg_13', () => m.$('neg', [$f64('7FEFFFFFFFFFFFFF')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns('neg_14', () => m.$('neg', [$f64('FFF0000000000000')]),
        $f64('7FF0000000000000'));
    returns('neg_15', () => m.$('neg', [$f64('7FF0000000000000')]),
        $f64('FFF0000000000000'));
    returns('neg_16', () => m.$('neg', [$f64('FFF8000000000000')]),
        $f64('7FF8000000000000'));
    returns('neg_17', () => m.$('neg', [$f64('7FF8000000000000')]),
        $f64('FFF8000000000000'));
  });

  // assertInvalid('invalid f64_bitwise.1.wasm', 'f64_bitwise/f64_bitwise.1.wasm', 'type mismatch');
  // assertInvalid('invalid f64_bitwise.2.wasm', 'f64_bitwise/f64_bitwise.2.wasm', 'type mismatch');
  // assertInvalid('invalid f64_bitwise.3.wasm', 'f64_bitwise/f64_bitwise.3.wasm', 'type mismatch');
}
