// Generated from spec/test/core/f64.wast.

import 'dart:io';
import 'package:test/test.dart';
import 'package:wasmi/format.dart';
import '_framework.dart';

void main() {
  group('f64.0.wasm', () {
    late Module m;

    setUpAll(() {
      m = Module.parse(File('test/spec/f64/f64.0.wasm'));
    });

    returns(
        'add_0',
        () =>
            m.call('add', [$f64('8000000000000000'), $f64('8000000000000000')]),
        $f64('8000000000000000'));
    returns('add_1', () => m.call('add', [$f64('8000000000000000'), $f64('0')]),
        $f64('0'));
    returns('add_2', () => m.call('add', [$f64('0'), $f64('8000000000000000')]),
        $f64('0'));
    returns('add_3', () => m.call('add', [$f64('0'), $f64('0')]), $f64('0'));
    returns(
        'add_4',
        () =>
            m.call('add', [$f64('8000000000000000'), $f64('8000000000000001')]),
        $f64('8000000000000001'));
    returns('add_5', () => m.call('add', [$f64('8000000000000000'), $f64('1')]),
        $f64('1'));
    returns('add_6', () => m.call('add', [$f64('0'), $f64('8000000000000001')]),
        $f64('8000000000000001'));
    returns('add_7', () => m.call('add', [$f64('0'), $f64('1')]), $f64('1'));
    returns(
        'add_8',
        () =>
            m.call('add', [$f64('8000000000000000'), $f64('8010000000000000')]),
        $f64('8010000000000000'));
    returns(
        'add_9',
        () => m.call('add', [$f64('8000000000000000'), $f64('10000000000000')]),
        $f64('10000000000000'));
    returns(
        'add_10',
        () => m.call('add', [$f64('0'), $f64('8010000000000000')]),
        $f64('8010000000000000'));
    returns('add_11', () => m.call('add', [$f64('0'), $f64('10000000000000')]),
        $f64('10000000000000'));
    returns(
        'add_12',
        () =>
            m.call('add', [$f64('8000000000000000'), $f64('BFE0000000000000')]),
        $f64('BFE0000000000000'));
    returns(
        'add_13',
        () =>
            m.call('add', [$f64('8000000000000000'), $f64('3FE0000000000000')]),
        $f64('3FE0000000000000'));
    returns(
        'add_14',
        () => m.call('add', [$f64('0'), $f64('BFE0000000000000')]),
        $f64('BFE0000000000000'));
    returns(
        'add_15',
        () => m.call('add', [$f64('0'), $f64('3FE0000000000000')]),
        $f64('3FE0000000000000'));
    returns(
        'add_16',
        () =>
            m.call('add', [$f64('8000000000000000'), $f64('BFF0000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'add_17',
        () =>
            m.call('add', [$f64('8000000000000000'), $f64('3FF0000000000000')]),
        $f64('3FF0000000000000'));
    returns(
        'add_18',
        () => m.call('add', [$f64('0'), $f64('BFF0000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'add_19',
        () => m.call('add', [$f64('0'), $f64('3FF0000000000000')]),
        $f64('3FF0000000000000'));
    returns(
        'add_20',
        () =>
            m.call('add', [$f64('8000000000000000'), $f64('C01921FB54442D18')]),
        $f64('C01921FB54442D18'));
    returns(
        'add_21',
        () =>
            m.call('add', [$f64('8000000000000000'), $f64('401921FB54442D18')]),
        $f64('401921FB54442D18'));
    returns(
        'add_22',
        () => m.call('add', [$f64('0'), $f64('C01921FB54442D18')]),
        $f64('C01921FB54442D18'));
    returns(
        'add_23',
        () => m.call('add', [$f64('0'), $f64('401921FB54442D18')]),
        $f64('401921FB54442D18'));
    returns(
        'add_24',
        () =>
            m.call('add', [$f64('8000000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'add_25',
        () =>
            m.call('add', [$f64('8000000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'add_26',
        () => m.call('add', [$f64('0'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'add_27',
        () => m.call('add', [$f64('0'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'add_28',
        () =>
            m.call('add', [$f64('8000000000000000'), $f64('FFF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'add_29',
        () =>
            m.call('add', [$f64('8000000000000000'), $f64('7FF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'add_30',
        () => m.call('add', [$f64('0'), $f64('FFF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'add_31',
        () => m.call('add', [$f64('0'), $f64('7FF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'add_32',
        () =>
            m.call('add', [$f64('8000000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'add_33',
        () =>
            m.call('add', [$f64('8000000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'add_34',
        () =>
            m.call('add', [$f64('8000000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'add_35',
        () =>
            m.call('add', [$f64('8000000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns('add_36',
        () => m.call('add', [$f64('0'), $f64('FFF8000000000000')]), double.nan);
    returns('add_37',
        () => m.call('add', [$f64('0'), $f64('FFF4000000000000')]), double.nan);
    returns('add_38',
        () => m.call('add', [$f64('0'), $f64('7FF8000000000000')]), double.nan);
    returns('add_39',
        () => m.call('add', [$f64('0'), $f64('7FF4000000000000')]), double.nan);
    returns(
        'add_40',
        () =>
            m.call('add', [$f64('8000000000000001'), $f64('8000000000000000')]),
        $f64('8000000000000001'));
    returns(
        'add_41',
        () => m.call('add', [$f64('8000000000000001'), $f64('0')]),
        $f64('8000000000000001'));
    returns('add_42',
        () => m.call('add', [$f64('1'), $f64('8000000000000000')]), $f64('1'));
    returns('add_43', () => m.call('add', [$f64('1'), $f64('0')]), $f64('1'));
    returns(
        'add_44',
        () =>
            m.call('add', [$f64('8000000000000001'), $f64('8000000000000001')]),
        $f64('8000000000000002'));
    returns('add_45',
        () => m.call('add', [$f64('8000000000000001'), $f64('1')]), $f64('0'));
    returns('add_46',
        () => m.call('add', [$f64('1'), $f64('8000000000000001')]), $f64('0'));
    returns('add_47', () => m.call('add', [$f64('1'), $f64('1')]), $f64('2'));
    returns(
        'add_48',
        () =>
            m.call('add', [$f64('8000000000000001'), $f64('8010000000000000')]),
        $f64('8010000000000001'));
    returns(
        'add_49',
        () => m.call('add', [$f64('8000000000000001'), $f64('10000000000000')]),
        $f64('FFFFFFFFFFFFF'));
    returns(
        'add_50',
        () => m.call('add', [$f64('1'), $f64('8010000000000000')]),
        $f64('800FFFFFFFFFFFFF'));
    returns('add_51', () => m.call('add', [$f64('1'), $f64('10000000000000')]),
        $f64('10000000000001'));
    returns(
        'add_52',
        () =>
            m.call('add', [$f64('8000000000000001'), $f64('BFE0000000000000')]),
        $f64('BFE0000000000000'));
    returns(
        'add_53',
        () =>
            m.call('add', [$f64('8000000000000001'), $f64('3FE0000000000000')]),
        $f64('3FE0000000000000'));
    returns(
        'add_54',
        () => m.call('add', [$f64('1'), $f64('BFE0000000000000')]),
        $f64('BFE0000000000000'));
    returns(
        'add_55',
        () => m.call('add', [$f64('1'), $f64('3FE0000000000000')]),
        $f64('3FE0000000000000'));
    returns(
        'add_56',
        () =>
            m.call('add', [$f64('8000000000000001'), $f64('BFF0000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'add_57',
        () =>
            m.call('add', [$f64('8000000000000001'), $f64('3FF0000000000000')]),
        $f64('3FF0000000000000'));
    returns(
        'add_58',
        () => m.call('add', [$f64('1'), $f64('BFF0000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'add_59',
        () => m.call('add', [$f64('1'), $f64('3FF0000000000000')]),
        $f64('3FF0000000000000'));
    returns(
        'add_60',
        () =>
            m.call('add', [$f64('8000000000000001'), $f64('C01921FB54442D18')]),
        $f64('C01921FB54442D18'));
    returns(
        'add_61',
        () =>
            m.call('add', [$f64('8000000000000001'), $f64('401921FB54442D18')]),
        $f64('401921FB54442D18'));
    returns(
        'add_62',
        () => m.call('add', [$f64('1'), $f64('C01921FB54442D18')]),
        $f64('C01921FB54442D18'));
    returns(
        'add_63',
        () => m.call('add', [$f64('1'), $f64('401921FB54442D18')]),
        $f64('401921FB54442D18'));
    returns(
        'add_64',
        () =>
            m.call('add', [$f64('8000000000000001'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'add_65',
        () =>
            m.call('add', [$f64('8000000000000001'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'add_66',
        () => m.call('add', [$f64('1'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'add_67',
        () => m.call('add', [$f64('1'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'add_68',
        () =>
            m.call('add', [$f64('8000000000000001'), $f64('FFF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'add_69',
        () =>
            m.call('add', [$f64('8000000000000001'), $f64('7FF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'add_70',
        () => m.call('add', [$f64('1'), $f64('FFF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'add_71',
        () => m.call('add', [$f64('1'), $f64('7FF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'add_72',
        () =>
            m.call('add', [$f64('8000000000000001'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'add_73',
        () =>
            m.call('add', [$f64('8000000000000001'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'add_74',
        () =>
            m.call('add', [$f64('8000000000000001'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'add_75',
        () =>
            m.call('add', [$f64('8000000000000001'), $f64('7FF4000000000000')]),
        double.nan);
    returns('add_76',
        () => m.call('add', [$f64('1'), $f64('FFF8000000000000')]), double.nan);
    returns('add_77',
        () => m.call('add', [$f64('1'), $f64('FFF4000000000000')]), double.nan);
    returns('add_78',
        () => m.call('add', [$f64('1'), $f64('7FF8000000000000')]), double.nan);
    returns('add_79',
        () => m.call('add', [$f64('1'), $f64('7FF4000000000000')]), double.nan);
    returns(
        'add_80',
        () =>
            m.call('add', [$f64('8010000000000000'), $f64('8000000000000000')]),
        $f64('8010000000000000'));
    returns(
        'add_81',
        () => m.call('add', [$f64('8010000000000000'), $f64('0')]),
        $f64('8010000000000000'));
    returns(
        'add_82',
        () => m.call('add', [$f64('10000000000000'), $f64('8000000000000000')]),
        $f64('10000000000000'));
    returns('add_83', () => m.call('add', [$f64('10000000000000'), $f64('0')]),
        $f64('10000000000000'));
    returns(
        'add_84',
        () =>
            m.call('add', [$f64('8010000000000000'), $f64('8000000000000001')]),
        $f64('8010000000000001'));
    returns(
        'add_85',
        () => m.call('add', [$f64('8010000000000000'), $f64('1')]),
        $f64('800FFFFFFFFFFFFF'));
    returns(
        'add_86',
        () => m.call('add', [$f64('10000000000000'), $f64('8000000000000001')]),
        $f64('FFFFFFFFFFFFF'));
    returns('add_87', () => m.call('add', [$f64('10000000000000'), $f64('1')]),
        $f64('10000000000001'));
    returns(
        'add_88',
        () =>
            m.call('add', [$f64('8010000000000000'), $f64('8010000000000000')]),
        $f64('8020000000000000'));
    returns(
        'add_89',
        () => m.call('add', [$f64('8010000000000000'), $f64('10000000000000')]),
        $f64('0'));
    returns(
        'add_90',
        () => m.call('add', [$f64('10000000000000'), $f64('8010000000000000')]),
        $f64('0'));
    returns(
        'add_91',
        () => m.call('add', [$f64('10000000000000'), $f64('10000000000000')]),
        $f64('20000000000000'));
    returns(
        'add_92',
        () =>
            m.call('add', [$f64('8010000000000000'), $f64('BFE0000000000000')]),
        $f64('BFE0000000000000'));
    returns(
        'add_93',
        () =>
            m.call('add', [$f64('8010000000000000'), $f64('3FE0000000000000')]),
        $f64('3FE0000000000000'));
    returns(
        'add_94',
        () => m.call('add', [$f64('10000000000000'), $f64('BFE0000000000000')]),
        $f64('BFE0000000000000'));
    returns(
        'add_95',
        () => m.call('add', [$f64('10000000000000'), $f64('3FE0000000000000')]),
        $f64('3FE0000000000000'));
    returns(
        'add_96',
        () =>
            m.call('add', [$f64('8010000000000000'), $f64('BFF0000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'add_97',
        () =>
            m.call('add', [$f64('8010000000000000'), $f64('3FF0000000000000')]),
        $f64('3FF0000000000000'));
    returns(
        'add_98',
        () => m.call('add', [$f64('10000000000000'), $f64('BFF0000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'add_99',
        () => m.call('add', [$f64('10000000000000'), $f64('3FF0000000000000')]),
        $f64('3FF0000000000000'));
    returns(
        'add_100',
        () =>
            m.call('add', [$f64('8010000000000000'), $f64('C01921FB54442D18')]),
        $f64('C01921FB54442D18'));
    returns(
        'add_101',
        () =>
            m.call('add', [$f64('8010000000000000'), $f64('401921FB54442D18')]),
        $f64('401921FB54442D18'));
    returns(
        'add_102',
        () => m.call('add', [$f64('10000000000000'), $f64('C01921FB54442D18')]),
        $f64('C01921FB54442D18'));
    returns(
        'add_103',
        () => m.call('add', [$f64('10000000000000'), $f64('401921FB54442D18')]),
        $f64('401921FB54442D18'));
    returns(
        'add_104',
        () =>
            m.call('add', [$f64('8010000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'add_105',
        () =>
            m.call('add', [$f64('8010000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'add_106',
        () => m.call('add', [$f64('10000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'add_107',
        () => m.call('add', [$f64('10000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'add_108',
        () =>
            m.call('add', [$f64('8010000000000000'), $f64('FFF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'add_109',
        () =>
            m.call('add', [$f64('8010000000000000'), $f64('7FF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'add_110',
        () => m.call('add', [$f64('10000000000000'), $f64('FFF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'add_111',
        () => m.call('add', [$f64('10000000000000'), $f64('7FF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'add_112',
        () =>
            m.call('add', [$f64('8010000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'add_113',
        () =>
            m.call('add', [$f64('8010000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'add_114',
        () =>
            m.call('add', [$f64('8010000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'add_115',
        () =>
            m.call('add', [$f64('8010000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'add_116',
        () => m.call('add', [$f64('10000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'add_117',
        () => m.call('add', [$f64('10000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'add_118',
        () => m.call('add', [$f64('10000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'add_119',
        () => m.call('add', [$f64('10000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'add_120',
        () =>
            m.call('add', [$f64('BFE0000000000000'), $f64('8000000000000000')]),
        $f64('BFE0000000000000'));
    returns(
        'add_121',
        () => m.call('add', [$f64('BFE0000000000000'), $f64('0')]),
        $f64('BFE0000000000000'));
    returns(
        'add_122',
        () =>
            m.call('add', [$f64('3FE0000000000000'), $f64('8000000000000000')]),
        $f64('3FE0000000000000'));
    returns(
        'add_123',
        () => m.call('add', [$f64('3FE0000000000000'), $f64('0')]),
        $f64('3FE0000000000000'));
    returns(
        'add_124',
        () =>
            m.call('add', [$f64('BFE0000000000000'), $f64('8000000000000001')]),
        $f64('BFE0000000000000'));
    returns(
        'add_125',
        () => m.call('add', [$f64('BFE0000000000000'), $f64('1')]),
        $f64('BFE0000000000000'));
    returns(
        'add_126',
        () =>
            m.call('add', [$f64('3FE0000000000000'), $f64('8000000000000001')]),
        $f64('3FE0000000000000'));
    returns(
        'add_127',
        () => m.call('add', [$f64('3FE0000000000000'), $f64('1')]),
        $f64('3FE0000000000000'));
    returns(
        'add_128',
        () =>
            m.call('add', [$f64('BFE0000000000000'), $f64('8010000000000000')]),
        $f64('BFE0000000000000'));
    returns(
        'add_129',
        () => m.call('add', [$f64('BFE0000000000000'), $f64('10000000000000')]),
        $f64('BFE0000000000000'));
    returns(
        'add_130',
        () =>
            m.call('add', [$f64('3FE0000000000000'), $f64('8010000000000000')]),
        $f64('3FE0000000000000'));
    returns(
        'add_131',
        () => m.call('add', [$f64('3FE0000000000000'), $f64('10000000000000')]),
        $f64('3FE0000000000000'));
    returns(
        'add_132',
        () =>
            m.call('add', [$f64('BFE0000000000000'), $f64('BFE0000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'add_133',
        () =>
            m.call('add', [$f64('BFE0000000000000'), $f64('3FE0000000000000')]),
        $f64('0'));
    returns(
        'add_134',
        () =>
            m.call('add', [$f64('3FE0000000000000'), $f64('BFE0000000000000')]),
        $f64('0'));
    returns(
        'add_135',
        () =>
            m.call('add', [$f64('3FE0000000000000'), $f64('3FE0000000000000')]),
        $f64('3FF0000000000000'));
    returns(
        'add_136',
        () =>
            m.call('add', [$f64('BFE0000000000000'), $f64('BFF0000000000000')]),
        $f64('BFF8000000000000'));
    returns(
        'add_137',
        () =>
            m.call('add', [$f64('BFE0000000000000'), $f64('3FF0000000000000')]),
        $f64('3FE0000000000000'));
    returns(
        'add_138',
        () =>
            m.call('add', [$f64('3FE0000000000000'), $f64('BFF0000000000000')]),
        $f64('BFE0000000000000'));
    returns(
        'add_139',
        () =>
            m.call('add', [$f64('3FE0000000000000'), $f64('3FF0000000000000')]),
        $f64('3FF8000000000000'));
    returns(
        'add_140',
        () =>
            m.call('add', [$f64('BFE0000000000000'), $f64('C01921FB54442D18')]),
        $f64('C01B21FB54442D18'));
    returns(
        'add_141',
        () =>
            m.call('add', [$f64('BFE0000000000000'), $f64('401921FB54442D18')]),
        $f64('401721FB54442D18'));
    returns(
        'add_142',
        () =>
            m.call('add', [$f64('3FE0000000000000'), $f64('C01921FB54442D18')]),
        $f64('C01721FB54442D18'));
    returns(
        'add_143',
        () =>
            m.call('add', [$f64('3FE0000000000000'), $f64('401921FB54442D18')]),
        $f64('401B21FB54442D18'));
    returns(
        'add_144',
        () =>
            m.call('add', [$f64('BFE0000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'add_145',
        () =>
            m.call('add', [$f64('BFE0000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'add_146',
        () =>
            m.call('add', [$f64('3FE0000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'add_147',
        () =>
            m.call('add', [$f64('3FE0000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'add_148',
        () =>
            m.call('add', [$f64('BFE0000000000000'), $f64('FFF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'add_149',
        () =>
            m.call('add', [$f64('BFE0000000000000'), $f64('7FF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'add_150',
        () =>
            m.call('add', [$f64('3FE0000000000000'), $f64('FFF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'add_151',
        () =>
            m.call('add', [$f64('3FE0000000000000'), $f64('7FF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'add_152',
        () =>
            m.call('add', [$f64('BFE0000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'add_153',
        () =>
            m.call('add', [$f64('BFE0000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'add_154',
        () =>
            m.call('add', [$f64('BFE0000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'add_155',
        () =>
            m.call('add', [$f64('BFE0000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'add_156',
        () =>
            m.call('add', [$f64('3FE0000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'add_157',
        () =>
            m.call('add', [$f64('3FE0000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'add_158',
        () =>
            m.call('add', [$f64('3FE0000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'add_159',
        () =>
            m.call('add', [$f64('3FE0000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'add_160',
        () =>
            m.call('add', [$f64('BFF0000000000000'), $f64('8000000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'add_161',
        () => m.call('add', [$f64('BFF0000000000000'), $f64('0')]),
        $f64('BFF0000000000000'));
    returns(
        'add_162',
        () =>
            m.call('add', [$f64('3FF0000000000000'), $f64('8000000000000000')]),
        $f64('3FF0000000000000'));
    returns(
        'add_163',
        () => m.call('add', [$f64('3FF0000000000000'), $f64('0')]),
        $f64('3FF0000000000000'));
    returns(
        'add_164',
        () =>
            m.call('add', [$f64('BFF0000000000000'), $f64('8000000000000001')]),
        $f64('BFF0000000000000'));
    returns(
        'add_165',
        () => m.call('add', [$f64('BFF0000000000000'), $f64('1')]),
        $f64('BFF0000000000000'));
    returns(
        'add_166',
        () =>
            m.call('add', [$f64('3FF0000000000000'), $f64('8000000000000001')]),
        $f64('3FF0000000000000'));
    returns(
        'add_167',
        () => m.call('add', [$f64('3FF0000000000000'), $f64('1')]),
        $f64('3FF0000000000000'));
    returns(
        'add_168',
        () =>
            m.call('add', [$f64('BFF0000000000000'), $f64('8010000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'add_169',
        () => m.call('add', [$f64('BFF0000000000000'), $f64('10000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'add_170',
        () =>
            m.call('add', [$f64('3FF0000000000000'), $f64('8010000000000000')]),
        $f64('3FF0000000000000'));
    returns(
        'add_171',
        () => m.call('add', [$f64('3FF0000000000000'), $f64('10000000000000')]),
        $f64('3FF0000000000000'));
    returns(
        'add_172',
        () =>
            m.call('add', [$f64('BFF0000000000000'), $f64('BFE0000000000000')]),
        $f64('BFF8000000000000'));
    returns(
        'add_173',
        () =>
            m.call('add', [$f64('BFF0000000000000'), $f64('3FE0000000000000')]),
        $f64('BFE0000000000000'));
    returns(
        'add_174',
        () =>
            m.call('add', [$f64('3FF0000000000000'), $f64('BFE0000000000000')]),
        $f64('3FE0000000000000'));
    returns(
        'add_175',
        () =>
            m.call('add', [$f64('3FF0000000000000'), $f64('3FE0000000000000')]),
        $f64('3FF8000000000000'));
    returns(
        'add_176',
        () =>
            m.call('add', [$f64('BFF0000000000000'), $f64('BFF0000000000000')]),
        $f64('C000000000000000'));
    returns(
        'add_177',
        () =>
            m.call('add', [$f64('BFF0000000000000'), $f64('3FF0000000000000')]),
        $f64('0'));
    returns(
        'add_178',
        () =>
            m.call('add', [$f64('3FF0000000000000'), $f64('BFF0000000000000')]),
        $f64('0'));
    returns(
        'add_179',
        () =>
            m.call('add', [$f64('3FF0000000000000'), $f64('3FF0000000000000')]),
        $f64('4000000000000000'));
    returns(
        'add_180',
        () =>
            m.call('add', [$f64('BFF0000000000000'), $f64('C01921FB54442D18')]),
        $f64('C01D21FB54442D18'));
    returns(
        'add_181',
        () =>
            m.call('add', [$f64('BFF0000000000000'), $f64('401921FB54442D18')]),
        $f64('401521FB54442D18'));
    returns(
        'add_182',
        () =>
            m.call('add', [$f64('3FF0000000000000'), $f64('C01921FB54442D18')]),
        $f64('C01521FB54442D18'));
    returns(
        'add_183',
        () =>
            m.call('add', [$f64('3FF0000000000000'), $f64('401921FB54442D18')]),
        $f64('401D21FB54442D18'));
    returns(
        'add_184',
        () =>
            m.call('add', [$f64('BFF0000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'add_185',
        () =>
            m.call('add', [$f64('BFF0000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'add_186',
        () =>
            m.call('add', [$f64('3FF0000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'add_187',
        () =>
            m.call('add', [$f64('3FF0000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'add_188',
        () =>
            m.call('add', [$f64('BFF0000000000000'), $f64('FFF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'add_189',
        () =>
            m.call('add', [$f64('BFF0000000000000'), $f64('7FF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'add_190',
        () =>
            m.call('add', [$f64('3FF0000000000000'), $f64('FFF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'add_191',
        () =>
            m.call('add', [$f64('3FF0000000000000'), $f64('7FF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'add_192',
        () =>
            m.call('add', [$f64('BFF0000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'add_193',
        () =>
            m.call('add', [$f64('BFF0000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'add_194',
        () =>
            m.call('add', [$f64('BFF0000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'add_195',
        () =>
            m.call('add', [$f64('BFF0000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'add_196',
        () =>
            m.call('add', [$f64('3FF0000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'add_197',
        () =>
            m.call('add', [$f64('3FF0000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'add_198',
        () =>
            m.call('add', [$f64('3FF0000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'add_199',
        () =>
            m.call('add', [$f64('3FF0000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'add_200',
        () =>
            m.call('add', [$f64('C01921FB54442D18'), $f64('8000000000000000')]),
        $f64('C01921FB54442D18'));
    returns(
        'add_201',
        () => m.call('add', [$f64('C01921FB54442D18'), $f64('0')]),
        $f64('C01921FB54442D18'));
    returns(
        'add_202',
        () =>
            m.call('add', [$f64('401921FB54442D18'), $f64('8000000000000000')]),
        $f64('401921FB54442D18'));
    returns(
        'add_203',
        () => m.call('add', [$f64('401921FB54442D18'), $f64('0')]),
        $f64('401921FB54442D18'));
    returns(
        'add_204',
        () =>
            m.call('add', [$f64('C01921FB54442D18'), $f64('8000000000000001')]),
        $f64('C01921FB54442D18'));
    returns(
        'add_205',
        () => m.call('add', [$f64('C01921FB54442D18'), $f64('1')]),
        $f64('C01921FB54442D18'));
    returns(
        'add_206',
        () =>
            m.call('add', [$f64('401921FB54442D18'), $f64('8000000000000001')]),
        $f64('401921FB54442D18'));
    returns(
        'add_207',
        () => m.call('add', [$f64('401921FB54442D18'), $f64('1')]),
        $f64('401921FB54442D18'));
    returns(
        'add_208',
        () =>
            m.call('add', [$f64('C01921FB54442D18'), $f64('8010000000000000')]),
        $f64('C01921FB54442D18'));
    returns(
        'add_209',
        () => m.call('add', [$f64('C01921FB54442D18'), $f64('10000000000000')]),
        $f64('C01921FB54442D18'));
    returns(
        'add_210',
        () =>
            m.call('add', [$f64('401921FB54442D18'), $f64('8010000000000000')]),
        $f64('401921FB54442D18'));
    returns(
        'add_211',
        () => m.call('add', [$f64('401921FB54442D18'), $f64('10000000000000')]),
        $f64('401921FB54442D18'));
    returns(
        'add_212',
        () =>
            m.call('add', [$f64('C01921FB54442D18'), $f64('BFE0000000000000')]),
        $f64('C01B21FB54442D18'));
    returns(
        'add_213',
        () =>
            m.call('add', [$f64('C01921FB54442D18'), $f64('3FE0000000000000')]),
        $f64('C01721FB54442D18'));
    returns(
        'add_214',
        () =>
            m.call('add', [$f64('401921FB54442D18'), $f64('BFE0000000000000')]),
        $f64('401721FB54442D18'));
    returns(
        'add_215',
        () =>
            m.call('add', [$f64('401921FB54442D18'), $f64('3FE0000000000000')]),
        $f64('401B21FB54442D18'));
    returns(
        'add_216',
        () =>
            m.call('add', [$f64('C01921FB54442D18'), $f64('BFF0000000000000')]),
        $f64('C01D21FB54442D18'));
    returns(
        'add_217',
        () =>
            m.call('add', [$f64('C01921FB54442D18'), $f64('3FF0000000000000')]),
        $f64('C01521FB54442D18'));
    returns(
        'add_218',
        () =>
            m.call('add', [$f64('401921FB54442D18'), $f64('BFF0000000000000')]),
        $f64('401521FB54442D18'));
    returns(
        'add_219',
        () =>
            m.call('add', [$f64('401921FB54442D18'), $f64('3FF0000000000000')]),
        $f64('401D21FB54442D18'));
    returns(
        'add_220',
        () =>
            m.call('add', [$f64('C01921FB54442D18'), $f64('C01921FB54442D18')]),
        $f64('C02921FB54442D18'));
    returns(
        'add_221',
        () =>
            m.call('add', [$f64('C01921FB54442D18'), $f64('401921FB54442D18')]),
        $f64('0'));
    returns(
        'add_222',
        () =>
            m.call('add', [$f64('401921FB54442D18'), $f64('C01921FB54442D18')]),
        $f64('0'));
    returns(
        'add_223',
        () =>
            m.call('add', [$f64('401921FB54442D18'), $f64('401921FB54442D18')]),
        $f64('402921FB54442D18'));
    returns(
        'add_224',
        () =>
            m.call('add', [$f64('C01921FB54442D18'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'add_225',
        () =>
            m.call('add', [$f64('C01921FB54442D18'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'add_226',
        () =>
            m.call('add', [$f64('401921FB54442D18'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'add_227',
        () =>
            m.call('add', [$f64('401921FB54442D18'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'add_228',
        () =>
            m.call('add', [$f64('C01921FB54442D18'), $f64('FFF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'add_229',
        () =>
            m.call('add', [$f64('C01921FB54442D18'), $f64('7FF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'add_230',
        () =>
            m.call('add', [$f64('401921FB54442D18'), $f64('FFF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'add_231',
        () =>
            m.call('add', [$f64('401921FB54442D18'), $f64('7FF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'add_232',
        () =>
            m.call('add', [$f64('C01921FB54442D18'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'add_233',
        () =>
            m.call('add', [$f64('C01921FB54442D18'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'add_234',
        () =>
            m.call('add', [$f64('C01921FB54442D18'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'add_235',
        () =>
            m.call('add', [$f64('C01921FB54442D18'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'add_236',
        () =>
            m.call('add', [$f64('401921FB54442D18'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'add_237',
        () =>
            m.call('add', [$f64('401921FB54442D18'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'add_238',
        () =>
            m.call('add', [$f64('401921FB54442D18'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'add_239',
        () =>
            m.call('add', [$f64('401921FB54442D18'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'add_240',
        () =>
            m.call('add', [$f64('FFEFFFFFFFFFFFFF'), $f64('8000000000000000')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'add_241',
        () => m.call('add', [$f64('FFEFFFFFFFFFFFFF'), $f64('0')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'add_242',
        () =>
            m.call('add', [$f64('7FEFFFFFFFFFFFFF'), $f64('8000000000000000')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'add_243',
        () => m.call('add', [$f64('7FEFFFFFFFFFFFFF'), $f64('0')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'add_244',
        () =>
            m.call('add', [$f64('FFEFFFFFFFFFFFFF'), $f64('8000000000000001')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'add_245',
        () => m.call('add', [$f64('FFEFFFFFFFFFFFFF'), $f64('1')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'add_246',
        () =>
            m.call('add', [$f64('7FEFFFFFFFFFFFFF'), $f64('8000000000000001')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'add_247',
        () => m.call('add', [$f64('7FEFFFFFFFFFFFFF'), $f64('1')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'add_248',
        () =>
            m.call('add', [$f64('FFEFFFFFFFFFFFFF'), $f64('8010000000000000')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'add_249',
        () => m.call('add', [$f64('FFEFFFFFFFFFFFFF'), $f64('10000000000000')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'add_250',
        () =>
            m.call('add', [$f64('7FEFFFFFFFFFFFFF'), $f64('8010000000000000')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'add_251',
        () => m.call('add', [$f64('7FEFFFFFFFFFFFFF'), $f64('10000000000000')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'add_252',
        () =>
            m.call('add', [$f64('FFEFFFFFFFFFFFFF'), $f64('BFE0000000000000')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'add_253',
        () =>
            m.call('add', [$f64('FFEFFFFFFFFFFFFF'), $f64('3FE0000000000000')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'add_254',
        () =>
            m.call('add', [$f64('7FEFFFFFFFFFFFFF'), $f64('BFE0000000000000')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'add_255',
        () =>
            m.call('add', [$f64('7FEFFFFFFFFFFFFF'), $f64('3FE0000000000000')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'add_256',
        () =>
            m.call('add', [$f64('FFEFFFFFFFFFFFFF'), $f64('BFF0000000000000')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'add_257',
        () =>
            m.call('add', [$f64('FFEFFFFFFFFFFFFF'), $f64('3FF0000000000000')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'add_258',
        () =>
            m.call('add', [$f64('7FEFFFFFFFFFFFFF'), $f64('BFF0000000000000')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'add_259',
        () =>
            m.call('add', [$f64('7FEFFFFFFFFFFFFF'), $f64('3FF0000000000000')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'add_260',
        () =>
            m.call('add', [$f64('FFEFFFFFFFFFFFFF'), $f64('C01921FB54442D18')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'add_261',
        () =>
            m.call('add', [$f64('FFEFFFFFFFFFFFFF'), $f64('401921FB54442D18')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'add_262',
        () =>
            m.call('add', [$f64('7FEFFFFFFFFFFFFF'), $f64('C01921FB54442D18')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'add_263',
        () =>
            m.call('add', [$f64('7FEFFFFFFFFFFFFF'), $f64('401921FB54442D18')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'add_264',
        () =>
            m.call('add', [$f64('FFEFFFFFFFFFFFFF'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('FFF0000000000000'));
    returns(
        'add_265',
        () =>
            m.call('add', [$f64('FFEFFFFFFFFFFFFF'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('0'));
    returns(
        'add_266',
        () =>
            m.call('add', [$f64('7FEFFFFFFFFFFFFF'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('0'));
    returns(
        'add_267',
        () =>
            m.call('add', [$f64('7FEFFFFFFFFFFFFF'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('7FF0000000000000'));
    returns(
        'add_268',
        () =>
            m.call('add', [$f64('FFEFFFFFFFFFFFFF'), $f64('FFF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'add_269',
        () =>
            m.call('add', [$f64('FFEFFFFFFFFFFFFF'), $f64('7FF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'add_270',
        () =>
            m.call('add', [$f64('7FEFFFFFFFFFFFFF'), $f64('FFF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'add_271',
        () =>
            m.call('add', [$f64('7FEFFFFFFFFFFFFF'), $f64('7FF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'add_272',
        () =>
            m.call('add', [$f64('FFEFFFFFFFFFFFFF'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'add_273',
        () =>
            m.call('add', [$f64('FFEFFFFFFFFFFFFF'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'add_274',
        () =>
            m.call('add', [$f64('FFEFFFFFFFFFFFFF'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'add_275',
        () =>
            m.call('add', [$f64('FFEFFFFFFFFFFFFF'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'add_276',
        () =>
            m.call('add', [$f64('7FEFFFFFFFFFFFFF'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'add_277',
        () =>
            m.call('add', [$f64('7FEFFFFFFFFFFFFF'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'add_278',
        () =>
            m.call('add', [$f64('7FEFFFFFFFFFFFFF'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'add_279',
        () =>
            m.call('add', [$f64('7FEFFFFFFFFFFFFF'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'add_280',
        () =>
            m.call('add', [$f64('FFF0000000000000'), $f64('8000000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'add_281',
        () => m.call('add', [$f64('FFF0000000000000'), $f64('0')]),
        $f64('FFF0000000000000'));
    returns(
        'add_282',
        () =>
            m.call('add', [$f64('7FF0000000000000'), $f64('8000000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'add_283',
        () => m.call('add', [$f64('7FF0000000000000'), $f64('0')]),
        $f64('7FF0000000000000'));
    returns(
        'add_284',
        () =>
            m.call('add', [$f64('FFF0000000000000'), $f64('8000000000000001')]),
        $f64('FFF0000000000000'));
    returns(
        'add_285',
        () => m.call('add', [$f64('FFF0000000000000'), $f64('1')]),
        $f64('FFF0000000000000'));
    returns(
        'add_286',
        () =>
            m.call('add', [$f64('7FF0000000000000'), $f64('8000000000000001')]),
        $f64('7FF0000000000000'));
    returns(
        'add_287',
        () => m.call('add', [$f64('7FF0000000000000'), $f64('1')]),
        $f64('7FF0000000000000'));
    returns(
        'add_288',
        () =>
            m.call('add', [$f64('FFF0000000000000'), $f64('8010000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'add_289',
        () => m.call('add', [$f64('FFF0000000000000'), $f64('10000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'add_290',
        () =>
            m.call('add', [$f64('7FF0000000000000'), $f64('8010000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'add_291',
        () => m.call('add', [$f64('7FF0000000000000'), $f64('10000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'add_292',
        () =>
            m.call('add', [$f64('FFF0000000000000'), $f64('BFE0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'add_293',
        () =>
            m.call('add', [$f64('FFF0000000000000'), $f64('3FE0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'add_294',
        () =>
            m.call('add', [$f64('7FF0000000000000'), $f64('BFE0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'add_295',
        () =>
            m.call('add', [$f64('7FF0000000000000'), $f64('3FE0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'add_296',
        () =>
            m.call('add', [$f64('FFF0000000000000'), $f64('BFF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'add_297',
        () =>
            m.call('add', [$f64('FFF0000000000000'), $f64('3FF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'add_298',
        () =>
            m.call('add', [$f64('7FF0000000000000'), $f64('BFF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'add_299',
        () =>
            m.call('add', [$f64('7FF0000000000000'), $f64('3FF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'add_300',
        () =>
            m.call('add', [$f64('FFF0000000000000'), $f64('C01921FB54442D18')]),
        $f64('FFF0000000000000'));
    returns(
        'add_301',
        () =>
            m.call('add', [$f64('FFF0000000000000'), $f64('401921FB54442D18')]),
        $f64('FFF0000000000000'));
    returns(
        'add_302',
        () =>
            m.call('add', [$f64('7FF0000000000000'), $f64('C01921FB54442D18')]),
        $f64('7FF0000000000000'));
    returns(
        'add_303',
        () =>
            m.call('add', [$f64('7FF0000000000000'), $f64('401921FB54442D18')]),
        $f64('7FF0000000000000'));
    returns(
        'add_304',
        () =>
            m.call('add', [$f64('FFF0000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('FFF0000000000000'));
    returns(
        'add_305',
        () =>
            m.call('add', [$f64('FFF0000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('FFF0000000000000'));
    returns(
        'add_306',
        () =>
            m.call('add', [$f64('7FF0000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('7FF0000000000000'));
    returns(
        'add_307',
        () =>
            m.call('add', [$f64('7FF0000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('7FF0000000000000'));
    returns(
        'add_308',
        () =>
            m.call('add', [$f64('FFF0000000000000'), $f64('FFF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'add_309',
        () =>
            m.call('add', [$f64('FFF0000000000000'), $f64('7FF0000000000000')]),
        double.nan);
    returns(
        'add_310',
        () =>
            m.call('add', [$f64('7FF0000000000000'), $f64('FFF0000000000000')]),
        double.nan);
    returns(
        'add_311',
        () =>
            m.call('add', [$f64('7FF0000000000000'), $f64('7FF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'add_312',
        () =>
            m.call('add', [$f64('FFF0000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'add_313',
        () =>
            m.call('add', [$f64('FFF0000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'add_314',
        () =>
            m.call('add', [$f64('FFF0000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'add_315',
        () =>
            m.call('add', [$f64('FFF0000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'add_316',
        () =>
            m.call('add', [$f64('7FF0000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'add_317',
        () =>
            m.call('add', [$f64('7FF0000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'add_318',
        () =>
            m.call('add', [$f64('7FF0000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'add_319',
        () =>
            m.call('add', [$f64('7FF0000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'add_320',
        () =>
            m.call('add', [$f64('FFF8000000000000'), $f64('8000000000000000')]),
        double.nan);
    returns(
        'add_321',
        () =>
            m.call('add', [$f64('FFF4000000000000'), $f64('8000000000000000')]),
        double.nan);
    returns('add_322',
        () => m.call('add', [$f64('FFF8000000000000'), $f64('0')]), double.nan);
    returns('add_323',
        () => m.call('add', [$f64('FFF4000000000000'), $f64('0')]), double.nan);
    returns(
        'add_324',
        () =>
            m.call('add', [$f64('7FF8000000000000'), $f64('8000000000000000')]),
        double.nan);
    returns(
        'add_325',
        () =>
            m.call('add', [$f64('7FF4000000000000'), $f64('8000000000000000')]),
        double.nan);
    returns('add_326',
        () => m.call('add', [$f64('7FF8000000000000'), $f64('0')]), double.nan);
    returns('add_327',
        () => m.call('add', [$f64('7FF4000000000000'), $f64('0')]), double.nan);
    returns(
        'add_328',
        () =>
            m.call('add', [$f64('FFF8000000000000'), $f64('8000000000000001')]),
        double.nan);
    returns(
        'add_329',
        () =>
            m.call('add', [$f64('FFF4000000000000'), $f64('8000000000000001')]),
        double.nan);
    returns('add_330',
        () => m.call('add', [$f64('FFF8000000000000'), $f64('1')]), double.nan);
    returns('add_331',
        () => m.call('add', [$f64('FFF4000000000000'), $f64('1')]), double.nan);
    returns(
        'add_332',
        () =>
            m.call('add', [$f64('7FF8000000000000'), $f64('8000000000000001')]),
        double.nan);
    returns(
        'add_333',
        () =>
            m.call('add', [$f64('7FF4000000000000'), $f64('8000000000000001')]),
        double.nan);
    returns('add_334',
        () => m.call('add', [$f64('7FF8000000000000'), $f64('1')]), double.nan);
    returns('add_335',
        () => m.call('add', [$f64('7FF4000000000000'), $f64('1')]), double.nan);
    returns(
        'add_336',
        () =>
            m.call('add', [$f64('FFF8000000000000'), $f64('8010000000000000')]),
        double.nan);
    returns(
        'add_337',
        () =>
            m.call('add', [$f64('FFF4000000000000'), $f64('8010000000000000')]),
        double.nan);
    returns(
        'add_338',
        () => m.call('add', [$f64('FFF8000000000000'), $f64('10000000000000')]),
        double.nan);
    returns(
        'add_339',
        () => m.call('add', [$f64('FFF4000000000000'), $f64('10000000000000')]),
        double.nan);
    returns(
        'add_340',
        () =>
            m.call('add', [$f64('7FF8000000000000'), $f64('8010000000000000')]),
        double.nan);
    returns(
        'add_341',
        () =>
            m.call('add', [$f64('7FF4000000000000'), $f64('8010000000000000')]),
        double.nan);
    returns(
        'add_342',
        () => m.call('add', [$f64('7FF8000000000000'), $f64('10000000000000')]),
        double.nan);
    returns(
        'add_343',
        () => m.call('add', [$f64('7FF4000000000000'), $f64('10000000000000')]),
        double.nan);
    returns(
        'add_344',
        () =>
            m.call('add', [$f64('FFF8000000000000'), $f64('BFE0000000000000')]),
        double.nan);
    returns(
        'add_345',
        () =>
            m.call('add', [$f64('FFF4000000000000'), $f64('BFE0000000000000')]),
        double.nan);
    returns(
        'add_346',
        () =>
            m.call('add', [$f64('FFF8000000000000'), $f64('3FE0000000000000')]),
        double.nan);
    returns(
        'add_347',
        () =>
            m.call('add', [$f64('FFF4000000000000'), $f64('3FE0000000000000')]),
        double.nan);
    returns(
        'add_348',
        () =>
            m.call('add', [$f64('7FF8000000000000'), $f64('BFE0000000000000')]),
        double.nan);
    returns(
        'add_349',
        () =>
            m.call('add', [$f64('7FF4000000000000'), $f64('BFE0000000000000')]),
        double.nan);
    returns(
        'add_350',
        () =>
            m.call('add', [$f64('7FF8000000000000'), $f64('3FE0000000000000')]),
        double.nan);
    returns(
        'add_351',
        () =>
            m.call('add', [$f64('7FF4000000000000'), $f64('3FE0000000000000')]),
        double.nan);
    returns(
        'add_352',
        () =>
            m.call('add', [$f64('FFF8000000000000'), $f64('BFF0000000000000')]),
        double.nan);
    returns(
        'add_353',
        () =>
            m.call('add', [$f64('FFF4000000000000'), $f64('BFF0000000000000')]),
        double.nan);
    returns(
        'add_354',
        () =>
            m.call('add', [$f64('FFF8000000000000'), $f64('3FF0000000000000')]),
        double.nan);
    returns(
        'add_355',
        () =>
            m.call('add', [$f64('FFF4000000000000'), $f64('3FF0000000000000')]),
        double.nan);
    returns(
        'add_356',
        () =>
            m.call('add', [$f64('7FF8000000000000'), $f64('BFF0000000000000')]),
        double.nan);
    returns(
        'add_357',
        () =>
            m.call('add', [$f64('7FF4000000000000'), $f64('BFF0000000000000')]),
        double.nan);
    returns(
        'add_358',
        () =>
            m.call('add', [$f64('7FF8000000000000'), $f64('3FF0000000000000')]),
        double.nan);
    returns(
        'add_359',
        () =>
            m.call('add', [$f64('7FF4000000000000'), $f64('3FF0000000000000')]),
        double.nan);
    returns(
        'add_360',
        () =>
            m.call('add', [$f64('FFF8000000000000'), $f64('C01921FB54442D18')]),
        double.nan);
    returns(
        'add_361',
        () =>
            m.call('add', [$f64('FFF4000000000000'), $f64('C01921FB54442D18')]),
        double.nan);
    returns(
        'add_362',
        () =>
            m.call('add', [$f64('FFF8000000000000'), $f64('401921FB54442D18')]),
        double.nan);
    returns(
        'add_363',
        () =>
            m.call('add', [$f64('FFF4000000000000'), $f64('401921FB54442D18')]),
        double.nan);
    returns(
        'add_364',
        () =>
            m.call('add', [$f64('7FF8000000000000'), $f64('C01921FB54442D18')]),
        double.nan);
    returns(
        'add_365',
        () =>
            m.call('add', [$f64('7FF4000000000000'), $f64('C01921FB54442D18')]),
        double.nan);
    returns(
        'add_366',
        () =>
            m.call('add', [$f64('7FF8000000000000'), $f64('401921FB54442D18')]),
        double.nan);
    returns(
        'add_367',
        () =>
            m.call('add', [$f64('7FF4000000000000'), $f64('401921FB54442D18')]),
        double.nan);
    returns(
        'add_368',
        () =>
            m.call('add', [$f64('FFF8000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        double.nan);
    returns(
        'add_369',
        () =>
            m.call('add', [$f64('FFF4000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        double.nan);
    returns(
        'add_370',
        () =>
            m.call('add', [$f64('FFF8000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        double.nan);
    returns(
        'add_371',
        () =>
            m.call('add', [$f64('FFF4000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        double.nan);
    returns(
        'add_372',
        () =>
            m.call('add', [$f64('7FF8000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        double.nan);
    returns(
        'add_373',
        () =>
            m.call('add', [$f64('7FF4000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        double.nan);
    returns(
        'add_374',
        () =>
            m.call('add', [$f64('7FF8000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        double.nan);
    returns(
        'add_375',
        () =>
            m.call('add', [$f64('7FF4000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        double.nan);
    returns(
        'add_376',
        () =>
            m.call('add', [$f64('FFF8000000000000'), $f64('FFF0000000000000')]),
        double.nan);
    returns(
        'add_377',
        () =>
            m.call('add', [$f64('FFF4000000000000'), $f64('FFF0000000000000')]),
        double.nan);
    returns(
        'add_378',
        () =>
            m.call('add', [$f64('FFF8000000000000'), $f64('7FF0000000000000')]),
        double.nan);
    returns(
        'add_379',
        () =>
            m.call('add', [$f64('FFF4000000000000'), $f64('7FF0000000000000')]),
        double.nan);
    returns(
        'add_380',
        () =>
            m.call('add', [$f64('7FF8000000000000'), $f64('FFF0000000000000')]),
        double.nan);
    returns(
        'add_381',
        () =>
            m.call('add', [$f64('7FF4000000000000'), $f64('FFF0000000000000')]),
        double.nan);
    returns(
        'add_382',
        () =>
            m.call('add', [$f64('7FF8000000000000'), $f64('7FF0000000000000')]),
        double.nan);
    returns(
        'add_383',
        () =>
            m.call('add', [$f64('7FF4000000000000'), $f64('7FF0000000000000')]),
        double.nan);
    returns(
        'add_384',
        () =>
            m.call('add', [$f64('FFF8000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'add_385',
        () =>
            m.call('add', [$f64('FFF4000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'add_386',
        () =>
            m.call('add', [$f64('FFF8000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'add_387',
        () =>
            m.call('add', [$f64('FFF4000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'add_388',
        () =>
            m.call('add', [$f64('FFF8000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'add_389',
        () =>
            m.call('add', [$f64('FFF4000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'add_390',
        () =>
            m.call('add', [$f64('FFF8000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'add_391',
        () =>
            m.call('add', [$f64('FFF4000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'add_392',
        () =>
            m.call('add', [$f64('7FF8000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'add_393',
        () =>
            m.call('add', [$f64('7FF4000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'add_394',
        () =>
            m.call('add', [$f64('7FF8000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'add_395',
        () =>
            m.call('add', [$f64('7FF4000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'add_396',
        () =>
            m.call('add', [$f64('7FF8000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'add_397',
        () =>
            m.call('add', [$f64('7FF4000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'add_398',
        () =>
            m.call('add', [$f64('7FF8000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'add_399',
        () =>
            m.call('add', [$f64('7FF4000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'sub_0',
        () =>
            m.call('sub', [$f64('8000000000000000'), $f64('8000000000000000')]),
        $f64('0'));
    returns('sub_1', () => m.call('sub', [$f64('8000000000000000'), $f64('0')]),
        $f64('8000000000000000'));
    returns('sub_2', () => m.call('sub', [$f64('0'), $f64('8000000000000000')]),
        $f64('0'));
    returns('sub_3', () => m.call('sub', [$f64('0'), $f64('0')]), $f64('0'));
    returns(
        'sub_4',
        () =>
            m.call('sub', [$f64('8000000000000000'), $f64('8000000000000001')]),
        $f64('1'));
    returns('sub_5', () => m.call('sub', [$f64('8000000000000000'), $f64('1')]),
        $f64('8000000000000001'));
    returns('sub_6', () => m.call('sub', [$f64('0'), $f64('8000000000000001')]),
        $f64('1'));
    returns('sub_7', () => m.call('sub', [$f64('0'), $f64('1')]),
        $f64('8000000000000001'));
    returns(
        'sub_8',
        () =>
            m.call('sub', [$f64('8000000000000000'), $f64('8010000000000000')]),
        $f64('10000000000000'));
    returns(
        'sub_9',
        () => m.call('sub', [$f64('8000000000000000'), $f64('10000000000000')]),
        $f64('8010000000000000'));
    returns(
        'sub_10',
        () => m.call('sub', [$f64('0'), $f64('8010000000000000')]),
        $f64('10000000000000'));
    returns('sub_11', () => m.call('sub', [$f64('0'), $f64('10000000000000')]),
        $f64('8010000000000000'));
    returns(
        'sub_12',
        () =>
            m.call('sub', [$f64('8000000000000000'), $f64('BFE0000000000000')]),
        $f64('3FE0000000000000'));
    returns(
        'sub_13',
        () =>
            m.call('sub', [$f64('8000000000000000'), $f64('3FE0000000000000')]),
        $f64('BFE0000000000000'));
    returns(
        'sub_14',
        () => m.call('sub', [$f64('0'), $f64('BFE0000000000000')]),
        $f64('3FE0000000000000'));
    returns(
        'sub_15',
        () => m.call('sub', [$f64('0'), $f64('3FE0000000000000')]),
        $f64('BFE0000000000000'));
    returns(
        'sub_16',
        () =>
            m.call('sub', [$f64('8000000000000000'), $f64('BFF0000000000000')]),
        $f64('3FF0000000000000'));
    returns(
        'sub_17',
        () =>
            m.call('sub', [$f64('8000000000000000'), $f64('3FF0000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'sub_18',
        () => m.call('sub', [$f64('0'), $f64('BFF0000000000000')]),
        $f64('3FF0000000000000'));
    returns(
        'sub_19',
        () => m.call('sub', [$f64('0'), $f64('3FF0000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'sub_20',
        () =>
            m.call('sub', [$f64('8000000000000000'), $f64('C01921FB54442D18')]),
        $f64('401921FB54442D18'));
    returns(
        'sub_21',
        () =>
            m.call('sub', [$f64('8000000000000000'), $f64('401921FB54442D18')]),
        $f64('C01921FB54442D18'));
    returns(
        'sub_22',
        () => m.call('sub', [$f64('0'), $f64('C01921FB54442D18')]),
        $f64('401921FB54442D18'));
    returns(
        'sub_23',
        () => m.call('sub', [$f64('0'), $f64('401921FB54442D18')]),
        $f64('C01921FB54442D18'));
    returns(
        'sub_24',
        () =>
            m.call('sub', [$f64('8000000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'sub_25',
        () =>
            m.call('sub', [$f64('8000000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'sub_26',
        () => m.call('sub', [$f64('0'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'sub_27',
        () => m.call('sub', [$f64('0'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'sub_28',
        () =>
            m.call('sub', [$f64('8000000000000000'), $f64('FFF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'sub_29',
        () =>
            m.call('sub', [$f64('8000000000000000'), $f64('7FF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'sub_30',
        () => m.call('sub', [$f64('0'), $f64('FFF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'sub_31',
        () => m.call('sub', [$f64('0'), $f64('7FF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'sub_32',
        () =>
            m.call('sub', [$f64('8000000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'sub_33',
        () =>
            m.call('sub', [$f64('8000000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'sub_34',
        () =>
            m.call('sub', [$f64('8000000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'sub_35',
        () =>
            m.call('sub', [$f64('8000000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns('sub_36',
        () => m.call('sub', [$f64('0'), $f64('FFF8000000000000')]), double.nan);
    returns('sub_37',
        () => m.call('sub', [$f64('0'), $f64('FFF4000000000000')]), double.nan);
    returns('sub_38',
        () => m.call('sub', [$f64('0'), $f64('7FF8000000000000')]), double.nan);
    returns('sub_39',
        () => m.call('sub', [$f64('0'), $f64('7FF4000000000000')]), double.nan);
    returns(
        'sub_40',
        () =>
            m.call('sub', [$f64('8000000000000001'), $f64('8000000000000000')]),
        $f64('8000000000000001'));
    returns(
        'sub_41',
        () => m.call('sub', [$f64('8000000000000001'), $f64('0')]),
        $f64('8000000000000001'));
    returns('sub_42',
        () => m.call('sub', [$f64('1'), $f64('8000000000000000')]), $f64('1'));
    returns('sub_43', () => m.call('sub', [$f64('1'), $f64('0')]), $f64('1'));
    returns(
        'sub_44',
        () =>
            m.call('sub', [$f64('8000000000000001'), $f64('8000000000000001')]),
        $f64('0'));
    returns(
        'sub_45',
        () => m.call('sub', [$f64('8000000000000001'), $f64('1')]),
        $f64('8000000000000002'));
    returns('sub_46',
        () => m.call('sub', [$f64('1'), $f64('8000000000000001')]), $f64('2'));
    returns('sub_47', () => m.call('sub', [$f64('1'), $f64('1')]), $f64('0'));
    returns(
        'sub_48',
        () =>
            m.call('sub', [$f64('8000000000000001'), $f64('8010000000000000')]),
        $f64('FFFFFFFFFFFFF'));
    returns(
        'sub_49',
        () => m.call('sub', [$f64('8000000000000001'), $f64('10000000000000')]),
        $f64('8010000000000001'));
    returns(
        'sub_50',
        () => m.call('sub', [$f64('1'), $f64('8010000000000000')]),
        $f64('10000000000001'));
    returns('sub_51', () => m.call('sub', [$f64('1'), $f64('10000000000000')]),
        $f64('800FFFFFFFFFFFFF'));
    returns(
        'sub_52',
        () =>
            m.call('sub', [$f64('8000000000000001'), $f64('BFE0000000000000')]),
        $f64('3FE0000000000000'));
    returns(
        'sub_53',
        () =>
            m.call('sub', [$f64('8000000000000001'), $f64('3FE0000000000000')]),
        $f64('BFE0000000000000'));
    returns(
        'sub_54',
        () => m.call('sub', [$f64('1'), $f64('BFE0000000000000')]),
        $f64('3FE0000000000000'));
    returns(
        'sub_55',
        () => m.call('sub', [$f64('1'), $f64('3FE0000000000000')]),
        $f64('BFE0000000000000'));
    returns(
        'sub_56',
        () =>
            m.call('sub', [$f64('8000000000000001'), $f64('BFF0000000000000')]),
        $f64('3FF0000000000000'));
    returns(
        'sub_57',
        () =>
            m.call('sub', [$f64('8000000000000001'), $f64('3FF0000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'sub_58',
        () => m.call('sub', [$f64('1'), $f64('BFF0000000000000')]),
        $f64('3FF0000000000000'));
    returns(
        'sub_59',
        () => m.call('sub', [$f64('1'), $f64('3FF0000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'sub_60',
        () =>
            m.call('sub', [$f64('8000000000000001'), $f64('C01921FB54442D18')]),
        $f64('401921FB54442D18'));
    returns(
        'sub_61',
        () =>
            m.call('sub', [$f64('8000000000000001'), $f64('401921FB54442D18')]),
        $f64('C01921FB54442D18'));
    returns(
        'sub_62',
        () => m.call('sub', [$f64('1'), $f64('C01921FB54442D18')]),
        $f64('401921FB54442D18'));
    returns(
        'sub_63',
        () => m.call('sub', [$f64('1'), $f64('401921FB54442D18')]),
        $f64('C01921FB54442D18'));
    returns(
        'sub_64',
        () =>
            m.call('sub', [$f64('8000000000000001'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'sub_65',
        () =>
            m.call('sub', [$f64('8000000000000001'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'sub_66',
        () => m.call('sub', [$f64('1'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'sub_67',
        () => m.call('sub', [$f64('1'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'sub_68',
        () =>
            m.call('sub', [$f64('8000000000000001'), $f64('FFF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'sub_69',
        () =>
            m.call('sub', [$f64('8000000000000001'), $f64('7FF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'sub_70',
        () => m.call('sub', [$f64('1'), $f64('FFF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'sub_71',
        () => m.call('sub', [$f64('1'), $f64('7FF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'sub_72',
        () =>
            m.call('sub', [$f64('8000000000000001'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'sub_73',
        () =>
            m.call('sub', [$f64('8000000000000001'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'sub_74',
        () =>
            m.call('sub', [$f64('8000000000000001'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'sub_75',
        () =>
            m.call('sub', [$f64('8000000000000001'), $f64('7FF4000000000000')]),
        double.nan);
    returns('sub_76',
        () => m.call('sub', [$f64('1'), $f64('FFF8000000000000')]), double.nan);
    returns('sub_77',
        () => m.call('sub', [$f64('1'), $f64('FFF4000000000000')]), double.nan);
    returns('sub_78',
        () => m.call('sub', [$f64('1'), $f64('7FF8000000000000')]), double.nan);
    returns('sub_79',
        () => m.call('sub', [$f64('1'), $f64('7FF4000000000000')]), double.nan);
    returns(
        'sub_80',
        () =>
            m.call('sub', [$f64('8010000000000000'), $f64('8000000000000000')]),
        $f64('8010000000000000'));
    returns(
        'sub_81',
        () => m.call('sub', [$f64('8010000000000000'), $f64('0')]),
        $f64('8010000000000000'));
    returns(
        'sub_82',
        () => m.call('sub', [$f64('10000000000000'), $f64('8000000000000000')]),
        $f64('10000000000000'));
    returns('sub_83', () => m.call('sub', [$f64('10000000000000'), $f64('0')]),
        $f64('10000000000000'));
    returns(
        'sub_84',
        () =>
            m.call('sub', [$f64('8010000000000000'), $f64('8000000000000001')]),
        $f64('800FFFFFFFFFFFFF'));
    returns(
        'sub_85',
        () => m.call('sub', [$f64('8010000000000000'), $f64('1')]),
        $f64('8010000000000001'));
    returns(
        'sub_86',
        () => m.call('sub', [$f64('10000000000000'), $f64('8000000000000001')]),
        $f64('10000000000001'));
    returns('sub_87', () => m.call('sub', [$f64('10000000000000'), $f64('1')]),
        $f64('FFFFFFFFFFFFF'));
    returns(
        'sub_88',
        () =>
            m.call('sub', [$f64('8010000000000000'), $f64('8010000000000000')]),
        $f64('0'));
    returns(
        'sub_89',
        () => m.call('sub', [$f64('8010000000000000'), $f64('10000000000000')]),
        $f64('8020000000000000'));
    returns(
        'sub_90',
        () => m.call('sub', [$f64('10000000000000'), $f64('8010000000000000')]),
        $f64('20000000000000'));
    returns(
        'sub_91',
        () => m.call('sub', [$f64('10000000000000'), $f64('10000000000000')]),
        $f64('0'));
    returns(
        'sub_92',
        () =>
            m.call('sub', [$f64('8010000000000000'), $f64('BFE0000000000000')]),
        $f64('3FE0000000000000'));
    returns(
        'sub_93',
        () =>
            m.call('sub', [$f64('8010000000000000'), $f64('3FE0000000000000')]),
        $f64('BFE0000000000000'));
    returns(
        'sub_94',
        () => m.call('sub', [$f64('10000000000000'), $f64('BFE0000000000000')]),
        $f64('3FE0000000000000'));
    returns(
        'sub_95',
        () => m.call('sub', [$f64('10000000000000'), $f64('3FE0000000000000')]),
        $f64('BFE0000000000000'));
    returns(
        'sub_96',
        () =>
            m.call('sub', [$f64('8010000000000000'), $f64('BFF0000000000000')]),
        $f64('3FF0000000000000'));
    returns(
        'sub_97',
        () =>
            m.call('sub', [$f64('8010000000000000'), $f64('3FF0000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'sub_98',
        () => m.call('sub', [$f64('10000000000000'), $f64('BFF0000000000000')]),
        $f64('3FF0000000000000'));
    returns(
        'sub_99',
        () => m.call('sub', [$f64('10000000000000'), $f64('3FF0000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'sub_100',
        () =>
            m.call('sub', [$f64('8010000000000000'), $f64('C01921FB54442D18')]),
        $f64('401921FB54442D18'));
    returns(
        'sub_101',
        () =>
            m.call('sub', [$f64('8010000000000000'), $f64('401921FB54442D18')]),
        $f64('C01921FB54442D18'));
    returns(
        'sub_102',
        () => m.call('sub', [$f64('10000000000000'), $f64('C01921FB54442D18')]),
        $f64('401921FB54442D18'));
    returns(
        'sub_103',
        () => m.call('sub', [$f64('10000000000000'), $f64('401921FB54442D18')]),
        $f64('C01921FB54442D18'));
    returns(
        'sub_104',
        () =>
            m.call('sub', [$f64('8010000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'sub_105',
        () =>
            m.call('sub', [$f64('8010000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'sub_106',
        () => m.call('sub', [$f64('10000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'sub_107',
        () => m.call('sub', [$f64('10000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'sub_108',
        () =>
            m.call('sub', [$f64('8010000000000000'), $f64('FFF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'sub_109',
        () =>
            m.call('sub', [$f64('8010000000000000'), $f64('7FF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'sub_110',
        () => m.call('sub', [$f64('10000000000000'), $f64('FFF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'sub_111',
        () => m.call('sub', [$f64('10000000000000'), $f64('7FF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'sub_112',
        () =>
            m.call('sub', [$f64('8010000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'sub_113',
        () =>
            m.call('sub', [$f64('8010000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'sub_114',
        () =>
            m.call('sub', [$f64('8010000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'sub_115',
        () =>
            m.call('sub', [$f64('8010000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'sub_116',
        () => m.call('sub', [$f64('10000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'sub_117',
        () => m.call('sub', [$f64('10000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'sub_118',
        () => m.call('sub', [$f64('10000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'sub_119',
        () => m.call('sub', [$f64('10000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'sub_120',
        () =>
            m.call('sub', [$f64('BFE0000000000000'), $f64('8000000000000000')]),
        $f64('BFE0000000000000'));
    returns(
        'sub_121',
        () => m.call('sub', [$f64('BFE0000000000000'), $f64('0')]),
        $f64('BFE0000000000000'));
    returns(
        'sub_122',
        () =>
            m.call('sub', [$f64('3FE0000000000000'), $f64('8000000000000000')]),
        $f64('3FE0000000000000'));
    returns(
        'sub_123',
        () => m.call('sub', [$f64('3FE0000000000000'), $f64('0')]),
        $f64('3FE0000000000000'));
    returns(
        'sub_124',
        () =>
            m.call('sub', [$f64('BFE0000000000000'), $f64('8000000000000001')]),
        $f64('BFE0000000000000'));
    returns(
        'sub_125',
        () => m.call('sub', [$f64('BFE0000000000000'), $f64('1')]),
        $f64('BFE0000000000000'));
    returns(
        'sub_126',
        () =>
            m.call('sub', [$f64('3FE0000000000000'), $f64('8000000000000001')]),
        $f64('3FE0000000000000'));
    returns(
        'sub_127',
        () => m.call('sub', [$f64('3FE0000000000000'), $f64('1')]),
        $f64('3FE0000000000000'));
    returns(
        'sub_128',
        () =>
            m.call('sub', [$f64('BFE0000000000000'), $f64('8010000000000000')]),
        $f64('BFE0000000000000'));
    returns(
        'sub_129',
        () => m.call('sub', [$f64('BFE0000000000000'), $f64('10000000000000')]),
        $f64('BFE0000000000000'));
    returns(
        'sub_130',
        () =>
            m.call('sub', [$f64('3FE0000000000000'), $f64('8010000000000000')]),
        $f64('3FE0000000000000'));
    returns(
        'sub_131',
        () => m.call('sub', [$f64('3FE0000000000000'), $f64('10000000000000')]),
        $f64('3FE0000000000000'));
    returns(
        'sub_132',
        () =>
            m.call('sub', [$f64('BFE0000000000000'), $f64('BFE0000000000000')]),
        $f64('0'));
    returns(
        'sub_133',
        () =>
            m.call('sub', [$f64('BFE0000000000000'), $f64('3FE0000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'sub_134',
        () =>
            m.call('sub', [$f64('3FE0000000000000'), $f64('BFE0000000000000')]),
        $f64('3FF0000000000000'));
    returns(
        'sub_135',
        () =>
            m.call('sub', [$f64('3FE0000000000000'), $f64('3FE0000000000000')]),
        $f64('0'));
    returns(
        'sub_136',
        () =>
            m.call('sub', [$f64('BFE0000000000000'), $f64('BFF0000000000000')]),
        $f64('3FE0000000000000'));
    returns(
        'sub_137',
        () =>
            m.call('sub', [$f64('BFE0000000000000'), $f64('3FF0000000000000')]),
        $f64('BFF8000000000000'));
    returns(
        'sub_138',
        () =>
            m.call('sub', [$f64('3FE0000000000000'), $f64('BFF0000000000000')]),
        $f64('3FF8000000000000'));
    returns(
        'sub_139',
        () =>
            m.call('sub', [$f64('3FE0000000000000'), $f64('3FF0000000000000')]),
        $f64('BFE0000000000000'));
    returns(
        'sub_140',
        () =>
            m.call('sub', [$f64('BFE0000000000000'), $f64('C01921FB54442D18')]),
        $f64('401721FB54442D18'));
    returns(
        'sub_141',
        () =>
            m.call('sub', [$f64('BFE0000000000000'), $f64('401921FB54442D18')]),
        $f64('C01B21FB54442D18'));
    returns(
        'sub_142',
        () =>
            m.call('sub', [$f64('3FE0000000000000'), $f64('C01921FB54442D18')]),
        $f64('401B21FB54442D18'));
    returns(
        'sub_143',
        () =>
            m.call('sub', [$f64('3FE0000000000000'), $f64('401921FB54442D18')]),
        $f64('C01721FB54442D18'));
    returns(
        'sub_144',
        () =>
            m.call('sub', [$f64('BFE0000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'sub_145',
        () =>
            m.call('sub', [$f64('BFE0000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'sub_146',
        () =>
            m.call('sub', [$f64('3FE0000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'sub_147',
        () =>
            m.call('sub', [$f64('3FE0000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'sub_148',
        () =>
            m.call('sub', [$f64('BFE0000000000000'), $f64('FFF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'sub_149',
        () =>
            m.call('sub', [$f64('BFE0000000000000'), $f64('7FF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'sub_150',
        () =>
            m.call('sub', [$f64('3FE0000000000000'), $f64('FFF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'sub_151',
        () =>
            m.call('sub', [$f64('3FE0000000000000'), $f64('7FF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'sub_152',
        () =>
            m.call('sub', [$f64('BFE0000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'sub_153',
        () =>
            m.call('sub', [$f64('BFE0000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'sub_154',
        () =>
            m.call('sub', [$f64('BFE0000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'sub_155',
        () =>
            m.call('sub', [$f64('BFE0000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'sub_156',
        () =>
            m.call('sub', [$f64('3FE0000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'sub_157',
        () =>
            m.call('sub', [$f64('3FE0000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'sub_158',
        () =>
            m.call('sub', [$f64('3FE0000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'sub_159',
        () =>
            m.call('sub', [$f64('3FE0000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'sub_160',
        () =>
            m.call('sub', [$f64('BFF0000000000000'), $f64('8000000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'sub_161',
        () => m.call('sub', [$f64('BFF0000000000000'), $f64('0')]),
        $f64('BFF0000000000000'));
    returns(
        'sub_162',
        () =>
            m.call('sub', [$f64('3FF0000000000000'), $f64('8000000000000000')]),
        $f64('3FF0000000000000'));
    returns(
        'sub_163',
        () => m.call('sub', [$f64('3FF0000000000000'), $f64('0')]),
        $f64('3FF0000000000000'));
    returns(
        'sub_164',
        () =>
            m.call('sub', [$f64('BFF0000000000000'), $f64('8000000000000001')]),
        $f64('BFF0000000000000'));
    returns(
        'sub_165',
        () => m.call('sub', [$f64('BFF0000000000000'), $f64('1')]),
        $f64('BFF0000000000000'));
    returns(
        'sub_166',
        () =>
            m.call('sub', [$f64('3FF0000000000000'), $f64('8000000000000001')]),
        $f64('3FF0000000000000'));
    returns(
        'sub_167',
        () => m.call('sub', [$f64('3FF0000000000000'), $f64('1')]),
        $f64('3FF0000000000000'));
    returns(
        'sub_168',
        () =>
            m.call('sub', [$f64('BFF0000000000000'), $f64('8010000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'sub_169',
        () => m.call('sub', [$f64('BFF0000000000000'), $f64('10000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'sub_170',
        () =>
            m.call('sub', [$f64('3FF0000000000000'), $f64('8010000000000000')]),
        $f64('3FF0000000000000'));
    returns(
        'sub_171',
        () => m.call('sub', [$f64('3FF0000000000000'), $f64('10000000000000')]),
        $f64('3FF0000000000000'));
    returns(
        'sub_172',
        () =>
            m.call('sub', [$f64('BFF0000000000000'), $f64('BFE0000000000000')]),
        $f64('BFE0000000000000'));
    returns(
        'sub_173',
        () =>
            m.call('sub', [$f64('BFF0000000000000'), $f64('3FE0000000000000')]),
        $f64('BFF8000000000000'));
    returns(
        'sub_174',
        () =>
            m.call('sub', [$f64('3FF0000000000000'), $f64('BFE0000000000000')]),
        $f64('3FF8000000000000'));
    returns(
        'sub_175',
        () =>
            m.call('sub', [$f64('3FF0000000000000'), $f64('3FE0000000000000')]),
        $f64('3FE0000000000000'));
    returns(
        'sub_176',
        () =>
            m.call('sub', [$f64('BFF0000000000000'), $f64('BFF0000000000000')]),
        $f64('0'));
    returns(
        'sub_177',
        () =>
            m.call('sub', [$f64('BFF0000000000000'), $f64('3FF0000000000000')]),
        $f64('C000000000000000'));
    returns(
        'sub_178',
        () =>
            m.call('sub', [$f64('3FF0000000000000'), $f64('BFF0000000000000')]),
        $f64('4000000000000000'));
    returns(
        'sub_179',
        () =>
            m.call('sub', [$f64('3FF0000000000000'), $f64('3FF0000000000000')]),
        $f64('0'));
    returns(
        'sub_180',
        () =>
            m.call('sub', [$f64('BFF0000000000000'), $f64('C01921FB54442D18')]),
        $f64('401521FB54442D18'));
    returns(
        'sub_181',
        () =>
            m.call('sub', [$f64('BFF0000000000000'), $f64('401921FB54442D18')]),
        $f64('C01D21FB54442D18'));
    returns(
        'sub_182',
        () =>
            m.call('sub', [$f64('3FF0000000000000'), $f64('C01921FB54442D18')]),
        $f64('401D21FB54442D18'));
    returns(
        'sub_183',
        () =>
            m.call('sub', [$f64('3FF0000000000000'), $f64('401921FB54442D18')]),
        $f64('C01521FB54442D18'));
    returns(
        'sub_184',
        () =>
            m.call('sub', [$f64('BFF0000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'sub_185',
        () =>
            m.call('sub', [$f64('BFF0000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'sub_186',
        () =>
            m.call('sub', [$f64('3FF0000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'sub_187',
        () =>
            m.call('sub', [$f64('3FF0000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'sub_188',
        () =>
            m.call('sub', [$f64('BFF0000000000000'), $f64('FFF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'sub_189',
        () =>
            m.call('sub', [$f64('BFF0000000000000'), $f64('7FF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'sub_190',
        () =>
            m.call('sub', [$f64('3FF0000000000000'), $f64('FFF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'sub_191',
        () =>
            m.call('sub', [$f64('3FF0000000000000'), $f64('7FF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'sub_192',
        () =>
            m.call('sub', [$f64('BFF0000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'sub_193',
        () =>
            m.call('sub', [$f64('BFF0000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'sub_194',
        () =>
            m.call('sub', [$f64('BFF0000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'sub_195',
        () =>
            m.call('sub', [$f64('BFF0000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'sub_196',
        () =>
            m.call('sub', [$f64('3FF0000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'sub_197',
        () =>
            m.call('sub', [$f64('3FF0000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'sub_198',
        () =>
            m.call('sub', [$f64('3FF0000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'sub_199',
        () =>
            m.call('sub', [$f64('3FF0000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'sub_200',
        () =>
            m.call('sub', [$f64('C01921FB54442D18'), $f64('8000000000000000')]),
        $f64('C01921FB54442D18'));
    returns(
        'sub_201',
        () => m.call('sub', [$f64('C01921FB54442D18'), $f64('0')]),
        $f64('C01921FB54442D18'));
    returns(
        'sub_202',
        () =>
            m.call('sub', [$f64('401921FB54442D18'), $f64('8000000000000000')]),
        $f64('401921FB54442D18'));
    returns(
        'sub_203',
        () => m.call('sub', [$f64('401921FB54442D18'), $f64('0')]),
        $f64('401921FB54442D18'));
    returns(
        'sub_204',
        () =>
            m.call('sub', [$f64('C01921FB54442D18'), $f64('8000000000000001')]),
        $f64('C01921FB54442D18'));
    returns(
        'sub_205',
        () => m.call('sub', [$f64('C01921FB54442D18'), $f64('1')]),
        $f64('C01921FB54442D18'));
    returns(
        'sub_206',
        () =>
            m.call('sub', [$f64('401921FB54442D18'), $f64('8000000000000001')]),
        $f64('401921FB54442D18'));
    returns(
        'sub_207',
        () => m.call('sub', [$f64('401921FB54442D18'), $f64('1')]),
        $f64('401921FB54442D18'));
    returns(
        'sub_208',
        () =>
            m.call('sub', [$f64('C01921FB54442D18'), $f64('8010000000000000')]),
        $f64('C01921FB54442D18'));
    returns(
        'sub_209',
        () => m.call('sub', [$f64('C01921FB54442D18'), $f64('10000000000000')]),
        $f64('C01921FB54442D18'));
    returns(
        'sub_210',
        () =>
            m.call('sub', [$f64('401921FB54442D18'), $f64('8010000000000000')]),
        $f64('401921FB54442D18'));
    returns(
        'sub_211',
        () => m.call('sub', [$f64('401921FB54442D18'), $f64('10000000000000')]),
        $f64('401921FB54442D18'));
    returns(
        'sub_212',
        () =>
            m.call('sub', [$f64('C01921FB54442D18'), $f64('BFE0000000000000')]),
        $f64('C01721FB54442D18'));
    returns(
        'sub_213',
        () =>
            m.call('sub', [$f64('C01921FB54442D18'), $f64('3FE0000000000000')]),
        $f64('C01B21FB54442D18'));
    returns(
        'sub_214',
        () =>
            m.call('sub', [$f64('401921FB54442D18'), $f64('BFE0000000000000')]),
        $f64('401B21FB54442D18'));
    returns(
        'sub_215',
        () =>
            m.call('sub', [$f64('401921FB54442D18'), $f64('3FE0000000000000')]),
        $f64('401721FB54442D18'));
    returns(
        'sub_216',
        () =>
            m.call('sub', [$f64('C01921FB54442D18'), $f64('BFF0000000000000')]),
        $f64('C01521FB54442D18'));
    returns(
        'sub_217',
        () =>
            m.call('sub', [$f64('C01921FB54442D18'), $f64('3FF0000000000000')]),
        $f64('C01D21FB54442D18'));
    returns(
        'sub_218',
        () =>
            m.call('sub', [$f64('401921FB54442D18'), $f64('BFF0000000000000')]),
        $f64('401D21FB54442D18'));
    returns(
        'sub_219',
        () =>
            m.call('sub', [$f64('401921FB54442D18'), $f64('3FF0000000000000')]),
        $f64('401521FB54442D18'));
    returns(
        'sub_220',
        () =>
            m.call('sub', [$f64('C01921FB54442D18'), $f64('C01921FB54442D18')]),
        $f64('0'));
    returns(
        'sub_221',
        () =>
            m.call('sub', [$f64('C01921FB54442D18'), $f64('401921FB54442D18')]),
        $f64('C02921FB54442D18'));
    returns(
        'sub_222',
        () =>
            m.call('sub', [$f64('401921FB54442D18'), $f64('C01921FB54442D18')]),
        $f64('402921FB54442D18'));
    returns(
        'sub_223',
        () =>
            m.call('sub', [$f64('401921FB54442D18'), $f64('401921FB54442D18')]),
        $f64('0'));
    returns(
        'sub_224',
        () =>
            m.call('sub', [$f64('C01921FB54442D18'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'sub_225',
        () =>
            m.call('sub', [$f64('C01921FB54442D18'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'sub_226',
        () =>
            m.call('sub', [$f64('401921FB54442D18'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'sub_227',
        () =>
            m.call('sub', [$f64('401921FB54442D18'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'sub_228',
        () =>
            m.call('sub', [$f64('C01921FB54442D18'), $f64('FFF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'sub_229',
        () =>
            m.call('sub', [$f64('C01921FB54442D18'), $f64('7FF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'sub_230',
        () =>
            m.call('sub', [$f64('401921FB54442D18'), $f64('FFF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'sub_231',
        () =>
            m.call('sub', [$f64('401921FB54442D18'), $f64('7FF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'sub_232',
        () =>
            m.call('sub', [$f64('C01921FB54442D18'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'sub_233',
        () =>
            m.call('sub', [$f64('C01921FB54442D18'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'sub_234',
        () =>
            m.call('sub', [$f64('C01921FB54442D18'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'sub_235',
        () =>
            m.call('sub', [$f64('C01921FB54442D18'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'sub_236',
        () =>
            m.call('sub', [$f64('401921FB54442D18'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'sub_237',
        () =>
            m.call('sub', [$f64('401921FB54442D18'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'sub_238',
        () =>
            m.call('sub', [$f64('401921FB54442D18'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'sub_239',
        () =>
            m.call('sub', [$f64('401921FB54442D18'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'sub_240',
        () =>
            m.call('sub', [$f64('FFEFFFFFFFFFFFFF'), $f64('8000000000000000')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'sub_241',
        () => m.call('sub', [$f64('FFEFFFFFFFFFFFFF'), $f64('0')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'sub_242',
        () =>
            m.call('sub', [$f64('7FEFFFFFFFFFFFFF'), $f64('8000000000000000')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'sub_243',
        () => m.call('sub', [$f64('7FEFFFFFFFFFFFFF'), $f64('0')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'sub_244',
        () =>
            m.call('sub', [$f64('FFEFFFFFFFFFFFFF'), $f64('8000000000000001')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'sub_245',
        () => m.call('sub', [$f64('FFEFFFFFFFFFFFFF'), $f64('1')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'sub_246',
        () =>
            m.call('sub', [$f64('7FEFFFFFFFFFFFFF'), $f64('8000000000000001')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'sub_247',
        () => m.call('sub', [$f64('7FEFFFFFFFFFFFFF'), $f64('1')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'sub_248',
        () =>
            m.call('sub', [$f64('FFEFFFFFFFFFFFFF'), $f64('8010000000000000')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'sub_249',
        () => m.call('sub', [$f64('FFEFFFFFFFFFFFFF'), $f64('10000000000000')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'sub_250',
        () =>
            m.call('sub', [$f64('7FEFFFFFFFFFFFFF'), $f64('8010000000000000')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'sub_251',
        () => m.call('sub', [$f64('7FEFFFFFFFFFFFFF'), $f64('10000000000000')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'sub_252',
        () =>
            m.call('sub', [$f64('FFEFFFFFFFFFFFFF'), $f64('BFE0000000000000')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'sub_253',
        () =>
            m.call('sub', [$f64('FFEFFFFFFFFFFFFF'), $f64('3FE0000000000000')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'sub_254',
        () =>
            m.call('sub', [$f64('7FEFFFFFFFFFFFFF'), $f64('BFE0000000000000')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'sub_255',
        () =>
            m.call('sub', [$f64('7FEFFFFFFFFFFFFF'), $f64('3FE0000000000000')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'sub_256',
        () =>
            m.call('sub', [$f64('FFEFFFFFFFFFFFFF'), $f64('BFF0000000000000')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'sub_257',
        () =>
            m.call('sub', [$f64('FFEFFFFFFFFFFFFF'), $f64('3FF0000000000000')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'sub_258',
        () =>
            m.call('sub', [$f64('7FEFFFFFFFFFFFFF'), $f64('BFF0000000000000')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'sub_259',
        () =>
            m.call('sub', [$f64('7FEFFFFFFFFFFFFF'), $f64('3FF0000000000000')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'sub_260',
        () =>
            m.call('sub', [$f64('FFEFFFFFFFFFFFFF'), $f64('C01921FB54442D18')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'sub_261',
        () =>
            m.call('sub', [$f64('FFEFFFFFFFFFFFFF'), $f64('401921FB54442D18')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'sub_262',
        () =>
            m.call('sub', [$f64('7FEFFFFFFFFFFFFF'), $f64('C01921FB54442D18')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'sub_263',
        () =>
            m.call('sub', [$f64('7FEFFFFFFFFFFFFF'), $f64('401921FB54442D18')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'sub_264',
        () =>
            m.call('sub', [$f64('FFEFFFFFFFFFFFFF'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('0'));
    returns(
        'sub_265',
        () =>
            m.call('sub', [$f64('FFEFFFFFFFFFFFFF'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('FFF0000000000000'));
    returns(
        'sub_266',
        () =>
            m.call('sub', [$f64('7FEFFFFFFFFFFFFF'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('7FF0000000000000'));
    returns(
        'sub_267',
        () =>
            m.call('sub', [$f64('7FEFFFFFFFFFFFFF'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('0'));
    returns(
        'sub_268',
        () =>
            m.call('sub', [$f64('FFEFFFFFFFFFFFFF'), $f64('FFF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'sub_269',
        () =>
            m.call('sub', [$f64('FFEFFFFFFFFFFFFF'), $f64('7FF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'sub_270',
        () =>
            m.call('sub', [$f64('7FEFFFFFFFFFFFFF'), $f64('FFF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'sub_271',
        () =>
            m.call('sub', [$f64('7FEFFFFFFFFFFFFF'), $f64('7FF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'sub_272',
        () =>
            m.call('sub', [$f64('FFEFFFFFFFFFFFFF'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'sub_273',
        () =>
            m.call('sub', [$f64('FFEFFFFFFFFFFFFF'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'sub_274',
        () =>
            m.call('sub', [$f64('FFEFFFFFFFFFFFFF'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'sub_275',
        () =>
            m.call('sub', [$f64('FFEFFFFFFFFFFFFF'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'sub_276',
        () =>
            m.call('sub', [$f64('7FEFFFFFFFFFFFFF'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'sub_277',
        () =>
            m.call('sub', [$f64('7FEFFFFFFFFFFFFF'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'sub_278',
        () =>
            m.call('sub', [$f64('7FEFFFFFFFFFFFFF'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'sub_279',
        () =>
            m.call('sub', [$f64('7FEFFFFFFFFFFFFF'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'sub_280',
        () =>
            m.call('sub', [$f64('FFF0000000000000'), $f64('8000000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'sub_281',
        () => m.call('sub', [$f64('FFF0000000000000'), $f64('0')]),
        $f64('FFF0000000000000'));
    returns(
        'sub_282',
        () =>
            m.call('sub', [$f64('7FF0000000000000'), $f64('8000000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'sub_283',
        () => m.call('sub', [$f64('7FF0000000000000'), $f64('0')]),
        $f64('7FF0000000000000'));
    returns(
        'sub_284',
        () =>
            m.call('sub', [$f64('FFF0000000000000'), $f64('8000000000000001')]),
        $f64('FFF0000000000000'));
    returns(
        'sub_285',
        () => m.call('sub', [$f64('FFF0000000000000'), $f64('1')]),
        $f64('FFF0000000000000'));
    returns(
        'sub_286',
        () =>
            m.call('sub', [$f64('7FF0000000000000'), $f64('8000000000000001')]),
        $f64('7FF0000000000000'));
    returns(
        'sub_287',
        () => m.call('sub', [$f64('7FF0000000000000'), $f64('1')]),
        $f64('7FF0000000000000'));
    returns(
        'sub_288',
        () =>
            m.call('sub', [$f64('FFF0000000000000'), $f64('8010000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'sub_289',
        () => m.call('sub', [$f64('FFF0000000000000'), $f64('10000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'sub_290',
        () =>
            m.call('sub', [$f64('7FF0000000000000'), $f64('8010000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'sub_291',
        () => m.call('sub', [$f64('7FF0000000000000'), $f64('10000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'sub_292',
        () =>
            m.call('sub', [$f64('FFF0000000000000'), $f64('BFE0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'sub_293',
        () =>
            m.call('sub', [$f64('FFF0000000000000'), $f64('3FE0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'sub_294',
        () =>
            m.call('sub', [$f64('7FF0000000000000'), $f64('BFE0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'sub_295',
        () =>
            m.call('sub', [$f64('7FF0000000000000'), $f64('3FE0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'sub_296',
        () =>
            m.call('sub', [$f64('FFF0000000000000'), $f64('BFF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'sub_297',
        () =>
            m.call('sub', [$f64('FFF0000000000000'), $f64('3FF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'sub_298',
        () =>
            m.call('sub', [$f64('7FF0000000000000'), $f64('BFF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'sub_299',
        () =>
            m.call('sub', [$f64('7FF0000000000000'), $f64('3FF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'sub_300',
        () =>
            m.call('sub', [$f64('FFF0000000000000'), $f64('C01921FB54442D18')]),
        $f64('FFF0000000000000'));
    returns(
        'sub_301',
        () =>
            m.call('sub', [$f64('FFF0000000000000'), $f64('401921FB54442D18')]),
        $f64('FFF0000000000000'));
    returns(
        'sub_302',
        () =>
            m.call('sub', [$f64('7FF0000000000000'), $f64('C01921FB54442D18')]),
        $f64('7FF0000000000000'));
    returns(
        'sub_303',
        () =>
            m.call('sub', [$f64('7FF0000000000000'), $f64('401921FB54442D18')]),
        $f64('7FF0000000000000'));
    returns(
        'sub_304',
        () =>
            m.call('sub', [$f64('FFF0000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('FFF0000000000000'));
    returns(
        'sub_305',
        () =>
            m.call('sub', [$f64('FFF0000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('FFF0000000000000'));
    returns(
        'sub_306',
        () =>
            m.call('sub', [$f64('7FF0000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('7FF0000000000000'));
    returns(
        'sub_307',
        () =>
            m.call('sub', [$f64('7FF0000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('7FF0000000000000'));
    returns(
        'sub_308',
        () =>
            m.call('sub', [$f64('FFF0000000000000'), $f64('FFF0000000000000')]),
        double.nan);
    returns(
        'sub_309',
        () =>
            m.call('sub', [$f64('FFF0000000000000'), $f64('7FF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'sub_310',
        () =>
            m.call('sub', [$f64('7FF0000000000000'), $f64('FFF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'sub_311',
        () =>
            m.call('sub', [$f64('7FF0000000000000'), $f64('7FF0000000000000')]),
        double.nan);
    returns(
        'sub_312',
        () =>
            m.call('sub', [$f64('FFF0000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'sub_313',
        () =>
            m.call('sub', [$f64('FFF0000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'sub_314',
        () =>
            m.call('sub', [$f64('FFF0000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'sub_315',
        () =>
            m.call('sub', [$f64('FFF0000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'sub_316',
        () =>
            m.call('sub', [$f64('7FF0000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'sub_317',
        () =>
            m.call('sub', [$f64('7FF0000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'sub_318',
        () =>
            m.call('sub', [$f64('7FF0000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'sub_319',
        () =>
            m.call('sub', [$f64('7FF0000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'sub_320',
        () =>
            m.call('sub', [$f64('FFF8000000000000'), $f64('8000000000000000')]),
        double.nan);
    returns(
        'sub_321',
        () =>
            m.call('sub', [$f64('FFF4000000000000'), $f64('8000000000000000')]),
        double.nan);
    returns('sub_322',
        () => m.call('sub', [$f64('FFF8000000000000'), $f64('0')]), double.nan);
    returns('sub_323',
        () => m.call('sub', [$f64('FFF4000000000000'), $f64('0')]), double.nan);
    returns(
        'sub_324',
        () =>
            m.call('sub', [$f64('7FF8000000000000'), $f64('8000000000000000')]),
        double.nan);
    returns(
        'sub_325',
        () =>
            m.call('sub', [$f64('7FF4000000000000'), $f64('8000000000000000')]),
        double.nan);
    returns('sub_326',
        () => m.call('sub', [$f64('7FF8000000000000'), $f64('0')]), double.nan);
    returns('sub_327',
        () => m.call('sub', [$f64('7FF4000000000000'), $f64('0')]), double.nan);
    returns(
        'sub_328',
        () =>
            m.call('sub', [$f64('FFF8000000000000'), $f64('8000000000000001')]),
        double.nan);
    returns(
        'sub_329',
        () =>
            m.call('sub', [$f64('FFF4000000000000'), $f64('8000000000000001')]),
        double.nan);
    returns('sub_330',
        () => m.call('sub', [$f64('FFF8000000000000'), $f64('1')]), double.nan);
    returns('sub_331',
        () => m.call('sub', [$f64('FFF4000000000000'), $f64('1')]), double.nan);
    returns(
        'sub_332',
        () =>
            m.call('sub', [$f64('7FF8000000000000'), $f64('8000000000000001')]),
        double.nan);
    returns(
        'sub_333',
        () =>
            m.call('sub', [$f64('7FF4000000000000'), $f64('8000000000000001')]),
        double.nan);
    returns('sub_334',
        () => m.call('sub', [$f64('7FF8000000000000'), $f64('1')]), double.nan);
    returns('sub_335',
        () => m.call('sub', [$f64('7FF4000000000000'), $f64('1')]), double.nan);
    returns(
        'sub_336',
        () =>
            m.call('sub', [$f64('FFF8000000000000'), $f64('8010000000000000')]),
        double.nan);
    returns(
        'sub_337',
        () =>
            m.call('sub', [$f64('FFF4000000000000'), $f64('8010000000000000')]),
        double.nan);
    returns(
        'sub_338',
        () => m.call('sub', [$f64('FFF8000000000000'), $f64('10000000000000')]),
        double.nan);
    returns(
        'sub_339',
        () => m.call('sub', [$f64('FFF4000000000000'), $f64('10000000000000')]),
        double.nan);
    returns(
        'sub_340',
        () =>
            m.call('sub', [$f64('7FF8000000000000'), $f64('8010000000000000')]),
        double.nan);
    returns(
        'sub_341',
        () =>
            m.call('sub', [$f64('7FF4000000000000'), $f64('8010000000000000')]),
        double.nan);
    returns(
        'sub_342',
        () => m.call('sub', [$f64('7FF8000000000000'), $f64('10000000000000')]),
        double.nan);
    returns(
        'sub_343',
        () => m.call('sub', [$f64('7FF4000000000000'), $f64('10000000000000')]),
        double.nan);
    returns(
        'sub_344',
        () =>
            m.call('sub', [$f64('FFF8000000000000'), $f64('BFE0000000000000')]),
        double.nan);
    returns(
        'sub_345',
        () =>
            m.call('sub', [$f64('FFF4000000000000'), $f64('BFE0000000000000')]),
        double.nan);
    returns(
        'sub_346',
        () =>
            m.call('sub', [$f64('FFF8000000000000'), $f64('3FE0000000000000')]),
        double.nan);
    returns(
        'sub_347',
        () =>
            m.call('sub', [$f64('FFF4000000000000'), $f64('3FE0000000000000')]),
        double.nan);
    returns(
        'sub_348',
        () =>
            m.call('sub', [$f64('7FF8000000000000'), $f64('BFE0000000000000')]),
        double.nan);
    returns(
        'sub_349',
        () =>
            m.call('sub', [$f64('7FF4000000000000'), $f64('BFE0000000000000')]),
        double.nan);
    returns(
        'sub_350',
        () =>
            m.call('sub', [$f64('7FF8000000000000'), $f64('3FE0000000000000')]),
        double.nan);
    returns(
        'sub_351',
        () =>
            m.call('sub', [$f64('7FF4000000000000'), $f64('3FE0000000000000')]),
        double.nan);
    returns(
        'sub_352',
        () =>
            m.call('sub', [$f64('FFF8000000000000'), $f64('BFF0000000000000')]),
        double.nan);
    returns(
        'sub_353',
        () =>
            m.call('sub', [$f64('FFF4000000000000'), $f64('BFF0000000000000')]),
        double.nan);
    returns(
        'sub_354',
        () =>
            m.call('sub', [$f64('FFF8000000000000'), $f64('3FF0000000000000')]),
        double.nan);
    returns(
        'sub_355',
        () =>
            m.call('sub', [$f64('FFF4000000000000'), $f64('3FF0000000000000')]),
        double.nan);
    returns(
        'sub_356',
        () =>
            m.call('sub', [$f64('7FF8000000000000'), $f64('BFF0000000000000')]),
        double.nan);
    returns(
        'sub_357',
        () =>
            m.call('sub', [$f64('7FF4000000000000'), $f64('BFF0000000000000')]),
        double.nan);
    returns(
        'sub_358',
        () =>
            m.call('sub', [$f64('7FF8000000000000'), $f64('3FF0000000000000')]),
        double.nan);
    returns(
        'sub_359',
        () =>
            m.call('sub', [$f64('7FF4000000000000'), $f64('3FF0000000000000')]),
        double.nan);
    returns(
        'sub_360',
        () =>
            m.call('sub', [$f64('FFF8000000000000'), $f64('C01921FB54442D18')]),
        double.nan);
    returns(
        'sub_361',
        () =>
            m.call('sub', [$f64('FFF4000000000000'), $f64('C01921FB54442D18')]),
        double.nan);
    returns(
        'sub_362',
        () =>
            m.call('sub', [$f64('FFF8000000000000'), $f64('401921FB54442D18')]),
        double.nan);
    returns(
        'sub_363',
        () =>
            m.call('sub', [$f64('FFF4000000000000'), $f64('401921FB54442D18')]),
        double.nan);
    returns(
        'sub_364',
        () =>
            m.call('sub', [$f64('7FF8000000000000'), $f64('C01921FB54442D18')]),
        double.nan);
    returns(
        'sub_365',
        () =>
            m.call('sub', [$f64('7FF4000000000000'), $f64('C01921FB54442D18')]),
        double.nan);
    returns(
        'sub_366',
        () =>
            m.call('sub', [$f64('7FF8000000000000'), $f64('401921FB54442D18')]),
        double.nan);
    returns(
        'sub_367',
        () =>
            m.call('sub', [$f64('7FF4000000000000'), $f64('401921FB54442D18')]),
        double.nan);
    returns(
        'sub_368',
        () =>
            m.call('sub', [$f64('FFF8000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        double.nan);
    returns(
        'sub_369',
        () =>
            m.call('sub', [$f64('FFF4000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        double.nan);
    returns(
        'sub_370',
        () =>
            m.call('sub', [$f64('FFF8000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        double.nan);
    returns(
        'sub_371',
        () =>
            m.call('sub', [$f64('FFF4000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        double.nan);
    returns(
        'sub_372',
        () =>
            m.call('sub', [$f64('7FF8000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        double.nan);
    returns(
        'sub_373',
        () =>
            m.call('sub', [$f64('7FF4000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        double.nan);
    returns(
        'sub_374',
        () =>
            m.call('sub', [$f64('7FF8000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        double.nan);
    returns(
        'sub_375',
        () =>
            m.call('sub', [$f64('7FF4000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        double.nan);
    returns(
        'sub_376',
        () =>
            m.call('sub', [$f64('FFF8000000000000'), $f64('FFF0000000000000')]),
        double.nan);
    returns(
        'sub_377',
        () =>
            m.call('sub', [$f64('FFF4000000000000'), $f64('FFF0000000000000')]),
        double.nan);
    returns(
        'sub_378',
        () =>
            m.call('sub', [$f64('FFF8000000000000'), $f64('7FF0000000000000')]),
        double.nan);
    returns(
        'sub_379',
        () =>
            m.call('sub', [$f64('FFF4000000000000'), $f64('7FF0000000000000')]),
        double.nan);
    returns(
        'sub_380',
        () =>
            m.call('sub', [$f64('7FF8000000000000'), $f64('FFF0000000000000')]),
        double.nan);
    returns(
        'sub_381',
        () =>
            m.call('sub', [$f64('7FF4000000000000'), $f64('FFF0000000000000')]),
        double.nan);
    returns(
        'sub_382',
        () =>
            m.call('sub', [$f64('7FF8000000000000'), $f64('7FF0000000000000')]),
        double.nan);
    returns(
        'sub_383',
        () =>
            m.call('sub', [$f64('7FF4000000000000'), $f64('7FF0000000000000')]),
        double.nan);
    returns(
        'sub_384',
        () =>
            m.call('sub', [$f64('FFF8000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'sub_385',
        () =>
            m.call('sub', [$f64('FFF4000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'sub_386',
        () =>
            m.call('sub', [$f64('FFF8000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'sub_387',
        () =>
            m.call('sub', [$f64('FFF4000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'sub_388',
        () =>
            m.call('sub', [$f64('FFF8000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'sub_389',
        () =>
            m.call('sub', [$f64('FFF4000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'sub_390',
        () =>
            m.call('sub', [$f64('FFF8000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'sub_391',
        () =>
            m.call('sub', [$f64('FFF4000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'sub_392',
        () =>
            m.call('sub', [$f64('7FF8000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'sub_393',
        () =>
            m.call('sub', [$f64('7FF4000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'sub_394',
        () =>
            m.call('sub', [$f64('7FF8000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'sub_395',
        () =>
            m.call('sub', [$f64('7FF4000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'sub_396',
        () =>
            m.call('sub', [$f64('7FF8000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'sub_397',
        () =>
            m.call('sub', [$f64('7FF4000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'sub_398',
        () =>
            m.call('sub', [$f64('7FF8000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'sub_399',
        () =>
            m.call('sub', [$f64('7FF4000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'mul_0',
        () =>
            m.call('mul', [$f64('8000000000000000'), $f64('8000000000000000')]),
        $f64('0'));
    returns('mul_1', () => m.call('mul', [$f64('8000000000000000'), $f64('0')]),
        $f64('8000000000000000'));
    returns('mul_2', () => m.call('mul', [$f64('0'), $f64('8000000000000000')]),
        $f64('8000000000000000'));
    returns('mul_3', () => m.call('mul', [$f64('0'), $f64('0')]), $f64('0'));
    returns(
        'mul_4',
        () =>
            m.call('mul', [$f64('8000000000000000'), $f64('8000000000000001')]),
        $f64('0'));
    returns('mul_5', () => m.call('mul', [$f64('8000000000000000'), $f64('1')]),
        $f64('8000000000000000'));
    returns('mul_6', () => m.call('mul', [$f64('0'), $f64('8000000000000001')]),
        $f64('8000000000000000'));
    returns('mul_7', () => m.call('mul', [$f64('0'), $f64('1')]), $f64('0'));
    returns(
        'mul_8',
        () =>
            m.call('mul', [$f64('8000000000000000'), $f64('8010000000000000')]),
        $f64('0'));
    returns(
        'mul_9',
        () => m.call('mul', [$f64('8000000000000000'), $f64('10000000000000')]),
        $f64('8000000000000000'));
    returns(
        'mul_10',
        () => m.call('mul', [$f64('0'), $f64('8010000000000000')]),
        $f64('8000000000000000'));
    returns('mul_11', () => m.call('mul', [$f64('0'), $f64('10000000000000')]),
        $f64('0'));
    returns(
        'mul_12',
        () =>
            m.call('mul', [$f64('8000000000000000'), $f64('BFE0000000000000')]),
        $f64('0'));
    returns(
        'mul_13',
        () =>
            m.call('mul', [$f64('8000000000000000'), $f64('3FE0000000000000')]),
        $f64('8000000000000000'));
    returns(
        'mul_14',
        () => m.call('mul', [$f64('0'), $f64('BFE0000000000000')]),
        $f64('8000000000000000'));
    returns('mul_15',
        () => m.call('mul', [$f64('0'), $f64('3FE0000000000000')]), $f64('0'));
    returns(
        'mul_16',
        () =>
            m.call('mul', [$f64('8000000000000000'), $f64('BFF0000000000000')]),
        $f64('0'));
    returns(
        'mul_17',
        () =>
            m.call('mul', [$f64('8000000000000000'), $f64('3FF0000000000000')]),
        $f64('8000000000000000'));
    returns(
        'mul_18',
        () => m.call('mul', [$f64('0'), $f64('BFF0000000000000')]),
        $f64('8000000000000000'));
    returns('mul_19',
        () => m.call('mul', [$f64('0'), $f64('3FF0000000000000')]), $f64('0'));
    returns(
        'mul_20',
        () =>
            m.call('mul', [$f64('8000000000000000'), $f64('C01921FB54442D18')]),
        $f64('0'));
    returns(
        'mul_21',
        () =>
            m.call('mul', [$f64('8000000000000000'), $f64('401921FB54442D18')]),
        $f64('8000000000000000'));
    returns(
        'mul_22',
        () => m.call('mul', [$f64('0'), $f64('C01921FB54442D18')]),
        $f64('8000000000000000'));
    returns('mul_23',
        () => m.call('mul', [$f64('0'), $f64('401921FB54442D18')]), $f64('0'));
    returns(
        'mul_24',
        () =>
            m.call('mul', [$f64('8000000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('0'));
    returns(
        'mul_25',
        () =>
            m.call('mul', [$f64('8000000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('8000000000000000'));
    returns(
        'mul_26',
        () => m.call('mul', [$f64('0'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('8000000000000000'));
    returns('mul_27',
        () => m.call('mul', [$f64('0'), $f64('7FEFFFFFFFFFFFFF')]), $f64('0'));
    returns(
        'mul_28',
        () =>
            m.call('mul', [$f64('8000000000000000'), $f64('FFF0000000000000')]),
        double.nan);
    returns(
        'mul_29',
        () =>
            m.call('mul', [$f64('8000000000000000'), $f64('7FF0000000000000')]),
        double.nan);
    returns('mul_30',
        () => m.call('mul', [$f64('0'), $f64('FFF0000000000000')]), double.nan);
    returns('mul_31',
        () => m.call('mul', [$f64('0'), $f64('7FF0000000000000')]), double.nan);
    returns(
        'mul_32',
        () =>
            m.call('mul', [$f64('8000000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'mul_33',
        () =>
            m.call('mul', [$f64('8000000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'mul_34',
        () =>
            m.call('mul', [$f64('8000000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'mul_35',
        () =>
            m.call('mul', [$f64('8000000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns('mul_36',
        () => m.call('mul', [$f64('0'), $f64('FFF8000000000000')]), double.nan);
    returns('mul_37',
        () => m.call('mul', [$f64('0'), $f64('FFF4000000000000')]), double.nan);
    returns('mul_38',
        () => m.call('mul', [$f64('0'), $f64('7FF8000000000000')]), double.nan);
    returns('mul_39',
        () => m.call('mul', [$f64('0'), $f64('7FF4000000000000')]), double.nan);
    returns(
        'mul_40',
        () =>
            m.call('mul', [$f64('8000000000000001'), $f64('8000000000000000')]),
        $f64('0'));
    returns(
        'mul_41',
        () => m.call('mul', [$f64('8000000000000001'), $f64('0')]),
        $f64('8000000000000000'));
    returns(
        'mul_42',
        () => m.call('mul', [$f64('1'), $f64('8000000000000000')]),
        $f64('8000000000000000'));
    returns('mul_43', () => m.call('mul', [$f64('1'), $f64('0')]), $f64('0'));
    returns(
        'mul_44',
        () =>
            m.call('mul', [$f64('8000000000000001'), $f64('8000000000000001')]),
        $f64('0'));
    returns(
        'mul_45',
        () => m.call('mul', [$f64('8000000000000001'), $f64('1')]),
        $f64('8000000000000000'));
    returns(
        'mul_46',
        () => m.call('mul', [$f64('1'), $f64('8000000000000001')]),
        $f64('8000000000000000'));
    returns('mul_47', () => m.call('mul', [$f64('1'), $f64('1')]), $f64('0'));
    returns(
        'mul_48',
        () =>
            m.call('mul', [$f64('8000000000000001'), $f64('8010000000000000')]),
        $f64('0'));
    returns(
        'mul_49',
        () => m.call('mul', [$f64('8000000000000001'), $f64('10000000000000')]),
        $f64('8000000000000000'));
    returns(
        'mul_50',
        () => m.call('mul', [$f64('1'), $f64('8010000000000000')]),
        $f64('8000000000000000'));
    returns('mul_51', () => m.call('mul', [$f64('1'), $f64('10000000000000')]),
        $f64('0'));
    returns(
        'mul_52',
        () =>
            m.call('mul', [$f64('8000000000000001'), $f64('BFE0000000000000')]),
        $f64('0'));
    returns(
        'mul_53',
        () =>
            m.call('mul', [$f64('8000000000000001'), $f64('3FE0000000000000')]),
        $f64('8000000000000000'));
    returns(
        'mul_54',
        () => m.call('mul', [$f64('1'), $f64('BFE0000000000000')]),
        $f64('8000000000000000'));
    returns('mul_55',
        () => m.call('mul', [$f64('1'), $f64('3FE0000000000000')]), $f64('0'));
    returns(
        'mul_56',
        () =>
            m.call('mul', [$f64('8000000000000001'), $f64('BFF0000000000000')]),
        $f64('1'));
    returns(
        'mul_57',
        () =>
            m.call('mul', [$f64('8000000000000001'), $f64('3FF0000000000000')]),
        $f64('8000000000000001'));
    returns(
        'mul_58',
        () => m.call('mul', [$f64('1'), $f64('BFF0000000000000')]),
        $f64('8000000000000001'));
    returns('mul_59',
        () => m.call('mul', [$f64('1'), $f64('3FF0000000000000')]), $f64('1'));
    returns(
        'mul_60',
        () =>
            m.call('mul', [$f64('8000000000000001'), $f64('C01921FB54442D18')]),
        $f64('6'));
    returns(
        'mul_61',
        () =>
            m.call('mul', [$f64('8000000000000001'), $f64('401921FB54442D18')]),
        $f64('8000000000000006'));
    returns(
        'mul_62',
        () => m.call('mul', [$f64('1'), $f64('C01921FB54442D18')]),
        $f64('8000000000000006'));
    returns('mul_63',
        () => m.call('mul', [$f64('1'), $f64('401921FB54442D18')]), $f64('6'));
    returns(
        'mul_64',
        () =>
            m.call('mul', [$f64('8000000000000001'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('3CCFFFFFFFFFFFFF'));
    returns(
        'mul_65',
        () =>
            m.call('mul', [$f64('8000000000000001'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('BCCFFFFFFFFFFFFF'));
    returns(
        'mul_66',
        () => m.call('mul', [$f64('1'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('BCCFFFFFFFFFFFFF'));
    returns(
        'mul_67',
        () => m.call('mul', [$f64('1'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('3CCFFFFFFFFFFFFF'));
    returns(
        'mul_68',
        () =>
            m.call('mul', [$f64('8000000000000001'), $f64('FFF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'mul_69',
        () =>
            m.call('mul', [$f64('8000000000000001'), $f64('7FF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'mul_70',
        () => m.call('mul', [$f64('1'), $f64('FFF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'mul_71',
        () => m.call('mul', [$f64('1'), $f64('7FF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'mul_72',
        () =>
            m.call('mul', [$f64('8000000000000001'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'mul_73',
        () =>
            m.call('mul', [$f64('8000000000000001'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'mul_74',
        () =>
            m.call('mul', [$f64('8000000000000001'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'mul_75',
        () =>
            m.call('mul', [$f64('8000000000000001'), $f64('7FF4000000000000')]),
        double.nan);
    returns('mul_76',
        () => m.call('mul', [$f64('1'), $f64('FFF8000000000000')]), double.nan);
    returns('mul_77',
        () => m.call('mul', [$f64('1'), $f64('FFF4000000000000')]), double.nan);
    returns('mul_78',
        () => m.call('mul', [$f64('1'), $f64('7FF8000000000000')]), double.nan);
    returns('mul_79',
        () => m.call('mul', [$f64('1'), $f64('7FF4000000000000')]), double.nan);
    returns(
        'mul_80',
        () =>
            m.call('mul', [$f64('8010000000000000'), $f64('8000000000000000')]),
        $f64('0'));
    returns(
        'mul_81',
        () => m.call('mul', [$f64('8010000000000000'), $f64('0')]),
        $f64('8000000000000000'));
    returns(
        'mul_82',
        () => m.call('mul', [$f64('10000000000000'), $f64('8000000000000000')]),
        $f64('8000000000000000'));
    returns('mul_83', () => m.call('mul', [$f64('10000000000000'), $f64('0')]),
        $f64('0'));
    returns(
        'mul_84',
        () =>
            m.call('mul', [$f64('8010000000000000'), $f64('8000000000000001')]),
        $f64('0'));
    returns(
        'mul_85',
        () => m.call('mul', [$f64('8010000000000000'), $f64('1')]),
        $f64('8000000000000000'));
    returns(
        'mul_86',
        () => m.call('mul', [$f64('10000000000000'), $f64('8000000000000001')]),
        $f64('8000000000000000'));
    returns('mul_87', () => m.call('mul', [$f64('10000000000000'), $f64('1')]),
        $f64('0'));
    returns(
        'mul_88',
        () =>
            m.call('mul', [$f64('8010000000000000'), $f64('8010000000000000')]),
        $f64('0'));
    returns(
        'mul_89',
        () => m.call('mul', [$f64('8010000000000000'), $f64('10000000000000')]),
        $f64('8000000000000000'));
    returns(
        'mul_90',
        () => m.call('mul', [$f64('10000000000000'), $f64('8010000000000000')]),
        $f64('8000000000000000'));
    returns(
        'mul_91',
        () => m.call('mul', [$f64('10000000000000'), $f64('10000000000000')]),
        $f64('0'));
    returns(
        'mul_92',
        () =>
            m.call('mul', [$f64('8010000000000000'), $f64('BFE0000000000000')]),
        $f64('8000000000000'));
    returns(
        'mul_93',
        () =>
            m.call('mul', [$f64('8010000000000000'), $f64('3FE0000000000000')]),
        $f64('8008000000000000'));
    returns(
        'mul_94',
        () => m.call('mul', [$f64('10000000000000'), $f64('BFE0000000000000')]),
        $f64('8008000000000000'));
    returns(
        'mul_95',
        () => m.call('mul', [$f64('10000000000000'), $f64('3FE0000000000000')]),
        $f64('8000000000000'));
    returns(
        'mul_96',
        () =>
            m.call('mul', [$f64('8010000000000000'), $f64('BFF0000000000000')]),
        $f64('10000000000000'));
    returns(
        'mul_97',
        () =>
            m.call('mul', [$f64('8010000000000000'), $f64('3FF0000000000000')]),
        $f64('8010000000000000'));
    returns(
        'mul_98',
        () => m.call('mul', [$f64('10000000000000'), $f64('BFF0000000000000')]),
        $f64('8010000000000000'));
    returns(
        'mul_99',
        () => m.call('mul', [$f64('10000000000000'), $f64('3FF0000000000000')]),
        $f64('10000000000000'));
    returns(
        'mul_100',
        () =>
            m.call('mul', [$f64('8010000000000000'), $f64('C01921FB54442D18')]),
        $f64('3921FB54442D18'));
    returns(
        'mul_101',
        () =>
            m.call('mul', [$f64('8010000000000000'), $f64('401921FB54442D18')]),
        $f64('803921FB54442D18'));
    returns(
        'mul_102',
        () => m.call('mul', [$f64('10000000000000'), $f64('C01921FB54442D18')]),
        $f64('803921FB54442D18'));
    returns(
        'mul_103',
        () => m.call('mul', [$f64('10000000000000'), $f64('401921FB54442D18')]),
        $f64('3921FB54442D18'));
    returns(
        'mul_104',
        () =>
            m.call('mul', [$f64('8010000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('400FFFFFFFFFFFFF'));
    returns(
        'mul_105',
        () =>
            m.call('mul', [$f64('8010000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('C00FFFFFFFFFFFFF'));
    returns(
        'mul_106',
        () => m.call('mul', [$f64('10000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('C00FFFFFFFFFFFFF'));
    returns(
        'mul_107',
        () => m.call('mul', [$f64('10000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('400FFFFFFFFFFFFF'));
    returns(
        'mul_108',
        () =>
            m.call('mul', [$f64('8010000000000000'), $f64('FFF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'mul_109',
        () =>
            m.call('mul', [$f64('8010000000000000'), $f64('7FF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'mul_110',
        () => m.call('mul', [$f64('10000000000000'), $f64('FFF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'mul_111',
        () => m.call('mul', [$f64('10000000000000'), $f64('7FF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'mul_112',
        () =>
            m.call('mul', [$f64('8010000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'mul_113',
        () =>
            m.call('mul', [$f64('8010000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'mul_114',
        () =>
            m.call('mul', [$f64('8010000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'mul_115',
        () =>
            m.call('mul', [$f64('8010000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'mul_116',
        () => m.call('mul', [$f64('10000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'mul_117',
        () => m.call('mul', [$f64('10000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'mul_118',
        () => m.call('mul', [$f64('10000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'mul_119',
        () => m.call('mul', [$f64('10000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'mul_120',
        () =>
            m.call('mul', [$f64('BFE0000000000000'), $f64('8000000000000000')]),
        $f64('0'));
    returns(
        'mul_121',
        () => m.call('mul', [$f64('BFE0000000000000'), $f64('0')]),
        $f64('8000000000000000'));
    returns(
        'mul_122',
        () =>
            m.call('mul', [$f64('3FE0000000000000'), $f64('8000000000000000')]),
        $f64('8000000000000000'));
    returns('mul_123',
        () => m.call('mul', [$f64('3FE0000000000000'), $f64('0')]), $f64('0'));
    returns(
        'mul_124',
        () =>
            m.call('mul', [$f64('BFE0000000000000'), $f64('8000000000000001')]),
        $f64('0'));
    returns(
        'mul_125',
        () => m.call('mul', [$f64('BFE0000000000000'), $f64('1')]),
        $f64('8000000000000000'));
    returns(
        'mul_126',
        () =>
            m.call('mul', [$f64('3FE0000000000000'), $f64('8000000000000001')]),
        $f64('8000000000000000'));
    returns('mul_127',
        () => m.call('mul', [$f64('3FE0000000000000'), $f64('1')]), $f64('0'));
    returns(
        'mul_128',
        () =>
            m.call('mul', [$f64('BFE0000000000000'), $f64('8010000000000000')]),
        $f64('8000000000000'));
    returns(
        'mul_129',
        () => m.call('mul', [$f64('BFE0000000000000'), $f64('10000000000000')]),
        $f64('8008000000000000'));
    returns(
        'mul_130',
        () =>
            m.call('mul', [$f64('3FE0000000000000'), $f64('8010000000000000')]),
        $f64('8008000000000000'));
    returns(
        'mul_131',
        () => m.call('mul', [$f64('3FE0000000000000'), $f64('10000000000000')]),
        $f64('8000000000000'));
    returns(
        'mul_132',
        () =>
            m.call('mul', [$f64('BFE0000000000000'), $f64('BFE0000000000000')]),
        $f64('3FD0000000000000'));
    returns(
        'mul_133',
        () =>
            m.call('mul', [$f64('BFE0000000000000'), $f64('3FE0000000000000')]),
        $f64('BFD0000000000000'));
    returns(
        'mul_134',
        () =>
            m.call('mul', [$f64('3FE0000000000000'), $f64('BFE0000000000000')]),
        $f64('BFD0000000000000'));
    returns(
        'mul_135',
        () =>
            m.call('mul', [$f64('3FE0000000000000'), $f64('3FE0000000000000')]),
        $f64('3FD0000000000000'));
    returns(
        'mul_136',
        () =>
            m.call('mul', [$f64('BFE0000000000000'), $f64('BFF0000000000000')]),
        $f64('3FE0000000000000'));
    returns(
        'mul_137',
        () =>
            m.call('mul', [$f64('BFE0000000000000'), $f64('3FF0000000000000')]),
        $f64('BFE0000000000000'));
    returns(
        'mul_138',
        () =>
            m.call('mul', [$f64('3FE0000000000000'), $f64('BFF0000000000000')]),
        $f64('BFE0000000000000'));
    returns(
        'mul_139',
        () =>
            m.call('mul', [$f64('3FE0000000000000'), $f64('3FF0000000000000')]),
        $f64('3FE0000000000000'));
    returns(
        'mul_140',
        () =>
            m.call('mul', [$f64('BFE0000000000000'), $f64('C01921FB54442D18')]),
        $f64('400921FB54442D18'));
    returns(
        'mul_141',
        () =>
            m.call('mul', [$f64('BFE0000000000000'), $f64('401921FB54442D18')]),
        $f64('C00921FB54442D18'));
    returns(
        'mul_142',
        () =>
            m.call('mul', [$f64('3FE0000000000000'), $f64('C01921FB54442D18')]),
        $f64('C00921FB54442D18'));
    returns(
        'mul_143',
        () =>
            m.call('mul', [$f64('3FE0000000000000'), $f64('401921FB54442D18')]),
        $f64('400921FB54442D18'));
    returns(
        'mul_144',
        () =>
            m.call('mul', [$f64('BFE0000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('7FDFFFFFFFFFFFFF'));
    returns(
        'mul_145',
        () =>
            m.call('mul', [$f64('BFE0000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('FFDFFFFFFFFFFFFF'));
    returns(
        'mul_146',
        () =>
            m.call('mul', [$f64('3FE0000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('FFDFFFFFFFFFFFFF'));
    returns(
        'mul_147',
        () =>
            m.call('mul', [$f64('3FE0000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('7FDFFFFFFFFFFFFF'));
    returns(
        'mul_148',
        () =>
            m.call('mul', [$f64('BFE0000000000000'), $f64('FFF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'mul_149',
        () =>
            m.call('mul', [$f64('BFE0000000000000'), $f64('7FF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'mul_150',
        () =>
            m.call('mul', [$f64('3FE0000000000000'), $f64('FFF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'mul_151',
        () =>
            m.call('mul', [$f64('3FE0000000000000'), $f64('7FF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'mul_152',
        () =>
            m.call('mul', [$f64('BFE0000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'mul_153',
        () =>
            m.call('mul', [$f64('BFE0000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'mul_154',
        () =>
            m.call('mul', [$f64('BFE0000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'mul_155',
        () =>
            m.call('mul', [$f64('BFE0000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'mul_156',
        () =>
            m.call('mul', [$f64('3FE0000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'mul_157',
        () =>
            m.call('mul', [$f64('3FE0000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'mul_158',
        () =>
            m.call('mul', [$f64('3FE0000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'mul_159',
        () =>
            m.call('mul', [$f64('3FE0000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'mul_160',
        () =>
            m.call('mul', [$f64('BFF0000000000000'), $f64('8000000000000000')]),
        $f64('0'));
    returns(
        'mul_161',
        () => m.call('mul', [$f64('BFF0000000000000'), $f64('0')]),
        $f64('8000000000000000'));
    returns(
        'mul_162',
        () =>
            m.call('mul', [$f64('3FF0000000000000'), $f64('8000000000000000')]),
        $f64('8000000000000000'));
    returns('mul_163',
        () => m.call('mul', [$f64('3FF0000000000000'), $f64('0')]), $f64('0'));
    returns(
        'mul_164',
        () =>
            m.call('mul', [$f64('BFF0000000000000'), $f64('8000000000000001')]),
        $f64('1'));
    returns(
        'mul_165',
        () => m.call('mul', [$f64('BFF0000000000000'), $f64('1')]),
        $f64('8000000000000001'));
    returns(
        'mul_166',
        () =>
            m.call('mul', [$f64('3FF0000000000000'), $f64('8000000000000001')]),
        $f64('8000000000000001'));
    returns('mul_167',
        () => m.call('mul', [$f64('3FF0000000000000'), $f64('1')]), $f64('1'));
    returns(
        'mul_168',
        () =>
            m.call('mul', [$f64('BFF0000000000000'), $f64('8010000000000000')]),
        $f64('10000000000000'));
    returns(
        'mul_169',
        () => m.call('mul', [$f64('BFF0000000000000'), $f64('10000000000000')]),
        $f64('8010000000000000'));
    returns(
        'mul_170',
        () =>
            m.call('mul', [$f64('3FF0000000000000'), $f64('8010000000000000')]),
        $f64('8010000000000000'));
    returns(
        'mul_171',
        () => m.call('mul', [$f64('3FF0000000000000'), $f64('10000000000000')]),
        $f64('10000000000000'));
    returns(
        'mul_172',
        () =>
            m.call('mul', [$f64('BFF0000000000000'), $f64('BFE0000000000000')]),
        $f64('3FE0000000000000'));
    returns(
        'mul_173',
        () =>
            m.call('mul', [$f64('BFF0000000000000'), $f64('3FE0000000000000')]),
        $f64('BFE0000000000000'));
    returns(
        'mul_174',
        () =>
            m.call('mul', [$f64('3FF0000000000000'), $f64('BFE0000000000000')]),
        $f64('BFE0000000000000'));
    returns(
        'mul_175',
        () =>
            m.call('mul', [$f64('3FF0000000000000'), $f64('3FE0000000000000')]),
        $f64('3FE0000000000000'));
    returns(
        'mul_176',
        () =>
            m.call('mul', [$f64('BFF0000000000000'), $f64('BFF0000000000000')]),
        $f64('3FF0000000000000'));
    returns(
        'mul_177',
        () =>
            m.call('mul', [$f64('BFF0000000000000'), $f64('3FF0000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'mul_178',
        () =>
            m.call('mul', [$f64('3FF0000000000000'), $f64('BFF0000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'mul_179',
        () =>
            m.call('mul', [$f64('3FF0000000000000'), $f64('3FF0000000000000')]),
        $f64('3FF0000000000000'));
    returns(
        'mul_180',
        () =>
            m.call('mul', [$f64('BFF0000000000000'), $f64('C01921FB54442D18')]),
        $f64('401921FB54442D18'));
    returns(
        'mul_181',
        () =>
            m.call('mul', [$f64('BFF0000000000000'), $f64('401921FB54442D18')]),
        $f64('C01921FB54442D18'));
    returns(
        'mul_182',
        () =>
            m.call('mul', [$f64('3FF0000000000000'), $f64('C01921FB54442D18')]),
        $f64('C01921FB54442D18'));
    returns(
        'mul_183',
        () =>
            m.call('mul', [$f64('3FF0000000000000'), $f64('401921FB54442D18')]),
        $f64('401921FB54442D18'));
    returns(
        'mul_184',
        () =>
            m.call('mul', [$f64('BFF0000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'mul_185',
        () =>
            m.call('mul', [$f64('BFF0000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'mul_186',
        () =>
            m.call('mul', [$f64('3FF0000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'mul_187',
        () =>
            m.call('mul', [$f64('3FF0000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'mul_188',
        () =>
            m.call('mul', [$f64('BFF0000000000000'), $f64('FFF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'mul_189',
        () =>
            m.call('mul', [$f64('BFF0000000000000'), $f64('7FF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'mul_190',
        () =>
            m.call('mul', [$f64('3FF0000000000000'), $f64('FFF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'mul_191',
        () =>
            m.call('mul', [$f64('3FF0000000000000'), $f64('7FF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'mul_192',
        () =>
            m.call('mul', [$f64('BFF0000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'mul_193',
        () =>
            m.call('mul', [$f64('BFF0000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'mul_194',
        () =>
            m.call('mul', [$f64('BFF0000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'mul_195',
        () =>
            m.call('mul', [$f64('BFF0000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'mul_196',
        () =>
            m.call('mul', [$f64('3FF0000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'mul_197',
        () =>
            m.call('mul', [$f64('3FF0000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'mul_198',
        () =>
            m.call('mul', [$f64('3FF0000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'mul_199',
        () =>
            m.call('mul', [$f64('3FF0000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'mul_200',
        () =>
            m.call('mul', [$f64('C01921FB54442D18'), $f64('8000000000000000')]),
        $f64('0'));
    returns(
        'mul_201',
        () => m.call('mul', [$f64('C01921FB54442D18'), $f64('0')]),
        $f64('8000000000000000'));
    returns(
        'mul_202',
        () =>
            m.call('mul', [$f64('401921FB54442D18'), $f64('8000000000000000')]),
        $f64('8000000000000000'));
    returns('mul_203',
        () => m.call('mul', [$f64('401921FB54442D18'), $f64('0')]), $f64('0'));
    returns(
        'mul_204',
        () =>
            m.call('mul', [$f64('C01921FB54442D18'), $f64('8000000000000001')]),
        $f64('6'));
    returns(
        'mul_205',
        () => m.call('mul', [$f64('C01921FB54442D18'), $f64('1')]),
        $f64('8000000000000006'));
    returns(
        'mul_206',
        () =>
            m.call('mul', [$f64('401921FB54442D18'), $f64('8000000000000001')]),
        $f64('8000000000000006'));
    returns('mul_207',
        () => m.call('mul', [$f64('401921FB54442D18'), $f64('1')]), $f64('6'));
    returns(
        'mul_208',
        () =>
            m.call('mul', [$f64('C01921FB54442D18'), $f64('8010000000000000')]),
        $f64('3921FB54442D18'));
    returns(
        'mul_209',
        () => m.call('mul', [$f64('C01921FB54442D18'), $f64('10000000000000')]),
        $f64('803921FB54442D18'));
    returns(
        'mul_210',
        () =>
            m.call('mul', [$f64('401921FB54442D18'), $f64('8010000000000000')]),
        $f64('803921FB54442D18'));
    returns(
        'mul_211',
        () => m.call('mul', [$f64('401921FB54442D18'), $f64('10000000000000')]),
        $f64('3921FB54442D18'));
    returns(
        'mul_212',
        () =>
            m.call('mul', [$f64('C01921FB54442D18'), $f64('BFE0000000000000')]),
        $f64('400921FB54442D18'));
    returns(
        'mul_213',
        () =>
            m.call('mul', [$f64('C01921FB54442D18'), $f64('3FE0000000000000')]),
        $f64('C00921FB54442D18'));
    returns(
        'mul_214',
        () =>
            m.call('mul', [$f64('401921FB54442D18'), $f64('BFE0000000000000')]),
        $f64('C00921FB54442D18'));
    returns(
        'mul_215',
        () =>
            m.call('mul', [$f64('401921FB54442D18'), $f64('3FE0000000000000')]),
        $f64('400921FB54442D18'));
    returns(
        'mul_216',
        () =>
            m.call('mul', [$f64('C01921FB54442D18'), $f64('BFF0000000000000')]),
        $f64('401921FB54442D18'));
    returns(
        'mul_217',
        () =>
            m.call('mul', [$f64('C01921FB54442D18'), $f64('3FF0000000000000')]),
        $f64('C01921FB54442D18'));
    returns(
        'mul_218',
        () =>
            m.call('mul', [$f64('401921FB54442D18'), $f64('BFF0000000000000')]),
        $f64('C01921FB54442D18'));
    returns(
        'mul_219',
        () =>
            m.call('mul', [$f64('401921FB54442D18'), $f64('3FF0000000000000')]),
        $f64('401921FB54442D18'));
    returns(
        'mul_220',
        () =>
            m.call('mul', [$f64('C01921FB54442D18'), $f64('C01921FB54442D18')]),
        $f64('4043BD3CC9BE45DE'));
    returns(
        'mul_221',
        () =>
            m.call('mul', [$f64('C01921FB54442D18'), $f64('401921FB54442D18')]),
        $f64('C043BD3CC9BE45DE'));
    returns(
        'mul_222',
        () =>
            m.call('mul', [$f64('401921FB54442D18'), $f64('C01921FB54442D18')]),
        $f64('C043BD3CC9BE45DE'));
    returns(
        'mul_223',
        () =>
            m.call('mul', [$f64('401921FB54442D18'), $f64('401921FB54442D18')]),
        $f64('4043BD3CC9BE45DE'));
    returns(
        'mul_224',
        () =>
            m.call('mul', [$f64('C01921FB54442D18'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('7FF0000000000000'));
    returns(
        'mul_225',
        () =>
            m.call('mul', [$f64('C01921FB54442D18'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('FFF0000000000000'));
    returns(
        'mul_226',
        () =>
            m.call('mul', [$f64('401921FB54442D18'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('FFF0000000000000'));
    returns(
        'mul_227',
        () =>
            m.call('mul', [$f64('401921FB54442D18'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('7FF0000000000000'));
    returns(
        'mul_228',
        () =>
            m.call('mul', [$f64('C01921FB54442D18'), $f64('FFF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'mul_229',
        () =>
            m.call('mul', [$f64('C01921FB54442D18'), $f64('7FF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'mul_230',
        () =>
            m.call('mul', [$f64('401921FB54442D18'), $f64('FFF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'mul_231',
        () =>
            m.call('mul', [$f64('401921FB54442D18'), $f64('7FF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'mul_232',
        () =>
            m.call('mul', [$f64('C01921FB54442D18'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'mul_233',
        () =>
            m.call('mul', [$f64('C01921FB54442D18'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'mul_234',
        () =>
            m.call('mul', [$f64('C01921FB54442D18'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'mul_235',
        () =>
            m.call('mul', [$f64('C01921FB54442D18'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'mul_236',
        () =>
            m.call('mul', [$f64('401921FB54442D18'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'mul_237',
        () =>
            m.call('mul', [$f64('401921FB54442D18'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'mul_238',
        () =>
            m.call('mul', [$f64('401921FB54442D18'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'mul_239',
        () =>
            m.call('mul', [$f64('401921FB54442D18'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'mul_240',
        () =>
            m.call('mul', [$f64('FFEFFFFFFFFFFFFF'), $f64('8000000000000000')]),
        $f64('0'));
    returns(
        'mul_241',
        () => m.call('mul', [$f64('FFEFFFFFFFFFFFFF'), $f64('0')]),
        $f64('8000000000000000'));
    returns(
        'mul_242',
        () =>
            m.call('mul', [$f64('7FEFFFFFFFFFFFFF'), $f64('8000000000000000')]),
        $f64('8000000000000000'));
    returns('mul_243',
        () => m.call('mul', [$f64('7FEFFFFFFFFFFFFF'), $f64('0')]), $f64('0'));
    returns(
        'mul_244',
        () =>
            m.call('mul', [$f64('FFEFFFFFFFFFFFFF'), $f64('8000000000000001')]),
        $f64('3CCFFFFFFFFFFFFF'));
    returns(
        'mul_245',
        () => m.call('mul', [$f64('FFEFFFFFFFFFFFFF'), $f64('1')]),
        $f64('BCCFFFFFFFFFFFFF'));
    returns(
        'mul_246',
        () =>
            m.call('mul', [$f64('7FEFFFFFFFFFFFFF'), $f64('8000000000000001')]),
        $f64('BCCFFFFFFFFFFFFF'));
    returns(
        'mul_247',
        () => m.call('mul', [$f64('7FEFFFFFFFFFFFFF'), $f64('1')]),
        $f64('3CCFFFFFFFFFFFFF'));
    returns(
        'mul_248',
        () =>
            m.call('mul', [$f64('FFEFFFFFFFFFFFFF'), $f64('8010000000000000')]),
        $f64('400FFFFFFFFFFFFF'));
    returns(
        'mul_249',
        () => m.call('mul', [$f64('FFEFFFFFFFFFFFFF'), $f64('10000000000000')]),
        $f64('C00FFFFFFFFFFFFF'));
    returns(
        'mul_250',
        () =>
            m.call('mul', [$f64('7FEFFFFFFFFFFFFF'), $f64('8010000000000000')]),
        $f64('C00FFFFFFFFFFFFF'));
    returns(
        'mul_251',
        () => m.call('mul', [$f64('7FEFFFFFFFFFFFFF'), $f64('10000000000000')]),
        $f64('400FFFFFFFFFFFFF'));
    returns(
        'mul_252',
        () =>
            m.call('mul', [$f64('FFEFFFFFFFFFFFFF'), $f64('BFE0000000000000')]),
        $f64('7FDFFFFFFFFFFFFF'));
    returns(
        'mul_253',
        () =>
            m.call('mul', [$f64('FFEFFFFFFFFFFFFF'), $f64('3FE0000000000000')]),
        $f64('FFDFFFFFFFFFFFFF'));
    returns(
        'mul_254',
        () =>
            m.call('mul', [$f64('7FEFFFFFFFFFFFFF'), $f64('BFE0000000000000')]),
        $f64('FFDFFFFFFFFFFFFF'));
    returns(
        'mul_255',
        () =>
            m.call('mul', [$f64('7FEFFFFFFFFFFFFF'), $f64('3FE0000000000000')]),
        $f64('7FDFFFFFFFFFFFFF'));
    returns(
        'mul_256',
        () =>
            m.call('mul', [$f64('FFEFFFFFFFFFFFFF'), $f64('BFF0000000000000')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'mul_257',
        () =>
            m.call('mul', [$f64('FFEFFFFFFFFFFFFF'), $f64('3FF0000000000000')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'mul_258',
        () =>
            m.call('mul', [$f64('7FEFFFFFFFFFFFFF'), $f64('BFF0000000000000')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'mul_259',
        () =>
            m.call('mul', [$f64('7FEFFFFFFFFFFFFF'), $f64('3FF0000000000000')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'mul_260',
        () =>
            m.call('mul', [$f64('FFEFFFFFFFFFFFFF'), $f64('C01921FB54442D18')]),
        $f64('7FF0000000000000'));
    returns(
        'mul_261',
        () =>
            m.call('mul', [$f64('FFEFFFFFFFFFFFFF'), $f64('401921FB54442D18')]),
        $f64('FFF0000000000000'));
    returns(
        'mul_262',
        () =>
            m.call('mul', [$f64('7FEFFFFFFFFFFFFF'), $f64('C01921FB54442D18')]),
        $f64('FFF0000000000000'));
    returns(
        'mul_263',
        () =>
            m.call('mul', [$f64('7FEFFFFFFFFFFFFF'), $f64('401921FB54442D18')]),
        $f64('7FF0000000000000'));
    returns(
        'mul_264',
        () =>
            m.call('mul', [$f64('FFEFFFFFFFFFFFFF'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('7FF0000000000000'));
    returns(
        'mul_265',
        () =>
            m.call('mul', [$f64('FFEFFFFFFFFFFFFF'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('FFF0000000000000'));
    returns(
        'mul_266',
        () =>
            m.call('mul', [$f64('7FEFFFFFFFFFFFFF'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('FFF0000000000000'));
    returns(
        'mul_267',
        () =>
            m.call('mul', [$f64('7FEFFFFFFFFFFFFF'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('7FF0000000000000'));
    returns(
        'mul_268',
        () =>
            m.call('mul', [$f64('FFEFFFFFFFFFFFFF'), $f64('FFF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'mul_269',
        () =>
            m.call('mul', [$f64('FFEFFFFFFFFFFFFF'), $f64('7FF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'mul_270',
        () =>
            m.call('mul', [$f64('7FEFFFFFFFFFFFFF'), $f64('FFF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'mul_271',
        () =>
            m.call('mul', [$f64('7FEFFFFFFFFFFFFF'), $f64('7FF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'mul_272',
        () =>
            m.call('mul', [$f64('FFEFFFFFFFFFFFFF'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'mul_273',
        () =>
            m.call('mul', [$f64('FFEFFFFFFFFFFFFF'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'mul_274',
        () =>
            m.call('mul', [$f64('FFEFFFFFFFFFFFFF'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'mul_275',
        () =>
            m.call('mul', [$f64('FFEFFFFFFFFFFFFF'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'mul_276',
        () =>
            m.call('mul', [$f64('7FEFFFFFFFFFFFFF'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'mul_277',
        () =>
            m.call('mul', [$f64('7FEFFFFFFFFFFFFF'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'mul_278',
        () =>
            m.call('mul', [$f64('7FEFFFFFFFFFFFFF'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'mul_279',
        () =>
            m.call('mul', [$f64('7FEFFFFFFFFFFFFF'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'mul_280',
        () =>
            m.call('mul', [$f64('FFF0000000000000'), $f64('8000000000000000')]),
        double.nan);
    returns('mul_281',
        () => m.call('mul', [$f64('FFF0000000000000'), $f64('0')]), double.nan);
    returns(
        'mul_282',
        () =>
            m.call('mul', [$f64('7FF0000000000000'), $f64('8000000000000000')]),
        double.nan);
    returns('mul_283',
        () => m.call('mul', [$f64('7FF0000000000000'), $f64('0')]), double.nan);
    returns(
        'mul_284',
        () =>
            m.call('mul', [$f64('FFF0000000000000'), $f64('8000000000000001')]),
        $f64('7FF0000000000000'));
    returns(
        'mul_285',
        () => m.call('mul', [$f64('FFF0000000000000'), $f64('1')]),
        $f64('FFF0000000000000'));
    returns(
        'mul_286',
        () =>
            m.call('mul', [$f64('7FF0000000000000'), $f64('8000000000000001')]),
        $f64('FFF0000000000000'));
    returns(
        'mul_287',
        () => m.call('mul', [$f64('7FF0000000000000'), $f64('1')]),
        $f64('7FF0000000000000'));
    returns(
        'mul_288',
        () =>
            m.call('mul', [$f64('FFF0000000000000'), $f64('8010000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'mul_289',
        () => m.call('mul', [$f64('FFF0000000000000'), $f64('10000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'mul_290',
        () =>
            m.call('mul', [$f64('7FF0000000000000'), $f64('8010000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'mul_291',
        () => m.call('mul', [$f64('7FF0000000000000'), $f64('10000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'mul_292',
        () =>
            m.call('mul', [$f64('FFF0000000000000'), $f64('BFE0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'mul_293',
        () =>
            m.call('mul', [$f64('FFF0000000000000'), $f64('3FE0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'mul_294',
        () =>
            m.call('mul', [$f64('7FF0000000000000'), $f64('BFE0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'mul_295',
        () =>
            m.call('mul', [$f64('7FF0000000000000'), $f64('3FE0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'mul_296',
        () =>
            m.call('mul', [$f64('FFF0000000000000'), $f64('BFF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'mul_297',
        () =>
            m.call('mul', [$f64('FFF0000000000000'), $f64('3FF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'mul_298',
        () =>
            m.call('mul', [$f64('7FF0000000000000'), $f64('BFF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'mul_299',
        () =>
            m.call('mul', [$f64('7FF0000000000000'), $f64('3FF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'mul_300',
        () =>
            m.call('mul', [$f64('FFF0000000000000'), $f64('C01921FB54442D18')]),
        $f64('7FF0000000000000'));
    returns(
        'mul_301',
        () =>
            m.call('mul', [$f64('FFF0000000000000'), $f64('401921FB54442D18')]),
        $f64('FFF0000000000000'));
    returns(
        'mul_302',
        () =>
            m.call('mul', [$f64('7FF0000000000000'), $f64('C01921FB54442D18')]),
        $f64('FFF0000000000000'));
    returns(
        'mul_303',
        () =>
            m.call('mul', [$f64('7FF0000000000000'), $f64('401921FB54442D18')]),
        $f64('7FF0000000000000'));
    returns(
        'mul_304',
        () =>
            m.call('mul', [$f64('FFF0000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('7FF0000000000000'));
    returns(
        'mul_305',
        () =>
            m.call('mul', [$f64('FFF0000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('FFF0000000000000'));
    returns(
        'mul_306',
        () =>
            m.call('mul', [$f64('7FF0000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('FFF0000000000000'));
    returns(
        'mul_307',
        () =>
            m.call('mul', [$f64('7FF0000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('7FF0000000000000'));
    returns(
        'mul_308',
        () =>
            m.call('mul', [$f64('FFF0000000000000'), $f64('FFF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'mul_309',
        () =>
            m.call('mul', [$f64('FFF0000000000000'), $f64('7FF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'mul_310',
        () =>
            m.call('mul', [$f64('7FF0000000000000'), $f64('FFF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'mul_311',
        () =>
            m.call('mul', [$f64('7FF0000000000000'), $f64('7FF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'mul_312',
        () =>
            m.call('mul', [$f64('FFF0000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'mul_313',
        () =>
            m.call('mul', [$f64('FFF0000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'mul_314',
        () =>
            m.call('mul', [$f64('FFF0000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'mul_315',
        () =>
            m.call('mul', [$f64('FFF0000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'mul_316',
        () =>
            m.call('mul', [$f64('7FF0000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'mul_317',
        () =>
            m.call('mul', [$f64('7FF0000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'mul_318',
        () =>
            m.call('mul', [$f64('7FF0000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'mul_319',
        () =>
            m.call('mul', [$f64('7FF0000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'mul_320',
        () =>
            m.call('mul', [$f64('FFF8000000000000'), $f64('8000000000000000')]),
        double.nan);
    returns(
        'mul_321',
        () =>
            m.call('mul', [$f64('FFF4000000000000'), $f64('8000000000000000')]),
        double.nan);
    returns('mul_322',
        () => m.call('mul', [$f64('FFF8000000000000'), $f64('0')]), double.nan);
    returns('mul_323',
        () => m.call('mul', [$f64('FFF4000000000000'), $f64('0')]), double.nan);
    returns(
        'mul_324',
        () =>
            m.call('mul', [$f64('7FF8000000000000'), $f64('8000000000000000')]),
        double.nan);
    returns(
        'mul_325',
        () =>
            m.call('mul', [$f64('7FF4000000000000'), $f64('8000000000000000')]),
        double.nan);
    returns('mul_326',
        () => m.call('mul', [$f64('7FF8000000000000'), $f64('0')]), double.nan);
    returns('mul_327',
        () => m.call('mul', [$f64('7FF4000000000000'), $f64('0')]), double.nan);
    returns(
        'mul_328',
        () =>
            m.call('mul', [$f64('FFF8000000000000'), $f64('8000000000000001')]),
        double.nan);
    returns(
        'mul_329',
        () =>
            m.call('mul', [$f64('FFF4000000000000'), $f64('8000000000000001')]),
        double.nan);
    returns('mul_330',
        () => m.call('mul', [$f64('FFF8000000000000'), $f64('1')]), double.nan);
    returns('mul_331',
        () => m.call('mul', [$f64('FFF4000000000000'), $f64('1')]), double.nan);
    returns(
        'mul_332',
        () =>
            m.call('mul', [$f64('7FF8000000000000'), $f64('8000000000000001')]),
        double.nan);
    returns(
        'mul_333',
        () =>
            m.call('mul', [$f64('7FF4000000000000'), $f64('8000000000000001')]),
        double.nan);
    returns('mul_334',
        () => m.call('mul', [$f64('7FF8000000000000'), $f64('1')]), double.nan);
    returns('mul_335',
        () => m.call('mul', [$f64('7FF4000000000000'), $f64('1')]), double.nan);
    returns(
        'mul_336',
        () =>
            m.call('mul', [$f64('FFF8000000000000'), $f64('8010000000000000')]),
        double.nan);
    returns(
        'mul_337',
        () =>
            m.call('mul', [$f64('FFF4000000000000'), $f64('8010000000000000')]),
        double.nan);
    returns(
        'mul_338',
        () => m.call('mul', [$f64('FFF8000000000000'), $f64('10000000000000')]),
        double.nan);
    returns(
        'mul_339',
        () => m.call('mul', [$f64('FFF4000000000000'), $f64('10000000000000')]),
        double.nan);
    returns(
        'mul_340',
        () =>
            m.call('mul', [$f64('7FF8000000000000'), $f64('8010000000000000')]),
        double.nan);
    returns(
        'mul_341',
        () =>
            m.call('mul', [$f64('7FF4000000000000'), $f64('8010000000000000')]),
        double.nan);
    returns(
        'mul_342',
        () => m.call('mul', [$f64('7FF8000000000000'), $f64('10000000000000')]),
        double.nan);
    returns(
        'mul_343',
        () => m.call('mul', [$f64('7FF4000000000000'), $f64('10000000000000')]),
        double.nan);
    returns(
        'mul_344',
        () =>
            m.call('mul', [$f64('FFF8000000000000'), $f64('BFE0000000000000')]),
        double.nan);
    returns(
        'mul_345',
        () =>
            m.call('mul', [$f64('FFF4000000000000'), $f64('BFE0000000000000')]),
        double.nan);
    returns(
        'mul_346',
        () =>
            m.call('mul', [$f64('FFF8000000000000'), $f64('3FE0000000000000')]),
        double.nan);
    returns(
        'mul_347',
        () =>
            m.call('mul', [$f64('FFF4000000000000'), $f64('3FE0000000000000')]),
        double.nan);
    returns(
        'mul_348',
        () =>
            m.call('mul', [$f64('7FF8000000000000'), $f64('BFE0000000000000')]),
        double.nan);
    returns(
        'mul_349',
        () =>
            m.call('mul', [$f64('7FF4000000000000'), $f64('BFE0000000000000')]),
        double.nan);
    returns(
        'mul_350',
        () =>
            m.call('mul', [$f64('7FF8000000000000'), $f64('3FE0000000000000')]),
        double.nan);
    returns(
        'mul_351',
        () =>
            m.call('mul', [$f64('7FF4000000000000'), $f64('3FE0000000000000')]),
        double.nan);
    returns(
        'mul_352',
        () =>
            m.call('mul', [$f64('FFF8000000000000'), $f64('BFF0000000000000')]),
        double.nan);
    returns(
        'mul_353',
        () =>
            m.call('mul', [$f64('FFF4000000000000'), $f64('BFF0000000000000')]),
        double.nan);
    returns(
        'mul_354',
        () =>
            m.call('mul', [$f64('FFF8000000000000'), $f64('3FF0000000000000')]),
        double.nan);
    returns(
        'mul_355',
        () =>
            m.call('mul', [$f64('FFF4000000000000'), $f64('3FF0000000000000')]),
        double.nan);
    returns(
        'mul_356',
        () =>
            m.call('mul', [$f64('7FF8000000000000'), $f64('BFF0000000000000')]),
        double.nan);
    returns(
        'mul_357',
        () =>
            m.call('mul', [$f64('7FF4000000000000'), $f64('BFF0000000000000')]),
        double.nan);
    returns(
        'mul_358',
        () =>
            m.call('mul', [$f64('7FF8000000000000'), $f64('3FF0000000000000')]),
        double.nan);
    returns(
        'mul_359',
        () =>
            m.call('mul', [$f64('7FF4000000000000'), $f64('3FF0000000000000')]),
        double.nan);
    returns(
        'mul_360',
        () =>
            m.call('mul', [$f64('FFF8000000000000'), $f64('C01921FB54442D18')]),
        double.nan);
    returns(
        'mul_361',
        () =>
            m.call('mul', [$f64('FFF4000000000000'), $f64('C01921FB54442D18')]),
        double.nan);
    returns(
        'mul_362',
        () =>
            m.call('mul', [$f64('FFF8000000000000'), $f64('401921FB54442D18')]),
        double.nan);
    returns(
        'mul_363',
        () =>
            m.call('mul', [$f64('FFF4000000000000'), $f64('401921FB54442D18')]),
        double.nan);
    returns(
        'mul_364',
        () =>
            m.call('mul', [$f64('7FF8000000000000'), $f64('C01921FB54442D18')]),
        double.nan);
    returns(
        'mul_365',
        () =>
            m.call('mul', [$f64('7FF4000000000000'), $f64('C01921FB54442D18')]),
        double.nan);
    returns(
        'mul_366',
        () =>
            m.call('mul', [$f64('7FF8000000000000'), $f64('401921FB54442D18')]),
        double.nan);
    returns(
        'mul_367',
        () =>
            m.call('mul', [$f64('7FF4000000000000'), $f64('401921FB54442D18')]),
        double.nan);
    returns(
        'mul_368',
        () =>
            m.call('mul', [$f64('FFF8000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        double.nan);
    returns(
        'mul_369',
        () =>
            m.call('mul', [$f64('FFF4000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        double.nan);
    returns(
        'mul_370',
        () =>
            m.call('mul', [$f64('FFF8000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        double.nan);
    returns(
        'mul_371',
        () =>
            m.call('mul', [$f64('FFF4000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        double.nan);
    returns(
        'mul_372',
        () =>
            m.call('mul', [$f64('7FF8000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        double.nan);
    returns(
        'mul_373',
        () =>
            m.call('mul', [$f64('7FF4000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        double.nan);
    returns(
        'mul_374',
        () =>
            m.call('mul', [$f64('7FF8000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        double.nan);
    returns(
        'mul_375',
        () =>
            m.call('mul', [$f64('7FF4000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        double.nan);
    returns(
        'mul_376',
        () =>
            m.call('mul', [$f64('FFF8000000000000'), $f64('FFF0000000000000')]),
        double.nan);
    returns(
        'mul_377',
        () =>
            m.call('mul', [$f64('FFF4000000000000'), $f64('FFF0000000000000')]),
        double.nan);
    returns(
        'mul_378',
        () =>
            m.call('mul', [$f64('FFF8000000000000'), $f64('7FF0000000000000')]),
        double.nan);
    returns(
        'mul_379',
        () =>
            m.call('mul', [$f64('FFF4000000000000'), $f64('7FF0000000000000')]),
        double.nan);
    returns(
        'mul_380',
        () =>
            m.call('mul', [$f64('7FF8000000000000'), $f64('FFF0000000000000')]),
        double.nan);
    returns(
        'mul_381',
        () =>
            m.call('mul', [$f64('7FF4000000000000'), $f64('FFF0000000000000')]),
        double.nan);
    returns(
        'mul_382',
        () =>
            m.call('mul', [$f64('7FF8000000000000'), $f64('7FF0000000000000')]),
        double.nan);
    returns(
        'mul_383',
        () =>
            m.call('mul', [$f64('7FF4000000000000'), $f64('7FF0000000000000')]),
        double.nan);
    returns(
        'mul_384',
        () =>
            m.call('mul', [$f64('FFF8000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'mul_385',
        () =>
            m.call('mul', [$f64('FFF4000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'mul_386',
        () =>
            m.call('mul', [$f64('FFF8000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'mul_387',
        () =>
            m.call('mul', [$f64('FFF4000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'mul_388',
        () =>
            m.call('mul', [$f64('FFF8000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'mul_389',
        () =>
            m.call('mul', [$f64('FFF4000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'mul_390',
        () =>
            m.call('mul', [$f64('FFF8000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'mul_391',
        () =>
            m.call('mul', [$f64('FFF4000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'mul_392',
        () =>
            m.call('mul', [$f64('7FF8000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'mul_393',
        () =>
            m.call('mul', [$f64('7FF4000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'mul_394',
        () =>
            m.call('mul', [$f64('7FF8000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'mul_395',
        () =>
            m.call('mul', [$f64('7FF4000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'mul_396',
        () =>
            m.call('mul', [$f64('7FF8000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'mul_397',
        () =>
            m.call('mul', [$f64('7FF4000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'mul_398',
        () =>
            m.call('mul', [$f64('7FF8000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'mul_399',
        () =>
            m.call('mul', [$f64('7FF4000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'div_0',
        () =>
            m.call('div', [$f64('8000000000000000'), $f64('8000000000000000')]),
        double.nan);
    returns('div_1', () => m.call('div', [$f64('8000000000000000'), $f64('0')]),
        double.nan);
    returns('div_2', () => m.call('div', [$f64('0'), $f64('8000000000000000')]),
        double.nan);
    returns('div_3', () => m.call('div', [$f64('0'), $f64('0')]), double.nan);
    returns(
        'div_4',
        () =>
            m.call('div', [$f64('8000000000000000'), $f64('8000000000000001')]),
        $f64('0'));
    returns('div_5', () => m.call('div', [$f64('8000000000000000'), $f64('1')]),
        $f64('8000000000000000'));
    returns('div_6', () => m.call('div', [$f64('0'), $f64('8000000000000001')]),
        $f64('8000000000000000'));
    returns('div_7', () => m.call('div', [$f64('0'), $f64('1')]), $f64('0'));
    returns(
        'div_8',
        () =>
            m.call('div', [$f64('8000000000000000'), $f64('8010000000000000')]),
        $f64('0'));
    returns(
        'div_9',
        () => m.call('div', [$f64('8000000000000000'), $f64('10000000000000')]),
        $f64('8000000000000000'));
    returns(
        'div_10',
        () => m.call('div', [$f64('0'), $f64('8010000000000000')]),
        $f64('8000000000000000'));
    returns('div_11', () => m.call('div', [$f64('0'), $f64('10000000000000')]),
        $f64('0'));
    returns(
        'div_12',
        () =>
            m.call('div', [$f64('8000000000000000'), $f64('BFE0000000000000')]),
        $f64('0'));
    returns(
        'div_13',
        () =>
            m.call('div', [$f64('8000000000000000'), $f64('3FE0000000000000')]),
        $f64('8000000000000000'));
    returns(
        'div_14',
        () => m.call('div', [$f64('0'), $f64('BFE0000000000000')]),
        $f64('8000000000000000'));
    returns('div_15',
        () => m.call('div', [$f64('0'), $f64('3FE0000000000000')]), $f64('0'));
    returns(
        'div_16',
        () =>
            m.call('div', [$f64('8000000000000000'), $f64('BFF0000000000000')]),
        $f64('0'));
    returns(
        'div_17',
        () =>
            m.call('div', [$f64('8000000000000000'), $f64('3FF0000000000000')]),
        $f64('8000000000000000'));
    returns(
        'div_18',
        () => m.call('div', [$f64('0'), $f64('BFF0000000000000')]),
        $f64('8000000000000000'));
    returns('div_19',
        () => m.call('div', [$f64('0'), $f64('3FF0000000000000')]), $f64('0'));
    returns(
        'div_20',
        () =>
            m.call('div', [$f64('8000000000000000'), $f64('C01921FB54442D18')]),
        $f64('0'));
    returns(
        'div_21',
        () =>
            m.call('div', [$f64('8000000000000000'), $f64('401921FB54442D18')]),
        $f64('8000000000000000'));
    returns(
        'div_22',
        () => m.call('div', [$f64('0'), $f64('C01921FB54442D18')]),
        $f64('8000000000000000'));
    returns('div_23',
        () => m.call('div', [$f64('0'), $f64('401921FB54442D18')]), $f64('0'));
    returns(
        'div_24',
        () =>
            m.call('div', [$f64('8000000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('0'));
    returns(
        'div_25',
        () =>
            m.call('div', [$f64('8000000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('8000000000000000'));
    returns(
        'div_26',
        () => m.call('div', [$f64('0'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('8000000000000000'));
    returns('div_27',
        () => m.call('div', [$f64('0'), $f64('7FEFFFFFFFFFFFFF')]), $f64('0'));
    returns(
        'div_28',
        () =>
            m.call('div', [$f64('8000000000000000'), $f64('FFF0000000000000')]),
        $f64('0'));
    returns(
        'div_29',
        () =>
            m.call('div', [$f64('8000000000000000'), $f64('7FF0000000000000')]),
        $f64('8000000000000000'));
    returns(
        'div_30',
        () => m.call('div', [$f64('0'), $f64('FFF0000000000000')]),
        $f64('8000000000000000'));
    returns('div_31',
        () => m.call('div', [$f64('0'), $f64('7FF0000000000000')]), $f64('0'));
    returns(
        'div_32',
        () =>
            m.call('div', [$f64('8000000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'div_33',
        () =>
            m.call('div', [$f64('8000000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'div_34',
        () =>
            m.call('div', [$f64('8000000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'div_35',
        () =>
            m.call('div', [$f64('8000000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns('div_36',
        () => m.call('div', [$f64('0'), $f64('FFF8000000000000')]), double.nan);
    returns('div_37',
        () => m.call('div', [$f64('0'), $f64('FFF4000000000000')]), double.nan);
    returns('div_38',
        () => m.call('div', [$f64('0'), $f64('7FF8000000000000')]), double.nan);
    returns('div_39',
        () => m.call('div', [$f64('0'), $f64('7FF4000000000000')]), double.nan);
    returns(
        'div_40',
        () =>
            m.call('div', [$f64('8000000000000001'), $f64('8000000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'div_41',
        () => m.call('div', [$f64('8000000000000001'), $f64('0')]),
        $f64('FFF0000000000000'));
    returns(
        'div_42',
        () => m.call('div', [$f64('1'), $f64('8000000000000000')]),
        $f64('FFF0000000000000'));
    returns('div_43', () => m.call('div', [$f64('1'), $f64('0')]),
        $f64('7FF0000000000000'));
    returns(
        'div_44',
        () =>
            m.call('div', [$f64('8000000000000001'), $f64('8000000000000001')]),
        $f64('3FF0000000000000'));
    returns(
        'div_45',
        () => m.call('div', [$f64('8000000000000001'), $f64('1')]),
        $f64('BFF0000000000000'));
    returns(
        'div_46',
        () => m.call('div', [$f64('1'), $f64('8000000000000001')]),
        $f64('BFF0000000000000'));
    returns('div_47', () => m.call('div', [$f64('1'), $f64('1')]),
        $f64('3FF0000000000000'));
    returns(
        'div_48',
        () =>
            m.call('div', [$f64('8000000000000001'), $f64('8010000000000000')]),
        $f64('3CB0000000000000'));
    returns(
        'div_49',
        () => m.call('div', [$f64('8000000000000001'), $f64('10000000000000')]),
        $f64('BCB0000000000000'));
    returns(
        'div_50',
        () => m.call('div', [$f64('1'), $f64('8010000000000000')]),
        $f64('BCB0000000000000'));
    returns('div_51', () => m.call('div', [$f64('1'), $f64('10000000000000')]),
        $f64('3CB0000000000000'));
    returns(
        'div_52',
        () =>
            m.call('div', [$f64('8000000000000001'), $f64('BFE0000000000000')]),
        $f64('2'));
    returns(
        'div_53',
        () =>
            m.call('div', [$f64('8000000000000001'), $f64('3FE0000000000000')]),
        $f64('8000000000000002'));
    returns(
        'div_54',
        () => m.call('div', [$f64('1'), $f64('BFE0000000000000')]),
        $f64('8000000000000002'));
    returns('div_55',
        () => m.call('div', [$f64('1'), $f64('3FE0000000000000')]), $f64('2'));
    returns(
        'div_56',
        () =>
            m.call('div', [$f64('8000000000000001'), $f64('BFF0000000000000')]),
        $f64('1'));
    returns(
        'div_57',
        () =>
            m.call('div', [$f64('8000000000000001'), $f64('3FF0000000000000')]),
        $f64('8000000000000001'));
    returns(
        'div_58',
        () => m.call('div', [$f64('1'), $f64('BFF0000000000000')]),
        $f64('8000000000000001'));
    returns('div_59',
        () => m.call('div', [$f64('1'), $f64('3FF0000000000000')]), $f64('1'));
    returns(
        'div_60',
        () =>
            m.call('div', [$f64('8000000000000001'), $f64('C01921FB54442D18')]),
        $f64('0'));
    returns(
        'div_61',
        () =>
            m.call('div', [$f64('8000000000000001'), $f64('401921FB54442D18')]),
        $f64('8000000000000000'));
    returns(
        'div_62',
        () => m.call('div', [$f64('1'), $f64('C01921FB54442D18')]),
        $f64('8000000000000000'));
    returns('div_63',
        () => m.call('div', [$f64('1'), $f64('401921FB54442D18')]), $f64('0'));
    returns(
        'div_64',
        () =>
            m.call('div', [$f64('8000000000000001'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('0'));
    returns(
        'div_65',
        () =>
            m.call('div', [$f64('8000000000000001'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('8000000000000000'));
    returns(
        'div_66',
        () => m.call('div', [$f64('1'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('8000000000000000'));
    returns('div_67',
        () => m.call('div', [$f64('1'), $f64('7FEFFFFFFFFFFFFF')]), $f64('0'));
    returns(
        'div_68',
        () =>
            m.call('div', [$f64('8000000000000001'), $f64('FFF0000000000000')]),
        $f64('0'));
    returns(
        'div_69',
        () =>
            m.call('div', [$f64('8000000000000001'), $f64('7FF0000000000000')]),
        $f64('8000000000000000'));
    returns(
        'div_70',
        () => m.call('div', [$f64('1'), $f64('FFF0000000000000')]),
        $f64('8000000000000000'));
    returns('div_71',
        () => m.call('div', [$f64('1'), $f64('7FF0000000000000')]), $f64('0'));
    returns(
        'div_72',
        () =>
            m.call('div', [$f64('8000000000000001'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'div_73',
        () =>
            m.call('div', [$f64('8000000000000001'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'div_74',
        () =>
            m.call('div', [$f64('8000000000000001'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'div_75',
        () =>
            m.call('div', [$f64('8000000000000001'), $f64('7FF4000000000000')]),
        double.nan);
    returns('div_76',
        () => m.call('div', [$f64('1'), $f64('FFF8000000000000')]), double.nan);
    returns('div_77',
        () => m.call('div', [$f64('1'), $f64('FFF4000000000000')]), double.nan);
    returns('div_78',
        () => m.call('div', [$f64('1'), $f64('7FF8000000000000')]), double.nan);
    returns('div_79',
        () => m.call('div', [$f64('1'), $f64('7FF4000000000000')]), double.nan);
    returns(
        'div_80',
        () =>
            m.call('div', [$f64('8010000000000000'), $f64('8000000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'div_81',
        () => m.call('div', [$f64('8010000000000000'), $f64('0')]),
        $f64('FFF0000000000000'));
    returns(
        'div_82',
        () => m.call('div', [$f64('10000000000000'), $f64('8000000000000000')]),
        $f64('FFF0000000000000'));
    returns('div_83', () => m.call('div', [$f64('10000000000000'), $f64('0')]),
        $f64('7FF0000000000000'));
    returns(
        'div_84',
        () =>
            m.call('div', [$f64('8010000000000000'), $f64('8000000000000001')]),
        $f64('4330000000000000'));
    returns(
        'div_85',
        () => m.call('div', [$f64('8010000000000000'), $f64('1')]),
        $f64('C330000000000000'));
    returns(
        'div_86',
        () => m.call('div', [$f64('10000000000000'), $f64('8000000000000001')]),
        $f64('C330000000000000'));
    returns('div_87', () => m.call('div', [$f64('10000000000000'), $f64('1')]),
        $f64('4330000000000000'));
    returns(
        'div_88',
        () =>
            m.call('div', [$f64('8010000000000000'), $f64('8010000000000000')]),
        $f64('3FF0000000000000'));
    returns(
        'div_89',
        () => m.call('div', [$f64('8010000000000000'), $f64('10000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'div_90',
        () => m.call('div', [$f64('10000000000000'), $f64('8010000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'div_91',
        () => m.call('div', [$f64('10000000000000'), $f64('10000000000000')]),
        $f64('3FF0000000000000'));
    returns(
        'div_92',
        () =>
            m.call('div', [$f64('8010000000000000'), $f64('BFE0000000000000')]),
        $f64('20000000000000'));
    returns(
        'div_93',
        () =>
            m.call('div', [$f64('8010000000000000'), $f64('3FE0000000000000')]),
        $f64('8020000000000000'));
    returns(
        'div_94',
        () => m.call('div', [$f64('10000000000000'), $f64('BFE0000000000000')]),
        $f64('8020000000000000'));
    returns(
        'div_95',
        () => m.call('div', [$f64('10000000000000'), $f64('3FE0000000000000')]),
        $f64('20000000000000'));
    returns(
        'div_96',
        () =>
            m.call('div', [$f64('8010000000000000'), $f64('BFF0000000000000')]),
        $f64('10000000000000'));
    returns(
        'div_97',
        () =>
            m.call('div', [$f64('8010000000000000'), $f64('3FF0000000000000')]),
        $f64('8010000000000000'));
    returns(
        'div_98',
        () => m.call('div', [$f64('10000000000000'), $f64('BFF0000000000000')]),
        $f64('8010000000000000'));
    returns(
        'div_99',
        () => m.call('div', [$f64('10000000000000'), $f64('3FF0000000000000')]),
        $f64('10000000000000'));
    returns(
        'div_100',
        () =>
            m.call('div', [$f64('8010000000000000'), $f64('C01921FB54442D18')]),
        $f64('28BE60DB93910'));
    returns(
        'div_101',
        () =>
            m.call('div', [$f64('8010000000000000'), $f64('401921FB54442D18')]),
        $f64('80028BE60DB93910'));
    returns(
        'div_102',
        () => m.call('div', [$f64('10000000000000'), $f64('C01921FB54442D18')]),
        $f64('80028BE60DB93910'));
    returns(
        'div_103',
        () => m.call('div', [$f64('10000000000000'), $f64('401921FB54442D18')]),
        $f64('28BE60DB93910'));
    returns(
        'div_104',
        () =>
            m.call('div', [$f64('8010000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('0'));
    returns(
        'div_105',
        () =>
            m.call('div', [$f64('8010000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('8000000000000000'));
    returns(
        'div_106',
        () => m.call('div', [$f64('10000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('8000000000000000'));
    returns(
        'div_107',
        () => m.call('div', [$f64('10000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('0'));
    returns(
        'div_108',
        () =>
            m.call('div', [$f64('8010000000000000'), $f64('FFF0000000000000')]),
        $f64('0'));
    returns(
        'div_109',
        () =>
            m.call('div', [$f64('8010000000000000'), $f64('7FF0000000000000')]),
        $f64('8000000000000000'));
    returns(
        'div_110',
        () => m.call('div', [$f64('10000000000000'), $f64('FFF0000000000000')]),
        $f64('8000000000000000'));
    returns(
        'div_111',
        () => m.call('div', [$f64('10000000000000'), $f64('7FF0000000000000')]),
        $f64('0'));
    returns(
        'div_112',
        () =>
            m.call('div', [$f64('8010000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'div_113',
        () =>
            m.call('div', [$f64('8010000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'div_114',
        () =>
            m.call('div', [$f64('8010000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'div_115',
        () =>
            m.call('div', [$f64('8010000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'div_116',
        () => m.call('div', [$f64('10000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'div_117',
        () => m.call('div', [$f64('10000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'div_118',
        () => m.call('div', [$f64('10000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'div_119',
        () => m.call('div', [$f64('10000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'div_120',
        () =>
            m.call('div', [$f64('BFE0000000000000'), $f64('8000000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'div_121',
        () => m.call('div', [$f64('BFE0000000000000'), $f64('0')]),
        $f64('FFF0000000000000'));
    returns(
        'div_122',
        () =>
            m.call('div', [$f64('3FE0000000000000'), $f64('8000000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'div_123',
        () => m.call('div', [$f64('3FE0000000000000'), $f64('0')]),
        $f64('7FF0000000000000'));
    returns(
        'div_124',
        () =>
            m.call('div', [$f64('BFE0000000000000'), $f64('8000000000000001')]),
        $f64('7FF0000000000000'));
    returns(
        'div_125',
        () => m.call('div', [$f64('BFE0000000000000'), $f64('1')]),
        $f64('FFF0000000000000'));
    returns(
        'div_126',
        () =>
            m.call('div', [$f64('3FE0000000000000'), $f64('8000000000000001')]),
        $f64('FFF0000000000000'));
    returns(
        'div_127',
        () => m.call('div', [$f64('3FE0000000000000'), $f64('1')]),
        $f64('7FF0000000000000'));
    returns(
        'div_128',
        () =>
            m.call('div', [$f64('BFE0000000000000'), $f64('8010000000000000')]),
        $f64('7FC0000000000000'));
    returns(
        'div_129',
        () => m.call('div', [$f64('BFE0000000000000'), $f64('10000000000000')]),
        $f64('FFC0000000000000'));
    returns(
        'div_130',
        () =>
            m.call('div', [$f64('3FE0000000000000'), $f64('8010000000000000')]),
        $f64('FFC0000000000000'));
    returns(
        'div_131',
        () => m.call('div', [$f64('3FE0000000000000'), $f64('10000000000000')]),
        $f64('7FC0000000000000'));
    returns(
        'div_132',
        () =>
            m.call('div', [$f64('BFE0000000000000'), $f64('BFE0000000000000')]),
        $f64('3FF0000000000000'));
    returns(
        'div_133',
        () =>
            m.call('div', [$f64('BFE0000000000000'), $f64('3FE0000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'div_134',
        () =>
            m.call('div', [$f64('3FE0000000000000'), $f64('BFE0000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'div_135',
        () =>
            m.call('div', [$f64('3FE0000000000000'), $f64('3FE0000000000000')]),
        $f64('3FF0000000000000'));
    returns(
        'div_136',
        () =>
            m.call('div', [$f64('BFE0000000000000'), $f64('BFF0000000000000')]),
        $f64('3FE0000000000000'));
    returns(
        'div_137',
        () =>
            m.call('div', [$f64('BFE0000000000000'), $f64('3FF0000000000000')]),
        $f64('BFE0000000000000'));
    returns(
        'div_138',
        () =>
            m.call('div', [$f64('3FE0000000000000'), $f64('BFF0000000000000')]),
        $f64('BFE0000000000000'));
    returns(
        'div_139',
        () =>
            m.call('div', [$f64('3FE0000000000000'), $f64('3FF0000000000000')]),
        $f64('3FE0000000000000'));
    returns(
        'div_140',
        () =>
            m.call('div', [$f64('BFE0000000000000'), $f64('C01921FB54442D18')]),
        $f64('3FB45F306DC9C883'));
    returns(
        'div_141',
        () =>
            m.call('div', [$f64('BFE0000000000000'), $f64('401921FB54442D18')]),
        $f64('BFB45F306DC9C883'));
    returns(
        'div_142',
        () =>
            m.call('div', [$f64('3FE0000000000000'), $f64('C01921FB54442D18')]),
        $f64('BFB45F306DC9C883'));
    returns(
        'div_143',
        () =>
            m.call('div', [$f64('3FE0000000000000'), $f64('401921FB54442D18')]),
        $f64('3FB45F306DC9C883'));
    returns(
        'div_144',
        () =>
            m.call('div', [$f64('BFE0000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('2000000000000'));
    returns(
        'div_145',
        () =>
            m.call('div', [$f64('BFE0000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('8002000000000000'));
    returns(
        'div_146',
        () =>
            m.call('div', [$f64('3FE0000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('8002000000000000'));
    returns(
        'div_147',
        () =>
            m.call('div', [$f64('3FE0000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('2000000000000'));
    returns(
        'div_148',
        () =>
            m.call('div', [$f64('BFE0000000000000'), $f64('FFF0000000000000')]),
        $f64('0'));
    returns(
        'div_149',
        () =>
            m.call('div', [$f64('BFE0000000000000'), $f64('7FF0000000000000')]),
        $f64('8000000000000000'));
    returns(
        'div_150',
        () =>
            m.call('div', [$f64('3FE0000000000000'), $f64('FFF0000000000000')]),
        $f64('8000000000000000'));
    returns(
        'div_151',
        () =>
            m.call('div', [$f64('3FE0000000000000'), $f64('7FF0000000000000')]),
        $f64('0'));
    returns(
        'div_152',
        () =>
            m.call('div', [$f64('BFE0000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'div_153',
        () =>
            m.call('div', [$f64('BFE0000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'div_154',
        () =>
            m.call('div', [$f64('BFE0000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'div_155',
        () =>
            m.call('div', [$f64('BFE0000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'div_156',
        () =>
            m.call('div', [$f64('3FE0000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'div_157',
        () =>
            m.call('div', [$f64('3FE0000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'div_158',
        () =>
            m.call('div', [$f64('3FE0000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'div_159',
        () =>
            m.call('div', [$f64('3FE0000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'div_160',
        () =>
            m.call('div', [$f64('BFF0000000000000'), $f64('8000000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'div_161',
        () => m.call('div', [$f64('BFF0000000000000'), $f64('0')]),
        $f64('FFF0000000000000'));
    returns(
        'div_162',
        () =>
            m.call('div', [$f64('3FF0000000000000'), $f64('8000000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'div_163',
        () => m.call('div', [$f64('3FF0000000000000'), $f64('0')]),
        $f64('7FF0000000000000'));
    returns(
        'div_164',
        () =>
            m.call('div', [$f64('BFF0000000000000'), $f64('8000000000000001')]),
        $f64('7FF0000000000000'));
    returns(
        'div_165',
        () => m.call('div', [$f64('BFF0000000000000'), $f64('1')]),
        $f64('FFF0000000000000'));
    returns(
        'div_166',
        () =>
            m.call('div', [$f64('3FF0000000000000'), $f64('8000000000000001')]),
        $f64('FFF0000000000000'));
    returns(
        'div_167',
        () => m.call('div', [$f64('3FF0000000000000'), $f64('1')]),
        $f64('7FF0000000000000'));
    returns(
        'div_168',
        () =>
            m.call('div', [$f64('BFF0000000000000'), $f64('8010000000000000')]),
        $f64('7FD0000000000000'));
    returns(
        'div_169',
        () => m.call('div', [$f64('BFF0000000000000'), $f64('10000000000000')]),
        $f64('FFD0000000000000'));
    returns(
        'div_170',
        () =>
            m.call('div', [$f64('3FF0000000000000'), $f64('8010000000000000')]),
        $f64('FFD0000000000000'));
    returns(
        'div_171',
        () => m.call('div', [$f64('3FF0000000000000'), $f64('10000000000000')]),
        $f64('7FD0000000000000'));
    returns(
        'div_172',
        () =>
            m.call('div', [$f64('BFF0000000000000'), $f64('BFE0000000000000')]),
        $f64('4000000000000000'));
    returns(
        'div_173',
        () =>
            m.call('div', [$f64('BFF0000000000000'), $f64('3FE0000000000000')]),
        $f64('C000000000000000'));
    returns(
        'div_174',
        () =>
            m.call('div', [$f64('3FF0000000000000'), $f64('BFE0000000000000')]),
        $f64('C000000000000000'));
    returns(
        'div_175',
        () =>
            m.call('div', [$f64('3FF0000000000000'), $f64('3FE0000000000000')]),
        $f64('4000000000000000'));
    returns(
        'div_176',
        () =>
            m.call('div', [$f64('BFF0000000000000'), $f64('BFF0000000000000')]),
        $f64('3FF0000000000000'));
    returns(
        'div_177',
        () =>
            m.call('div', [$f64('BFF0000000000000'), $f64('3FF0000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'div_178',
        () =>
            m.call('div', [$f64('3FF0000000000000'), $f64('BFF0000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'div_179',
        () =>
            m.call('div', [$f64('3FF0000000000000'), $f64('3FF0000000000000')]),
        $f64('3FF0000000000000'));
    returns(
        'div_180',
        () =>
            m.call('div', [$f64('BFF0000000000000'), $f64('C01921FB54442D18')]),
        $f64('3FC45F306DC9C883'));
    returns(
        'div_181',
        () =>
            m.call('div', [$f64('BFF0000000000000'), $f64('401921FB54442D18')]),
        $f64('BFC45F306DC9C883'));
    returns(
        'div_182',
        () =>
            m.call('div', [$f64('3FF0000000000000'), $f64('C01921FB54442D18')]),
        $f64('BFC45F306DC9C883'));
    returns(
        'div_183',
        () =>
            m.call('div', [$f64('3FF0000000000000'), $f64('401921FB54442D18')]),
        $f64('3FC45F306DC9C883'));
    returns(
        'div_184',
        () =>
            m.call('div', [$f64('BFF0000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('4000000000000'));
    returns(
        'div_185',
        () =>
            m.call('div', [$f64('BFF0000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('8004000000000000'));
    returns(
        'div_186',
        () =>
            m.call('div', [$f64('3FF0000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('8004000000000000'));
    returns(
        'div_187',
        () =>
            m.call('div', [$f64('3FF0000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('4000000000000'));
    returns(
        'div_188',
        () =>
            m.call('div', [$f64('BFF0000000000000'), $f64('FFF0000000000000')]),
        $f64('0'));
    returns(
        'div_189',
        () =>
            m.call('div', [$f64('BFF0000000000000'), $f64('7FF0000000000000')]),
        $f64('8000000000000000'));
    returns(
        'div_190',
        () =>
            m.call('div', [$f64('3FF0000000000000'), $f64('FFF0000000000000')]),
        $f64('8000000000000000'));
    returns(
        'div_191',
        () =>
            m.call('div', [$f64('3FF0000000000000'), $f64('7FF0000000000000')]),
        $f64('0'));
    returns(
        'div_192',
        () =>
            m.call('div', [$f64('BFF0000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'div_193',
        () =>
            m.call('div', [$f64('BFF0000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'div_194',
        () =>
            m.call('div', [$f64('BFF0000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'div_195',
        () =>
            m.call('div', [$f64('BFF0000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'div_196',
        () =>
            m.call('div', [$f64('3FF0000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'div_197',
        () =>
            m.call('div', [$f64('3FF0000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'div_198',
        () =>
            m.call('div', [$f64('3FF0000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'div_199',
        () =>
            m.call('div', [$f64('3FF0000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'div_200',
        () =>
            m.call('div', [$f64('C01921FB54442D18'), $f64('8000000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'div_201',
        () => m.call('div', [$f64('C01921FB54442D18'), $f64('0')]),
        $f64('FFF0000000000000'));
    returns(
        'div_202',
        () =>
            m.call('div', [$f64('401921FB54442D18'), $f64('8000000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'div_203',
        () => m.call('div', [$f64('401921FB54442D18'), $f64('0')]),
        $f64('7FF0000000000000'));
    returns(
        'div_204',
        () =>
            m.call('div', [$f64('C01921FB54442D18'), $f64('8000000000000001')]),
        $f64('7FF0000000000000'));
    returns(
        'div_205',
        () => m.call('div', [$f64('C01921FB54442D18'), $f64('1')]),
        $f64('FFF0000000000000'));
    returns(
        'div_206',
        () =>
            m.call('div', [$f64('401921FB54442D18'), $f64('8000000000000001')]),
        $f64('FFF0000000000000'));
    returns(
        'div_207',
        () => m.call('div', [$f64('401921FB54442D18'), $f64('1')]),
        $f64('7FF0000000000000'));
    returns(
        'div_208',
        () =>
            m.call('div', [$f64('C01921FB54442D18'), $f64('8010000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'div_209',
        () => m.call('div', [$f64('C01921FB54442D18'), $f64('10000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'div_210',
        () =>
            m.call('div', [$f64('401921FB54442D18'), $f64('8010000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'div_211',
        () => m.call('div', [$f64('401921FB54442D18'), $f64('10000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'div_212',
        () =>
            m.call('div', [$f64('C01921FB54442D18'), $f64('BFE0000000000000')]),
        $f64('402921FB54442D18'));
    returns(
        'div_213',
        () =>
            m.call('div', [$f64('C01921FB54442D18'), $f64('3FE0000000000000')]),
        $f64('C02921FB54442D18'));
    returns(
        'div_214',
        () =>
            m.call('div', [$f64('401921FB54442D18'), $f64('BFE0000000000000')]),
        $f64('C02921FB54442D18'));
    returns(
        'div_215',
        () =>
            m.call('div', [$f64('401921FB54442D18'), $f64('3FE0000000000000')]),
        $f64('402921FB54442D18'));
    returns(
        'div_216',
        () =>
            m.call('div', [$f64('C01921FB54442D18'), $f64('BFF0000000000000')]),
        $f64('401921FB54442D18'));
    returns(
        'div_217',
        () =>
            m.call('div', [$f64('C01921FB54442D18'), $f64('3FF0000000000000')]),
        $f64('C01921FB54442D18'));
    returns(
        'div_218',
        () =>
            m.call('div', [$f64('401921FB54442D18'), $f64('BFF0000000000000')]),
        $f64('C01921FB54442D18'));
    returns(
        'div_219',
        () =>
            m.call('div', [$f64('401921FB54442D18'), $f64('3FF0000000000000')]),
        $f64('401921FB54442D18'));
    returns(
        'div_220',
        () =>
            m.call('div', [$f64('C01921FB54442D18'), $f64('C01921FB54442D18')]),
        $f64('3FF0000000000000'));
    returns(
        'div_221',
        () =>
            m.call('div', [$f64('C01921FB54442D18'), $f64('401921FB54442D18')]),
        $f64('BFF0000000000000'));
    returns(
        'div_222',
        () =>
            m.call('div', [$f64('401921FB54442D18'), $f64('C01921FB54442D18')]),
        $f64('BFF0000000000000'));
    returns(
        'div_223',
        () =>
            m.call('div', [$f64('401921FB54442D18'), $f64('401921FB54442D18')]),
        $f64('3FF0000000000000'));
    returns(
        'div_224',
        () =>
            m.call('div', [$f64('C01921FB54442D18'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('1921FB54442D19'));
    returns(
        'div_225',
        () =>
            m.call('div', [$f64('C01921FB54442D18'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('801921FB54442D19'));
    returns(
        'div_226',
        () =>
            m.call('div', [$f64('401921FB54442D18'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('801921FB54442D19'));
    returns(
        'div_227',
        () =>
            m.call('div', [$f64('401921FB54442D18'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('1921FB54442D19'));
    returns(
        'div_228',
        () =>
            m.call('div', [$f64('C01921FB54442D18'), $f64('FFF0000000000000')]),
        $f64('0'));
    returns(
        'div_229',
        () =>
            m.call('div', [$f64('C01921FB54442D18'), $f64('7FF0000000000000')]),
        $f64('8000000000000000'));
    returns(
        'div_230',
        () =>
            m.call('div', [$f64('401921FB54442D18'), $f64('FFF0000000000000')]),
        $f64('8000000000000000'));
    returns(
        'div_231',
        () =>
            m.call('div', [$f64('401921FB54442D18'), $f64('7FF0000000000000')]),
        $f64('0'));
    returns(
        'div_232',
        () =>
            m.call('div', [$f64('C01921FB54442D18'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'div_233',
        () =>
            m.call('div', [$f64('C01921FB54442D18'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'div_234',
        () =>
            m.call('div', [$f64('C01921FB54442D18'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'div_235',
        () =>
            m.call('div', [$f64('C01921FB54442D18'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'div_236',
        () =>
            m.call('div', [$f64('401921FB54442D18'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'div_237',
        () =>
            m.call('div', [$f64('401921FB54442D18'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'div_238',
        () =>
            m.call('div', [$f64('401921FB54442D18'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'div_239',
        () =>
            m.call('div', [$f64('401921FB54442D18'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'div_240',
        () =>
            m.call('div', [$f64('FFEFFFFFFFFFFFFF'), $f64('8000000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'div_241',
        () => m.call('div', [$f64('FFEFFFFFFFFFFFFF'), $f64('0')]),
        $f64('FFF0000000000000'));
    returns(
        'div_242',
        () =>
            m.call('div', [$f64('7FEFFFFFFFFFFFFF'), $f64('8000000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'div_243',
        () => m.call('div', [$f64('7FEFFFFFFFFFFFFF'), $f64('0')]),
        $f64('7FF0000000000000'));
    returns(
        'div_244',
        () =>
            m.call('div', [$f64('FFEFFFFFFFFFFFFF'), $f64('8000000000000001')]),
        $f64('7FF0000000000000'));
    returns(
        'div_245',
        () => m.call('div', [$f64('FFEFFFFFFFFFFFFF'), $f64('1')]),
        $f64('FFF0000000000000'));
    returns(
        'div_246',
        () =>
            m.call('div', [$f64('7FEFFFFFFFFFFFFF'), $f64('8000000000000001')]),
        $f64('FFF0000000000000'));
    returns(
        'div_247',
        () => m.call('div', [$f64('7FEFFFFFFFFFFFFF'), $f64('1')]),
        $f64('7FF0000000000000'));
    returns(
        'div_248',
        () =>
            m.call('div', [$f64('FFEFFFFFFFFFFFFF'), $f64('8010000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'div_249',
        () => m.call('div', [$f64('FFEFFFFFFFFFFFFF'), $f64('10000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'div_250',
        () =>
            m.call('div', [$f64('7FEFFFFFFFFFFFFF'), $f64('8010000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'div_251',
        () => m.call('div', [$f64('7FEFFFFFFFFFFFFF'), $f64('10000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'div_252',
        () =>
            m.call('div', [$f64('FFEFFFFFFFFFFFFF'), $f64('BFE0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'div_253',
        () =>
            m.call('div', [$f64('FFEFFFFFFFFFFFFF'), $f64('3FE0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'div_254',
        () =>
            m.call('div', [$f64('7FEFFFFFFFFFFFFF'), $f64('BFE0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'div_255',
        () =>
            m.call('div', [$f64('7FEFFFFFFFFFFFFF'), $f64('3FE0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'div_256',
        () =>
            m.call('div', [$f64('FFEFFFFFFFFFFFFF'), $f64('BFF0000000000000')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'div_257',
        () =>
            m.call('div', [$f64('FFEFFFFFFFFFFFFF'), $f64('3FF0000000000000')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'div_258',
        () =>
            m.call('div', [$f64('7FEFFFFFFFFFFFFF'), $f64('BFF0000000000000')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'div_259',
        () =>
            m.call('div', [$f64('7FEFFFFFFFFFFFFF'), $f64('3FF0000000000000')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'div_260',
        () =>
            m.call('div', [$f64('FFEFFFFFFFFFFFFF'), $f64('C01921FB54442D18')]),
        $f64('7FC45F306DC9C882'));
    returns(
        'div_261',
        () =>
            m.call('div', [$f64('FFEFFFFFFFFFFFFF'), $f64('401921FB54442D18')]),
        $f64('FFC45F306DC9C882'));
    returns(
        'div_262',
        () =>
            m.call('div', [$f64('7FEFFFFFFFFFFFFF'), $f64('C01921FB54442D18')]),
        $f64('FFC45F306DC9C882'));
    returns(
        'div_263',
        () =>
            m.call('div', [$f64('7FEFFFFFFFFFFFFF'), $f64('401921FB54442D18')]),
        $f64('7FC45F306DC9C882'));
    returns(
        'div_264',
        () =>
            m.call('div', [$f64('FFEFFFFFFFFFFFFF'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('3FF0000000000000'));
    returns(
        'div_265',
        () =>
            m.call('div', [$f64('FFEFFFFFFFFFFFFF'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('BFF0000000000000'));
    returns(
        'div_266',
        () =>
            m.call('div', [$f64('7FEFFFFFFFFFFFFF'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('BFF0000000000000'));
    returns(
        'div_267',
        () =>
            m.call('div', [$f64('7FEFFFFFFFFFFFFF'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('3FF0000000000000'));
    returns(
        'div_268',
        () =>
            m.call('div', [$f64('FFEFFFFFFFFFFFFF'), $f64('FFF0000000000000')]),
        $f64('0'));
    returns(
        'div_269',
        () =>
            m.call('div', [$f64('FFEFFFFFFFFFFFFF'), $f64('7FF0000000000000')]),
        $f64('8000000000000000'));
    returns(
        'div_270',
        () =>
            m.call('div', [$f64('7FEFFFFFFFFFFFFF'), $f64('FFF0000000000000')]),
        $f64('8000000000000000'));
    returns(
        'div_271',
        () =>
            m.call('div', [$f64('7FEFFFFFFFFFFFFF'), $f64('7FF0000000000000')]),
        $f64('0'));
    returns(
        'div_272',
        () =>
            m.call('div', [$f64('FFEFFFFFFFFFFFFF'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'div_273',
        () =>
            m.call('div', [$f64('FFEFFFFFFFFFFFFF'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'div_274',
        () =>
            m.call('div', [$f64('FFEFFFFFFFFFFFFF'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'div_275',
        () =>
            m.call('div', [$f64('FFEFFFFFFFFFFFFF'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'div_276',
        () =>
            m.call('div', [$f64('7FEFFFFFFFFFFFFF'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'div_277',
        () =>
            m.call('div', [$f64('7FEFFFFFFFFFFFFF'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'div_278',
        () =>
            m.call('div', [$f64('7FEFFFFFFFFFFFFF'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'div_279',
        () =>
            m.call('div', [$f64('7FEFFFFFFFFFFFFF'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'div_280',
        () =>
            m.call('div', [$f64('FFF0000000000000'), $f64('8000000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'div_281',
        () => m.call('div', [$f64('FFF0000000000000'), $f64('0')]),
        $f64('FFF0000000000000'));
    returns(
        'div_282',
        () =>
            m.call('div', [$f64('7FF0000000000000'), $f64('8000000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'div_283',
        () => m.call('div', [$f64('7FF0000000000000'), $f64('0')]),
        $f64('7FF0000000000000'));
    returns(
        'div_284',
        () =>
            m.call('div', [$f64('FFF0000000000000'), $f64('8000000000000001')]),
        $f64('7FF0000000000000'));
    returns(
        'div_285',
        () => m.call('div', [$f64('FFF0000000000000'), $f64('1')]),
        $f64('FFF0000000000000'));
    returns(
        'div_286',
        () =>
            m.call('div', [$f64('7FF0000000000000'), $f64('8000000000000001')]),
        $f64('FFF0000000000000'));
    returns(
        'div_287',
        () => m.call('div', [$f64('7FF0000000000000'), $f64('1')]),
        $f64('7FF0000000000000'));
    returns(
        'div_288',
        () =>
            m.call('div', [$f64('FFF0000000000000'), $f64('8010000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'div_289',
        () => m.call('div', [$f64('FFF0000000000000'), $f64('10000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'div_290',
        () =>
            m.call('div', [$f64('7FF0000000000000'), $f64('8010000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'div_291',
        () => m.call('div', [$f64('7FF0000000000000'), $f64('10000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'div_292',
        () =>
            m.call('div', [$f64('FFF0000000000000'), $f64('BFE0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'div_293',
        () =>
            m.call('div', [$f64('FFF0000000000000'), $f64('3FE0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'div_294',
        () =>
            m.call('div', [$f64('7FF0000000000000'), $f64('BFE0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'div_295',
        () =>
            m.call('div', [$f64('7FF0000000000000'), $f64('3FE0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'div_296',
        () =>
            m.call('div', [$f64('FFF0000000000000'), $f64('BFF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'div_297',
        () =>
            m.call('div', [$f64('FFF0000000000000'), $f64('3FF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'div_298',
        () =>
            m.call('div', [$f64('7FF0000000000000'), $f64('BFF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'div_299',
        () =>
            m.call('div', [$f64('7FF0000000000000'), $f64('3FF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'div_300',
        () =>
            m.call('div', [$f64('FFF0000000000000'), $f64('C01921FB54442D18')]),
        $f64('7FF0000000000000'));
    returns(
        'div_301',
        () =>
            m.call('div', [$f64('FFF0000000000000'), $f64('401921FB54442D18')]),
        $f64('FFF0000000000000'));
    returns(
        'div_302',
        () =>
            m.call('div', [$f64('7FF0000000000000'), $f64('C01921FB54442D18')]),
        $f64('FFF0000000000000'));
    returns(
        'div_303',
        () =>
            m.call('div', [$f64('7FF0000000000000'), $f64('401921FB54442D18')]),
        $f64('7FF0000000000000'));
    returns(
        'div_304',
        () =>
            m.call('div', [$f64('FFF0000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('7FF0000000000000'));
    returns(
        'div_305',
        () =>
            m.call('div', [$f64('FFF0000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('FFF0000000000000'));
    returns(
        'div_306',
        () =>
            m.call('div', [$f64('7FF0000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('FFF0000000000000'));
    returns(
        'div_307',
        () =>
            m.call('div', [$f64('7FF0000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('7FF0000000000000'));
    returns(
        'div_308',
        () =>
            m.call('div', [$f64('FFF0000000000000'), $f64('FFF0000000000000')]),
        double.nan);
    returns(
        'div_309',
        () =>
            m.call('div', [$f64('FFF0000000000000'), $f64('7FF0000000000000')]),
        double.nan);
    returns(
        'div_310',
        () =>
            m.call('div', [$f64('7FF0000000000000'), $f64('FFF0000000000000')]),
        double.nan);
    returns(
        'div_311',
        () =>
            m.call('div', [$f64('7FF0000000000000'), $f64('7FF0000000000000')]),
        double.nan);
    returns(
        'div_312',
        () =>
            m.call('div', [$f64('FFF0000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'div_313',
        () =>
            m.call('div', [$f64('FFF0000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'div_314',
        () =>
            m.call('div', [$f64('FFF0000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'div_315',
        () =>
            m.call('div', [$f64('FFF0000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'div_316',
        () =>
            m.call('div', [$f64('7FF0000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'div_317',
        () =>
            m.call('div', [$f64('7FF0000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'div_318',
        () =>
            m.call('div', [$f64('7FF0000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'div_319',
        () =>
            m.call('div', [$f64('7FF0000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'div_320',
        () =>
            m.call('div', [$f64('FFF8000000000000'), $f64('8000000000000000')]),
        double.nan);
    returns(
        'div_321',
        () =>
            m.call('div', [$f64('FFF4000000000000'), $f64('8000000000000000')]),
        double.nan);
    returns('div_322',
        () => m.call('div', [$f64('FFF8000000000000'), $f64('0')]), double.nan);
    returns('div_323',
        () => m.call('div', [$f64('FFF4000000000000'), $f64('0')]), double.nan);
    returns(
        'div_324',
        () =>
            m.call('div', [$f64('7FF8000000000000'), $f64('8000000000000000')]),
        double.nan);
    returns(
        'div_325',
        () =>
            m.call('div', [$f64('7FF4000000000000'), $f64('8000000000000000')]),
        double.nan);
    returns('div_326',
        () => m.call('div', [$f64('7FF8000000000000'), $f64('0')]), double.nan);
    returns('div_327',
        () => m.call('div', [$f64('7FF4000000000000'), $f64('0')]), double.nan);
    returns(
        'div_328',
        () =>
            m.call('div', [$f64('FFF8000000000000'), $f64('8000000000000001')]),
        double.nan);
    returns(
        'div_329',
        () =>
            m.call('div', [$f64('FFF4000000000000'), $f64('8000000000000001')]),
        double.nan);
    returns('div_330',
        () => m.call('div', [$f64('FFF8000000000000'), $f64('1')]), double.nan);
    returns('div_331',
        () => m.call('div', [$f64('FFF4000000000000'), $f64('1')]), double.nan);
    returns(
        'div_332',
        () =>
            m.call('div', [$f64('7FF8000000000000'), $f64('8000000000000001')]),
        double.nan);
    returns(
        'div_333',
        () =>
            m.call('div', [$f64('7FF4000000000000'), $f64('8000000000000001')]),
        double.nan);
    returns('div_334',
        () => m.call('div', [$f64('7FF8000000000000'), $f64('1')]), double.nan);
    returns('div_335',
        () => m.call('div', [$f64('7FF4000000000000'), $f64('1')]), double.nan);
    returns(
        'div_336',
        () =>
            m.call('div', [$f64('FFF8000000000000'), $f64('8010000000000000')]),
        double.nan);
    returns(
        'div_337',
        () =>
            m.call('div', [$f64('FFF4000000000000'), $f64('8010000000000000')]),
        double.nan);
    returns(
        'div_338',
        () => m.call('div', [$f64('FFF8000000000000'), $f64('10000000000000')]),
        double.nan);
    returns(
        'div_339',
        () => m.call('div', [$f64('FFF4000000000000'), $f64('10000000000000')]),
        double.nan);
    returns(
        'div_340',
        () =>
            m.call('div', [$f64('7FF8000000000000'), $f64('8010000000000000')]),
        double.nan);
    returns(
        'div_341',
        () =>
            m.call('div', [$f64('7FF4000000000000'), $f64('8010000000000000')]),
        double.nan);
    returns(
        'div_342',
        () => m.call('div', [$f64('7FF8000000000000'), $f64('10000000000000')]),
        double.nan);
    returns(
        'div_343',
        () => m.call('div', [$f64('7FF4000000000000'), $f64('10000000000000')]),
        double.nan);
    returns(
        'div_344',
        () =>
            m.call('div', [$f64('FFF8000000000000'), $f64('BFE0000000000000')]),
        double.nan);
    returns(
        'div_345',
        () =>
            m.call('div', [$f64('FFF4000000000000'), $f64('BFE0000000000000')]),
        double.nan);
    returns(
        'div_346',
        () =>
            m.call('div', [$f64('FFF8000000000000'), $f64('3FE0000000000000')]),
        double.nan);
    returns(
        'div_347',
        () =>
            m.call('div', [$f64('FFF4000000000000'), $f64('3FE0000000000000')]),
        double.nan);
    returns(
        'div_348',
        () =>
            m.call('div', [$f64('7FF8000000000000'), $f64('BFE0000000000000')]),
        double.nan);
    returns(
        'div_349',
        () =>
            m.call('div', [$f64('7FF4000000000000'), $f64('BFE0000000000000')]),
        double.nan);
    returns(
        'div_350',
        () =>
            m.call('div', [$f64('7FF8000000000000'), $f64('3FE0000000000000')]),
        double.nan);
    returns(
        'div_351',
        () =>
            m.call('div', [$f64('7FF4000000000000'), $f64('3FE0000000000000')]),
        double.nan);
    returns(
        'div_352',
        () =>
            m.call('div', [$f64('FFF8000000000000'), $f64('BFF0000000000000')]),
        double.nan);
    returns(
        'div_353',
        () =>
            m.call('div', [$f64('FFF4000000000000'), $f64('BFF0000000000000')]),
        double.nan);
    returns(
        'div_354',
        () =>
            m.call('div', [$f64('FFF8000000000000'), $f64('3FF0000000000000')]),
        double.nan);
    returns(
        'div_355',
        () =>
            m.call('div', [$f64('FFF4000000000000'), $f64('3FF0000000000000')]),
        double.nan);
    returns(
        'div_356',
        () =>
            m.call('div', [$f64('7FF8000000000000'), $f64('BFF0000000000000')]),
        double.nan);
    returns(
        'div_357',
        () =>
            m.call('div', [$f64('7FF4000000000000'), $f64('BFF0000000000000')]),
        double.nan);
    returns(
        'div_358',
        () =>
            m.call('div', [$f64('7FF8000000000000'), $f64('3FF0000000000000')]),
        double.nan);
    returns(
        'div_359',
        () =>
            m.call('div', [$f64('7FF4000000000000'), $f64('3FF0000000000000')]),
        double.nan);
    returns(
        'div_360',
        () =>
            m.call('div', [$f64('FFF8000000000000'), $f64('C01921FB54442D18')]),
        double.nan);
    returns(
        'div_361',
        () =>
            m.call('div', [$f64('FFF4000000000000'), $f64('C01921FB54442D18')]),
        double.nan);
    returns(
        'div_362',
        () =>
            m.call('div', [$f64('FFF8000000000000'), $f64('401921FB54442D18')]),
        double.nan);
    returns(
        'div_363',
        () =>
            m.call('div', [$f64('FFF4000000000000'), $f64('401921FB54442D18')]),
        double.nan);
    returns(
        'div_364',
        () =>
            m.call('div', [$f64('7FF8000000000000'), $f64('C01921FB54442D18')]),
        double.nan);
    returns(
        'div_365',
        () =>
            m.call('div', [$f64('7FF4000000000000'), $f64('C01921FB54442D18')]),
        double.nan);
    returns(
        'div_366',
        () =>
            m.call('div', [$f64('7FF8000000000000'), $f64('401921FB54442D18')]),
        double.nan);
    returns(
        'div_367',
        () =>
            m.call('div', [$f64('7FF4000000000000'), $f64('401921FB54442D18')]),
        double.nan);
    returns(
        'div_368',
        () =>
            m.call('div', [$f64('FFF8000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        double.nan);
    returns(
        'div_369',
        () =>
            m.call('div', [$f64('FFF4000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        double.nan);
    returns(
        'div_370',
        () =>
            m.call('div', [$f64('FFF8000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        double.nan);
    returns(
        'div_371',
        () =>
            m.call('div', [$f64('FFF4000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        double.nan);
    returns(
        'div_372',
        () =>
            m.call('div', [$f64('7FF8000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        double.nan);
    returns(
        'div_373',
        () =>
            m.call('div', [$f64('7FF4000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        double.nan);
    returns(
        'div_374',
        () =>
            m.call('div', [$f64('7FF8000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        double.nan);
    returns(
        'div_375',
        () =>
            m.call('div', [$f64('7FF4000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        double.nan);
    returns(
        'div_376',
        () =>
            m.call('div', [$f64('FFF8000000000000'), $f64('FFF0000000000000')]),
        double.nan);
    returns(
        'div_377',
        () =>
            m.call('div', [$f64('FFF4000000000000'), $f64('FFF0000000000000')]),
        double.nan);
    returns(
        'div_378',
        () =>
            m.call('div', [$f64('FFF8000000000000'), $f64('7FF0000000000000')]),
        double.nan);
    returns(
        'div_379',
        () =>
            m.call('div', [$f64('FFF4000000000000'), $f64('7FF0000000000000')]),
        double.nan);
    returns(
        'div_380',
        () =>
            m.call('div', [$f64('7FF8000000000000'), $f64('FFF0000000000000')]),
        double.nan);
    returns(
        'div_381',
        () =>
            m.call('div', [$f64('7FF4000000000000'), $f64('FFF0000000000000')]),
        double.nan);
    returns(
        'div_382',
        () =>
            m.call('div', [$f64('7FF8000000000000'), $f64('7FF0000000000000')]),
        double.nan);
    returns(
        'div_383',
        () =>
            m.call('div', [$f64('7FF4000000000000'), $f64('7FF0000000000000')]),
        double.nan);
    returns(
        'div_384',
        () =>
            m.call('div', [$f64('FFF8000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'div_385',
        () =>
            m.call('div', [$f64('FFF4000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'div_386',
        () =>
            m.call('div', [$f64('FFF8000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'div_387',
        () =>
            m.call('div', [$f64('FFF4000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'div_388',
        () =>
            m.call('div', [$f64('FFF8000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'div_389',
        () =>
            m.call('div', [$f64('FFF4000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'div_390',
        () =>
            m.call('div', [$f64('FFF8000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'div_391',
        () =>
            m.call('div', [$f64('FFF4000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'div_392',
        () =>
            m.call('div', [$f64('7FF8000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'div_393',
        () =>
            m.call('div', [$f64('7FF4000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'div_394',
        () =>
            m.call('div', [$f64('7FF8000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'div_395',
        () =>
            m.call('div', [$f64('7FF4000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'div_396',
        () =>
            m.call('div', [$f64('7FF8000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'div_397',
        () =>
            m.call('div', [$f64('7FF4000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'div_398',
        () =>
            m.call('div', [$f64('7FF8000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'div_399',
        () =>
            m.call('div', [$f64('7FF4000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'min_0',
        () =>
            m.call('min', [$f64('8000000000000000'), $f64('8000000000000000')]),
        $f64('8000000000000000'));
    returns('min_1', () => m.call('min', [$f64('8000000000000000'), $f64('0')]),
        $f64('8000000000000000'));
    returns('min_2', () => m.call('min', [$f64('0'), $f64('8000000000000000')]),
        $f64('8000000000000000'));
    returns('min_3', () => m.call('min', [$f64('0'), $f64('0')]), $f64('0'));
    returns(
        'min_4',
        () =>
            m.call('min', [$f64('8000000000000000'), $f64('8000000000000001')]),
        $f64('8000000000000001'));
    returns('min_5', () => m.call('min', [$f64('8000000000000000'), $f64('1')]),
        $f64('8000000000000000'));
    returns('min_6', () => m.call('min', [$f64('0'), $f64('8000000000000001')]),
        $f64('8000000000000001'));
    returns('min_7', () => m.call('min', [$f64('0'), $f64('1')]), $f64('0'));
    returns(
        'min_8',
        () =>
            m.call('min', [$f64('8000000000000000'), $f64('8010000000000000')]),
        $f64('8010000000000000'));
    returns(
        'min_9',
        () => m.call('min', [$f64('8000000000000000'), $f64('10000000000000')]),
        $f64('8000000000000000'));
    returns(
        'min_10',
        () => m.call('min', [$f64('0'), $f64('8010000000000000')]),
        $f64('8010000000000000'));
    returns('min_11', () => m.call('min', [$f64('0'), $f64('10000000000000')]),
        $f64('0'));
    returns(
        'min_12',
        () =>
            m.call('min', [$f64('8000000000000000'), $f64('BFE0000000000000')]),
        $f64('BFE0000000000000'));
    returns(
        'min_13',
        () =>
            m.call('min', [$f64('8000000000000000'), $f64('3FE0000000000000')]),
        $f64('8000000000000000'));
    returns(
        'min_14',
        () => m.call('min', [$f64('0'), $f64('BFE0000000000000')]),
        $f64('BFE0000000000000'));
    returns('min_15',
        () => m.call('min', [$f64('0'), $f64('3FE0000000000000')]), $f64('0'));
    returns(
        'min_16',
        () =>
            m.call('min', [$f64('8000000000000000'), $f64('BFF0000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'min_17',
        () =>
            m.call('min', [$f64('8000000000000000'), $f64('3FF0000000000000')]),
        $f64('8000000000000000'));
    returns(
        'min_18',
        () => m.call('min', [$f64('0'), $f64('BFF0000000000000')]),
        $f64('BFF0000000000000'));
    returns('min_19',
        () => m.call('min', [$f64('0'), $f64('3FF0000000000000')]), $f64('0'));
    returns(
        'min_20',
        () =>
            m.call('min', [$f64('8000000000000000'), $f64('C01921FB54442D18')]),
        $f64('C01921FB54442D18'));
    returns(
        'min_21',
        () =>
            m.call('min', [$f64('8000000000000000'), $f64('401921FB54442D18')]),
        $f64('8000000000000000'));
    returns(
        'min_22',
        () => m.call('min', [$f64('0'), $f64('C01921FB54442D18')]),
        $f64('C01921FB54442D18'));
    returns('min_23',
        () => m.call('min', [$f64('0'), $f64('401921FB54442D18')]), $f64('0'));
    returns(
        'min_24',
        () =>
            m.call('min', [$f64('8000000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'min_25',
        () =>
            m.call('min', [$f64('8000000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('8000000000000000'));
    returns(
        'min_26',
        () => m.call('min', [$f64('0'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns('min_27',
        () => m.call('min', [$f64('0'), $f64('7FEFFFFFFFFFFFFF')]), $f64('0'));
    returns(
        'min_28',
        () =>
            m.call('min', [$f64('8000000000000000'), $f64('FFF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'min_29',
        () =>
            m.call('min', [$f64('8000000000000000'), $f64('7FF0000000000000')]),
        $f64('8000000000000000'));
    returns(
        'min_30',
        () => m.call('min', [$f64('0'), $f64('FFF0000000000000')]),
        $f64('FFF0000000000000'));
    returns('min_31',
        () => m.call('min', [$f64('0'), $f64('7FF0000000000000')]), $f64('0'));
    returns(
        'min_32',
        () =>
            m.call('min', [$f64('8000000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'min_33',
        () =>
            m.call('min', [$f64('8000000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'min_34',
        () =>
            m.call('min', [$f64('8000000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'min_35',
        () =>
            m.call('min', [$f64('8000000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns('min_36',
        () => m.call('min', [$f64('0'), $f64('FFF8000000000000')]), double.nan);
    returns('min_37',
        () => m.call('min', [$f64('0'), $f64('FFF4000000000000')]), double.nan);
    returns('min_38',
        () => m.call('min', [$f64('0'), $f64('7FF8000000000000')]), double.nan);
    returns('min_39',
        () => m.call('min', [$f64('0'), $f64('7FF4000000000000')]), double.nan);
    returns(
        'min_40',
        () =>
            m.call('min', [$f64('8000000000000001'), $f64('8000000000000000')]),
        $f64('8000000000000001'));
    returns(
        'min_41',
        () => m.call('min', [$f64('8000000000000001'), $f64('0')]),
        $f64('8000000000000001'));
    returns(
        'min_42',
        () => m.call('min', [$f64('1'), $f64('8000000000000000')]),
        $f64('8000000000000000'));
    returns('min_43', () => m.call('min', [$f64('1'), $f64('0')]), $f64('0'));
    returns(
        'min_44',
        () =>
            m.call('min', [$f64('8000000000000001'), $f64('8000000000000001')]),
        $f64('8000000000000001'));
    returns(
        'min_45',
        () => m.call('min', [$f64('8000000000000001'), $f64('1')]),
        $f64('8000000000000001'));
    returns(
        'min_46',
        () => m.call('min', [$f64('1'), $f64('8000000000000001')]),
        $f64('8000000000000001'));
    returns('min_47', () => m.call('min', [$f64('1'), $f64('1')]), $f64('1'));
    returns(
        'min_48',
        () =>
            m.call('min', [$f64('8000000000000001'), $f64('8010000000000000')]),
        $f64('8010000000000000'));
    returns(
        'min_49',
        () => m.call('min', [$f64('8000000000000001'), $f64('10000000000000')]),
        $f64('8000000000000001'));
    returns(
        'min_50',
        () => m.call('min', [$f64('1'), $f64('8010000000000000')]),
        $f64('8010000000000000'));
    returns('min_51', () => m.call('min', [$f64('1'), $f64('10000000000000')]),
        $f64('1'));
    returns(
        'min_52',
        () =>
            m.call('min', [$f64('8000000000000001'), $f64('BFE0000000000000')]),
        $f64('BFE0000000000000'));
    returns(
        'min_53',
        () =>
            m.call('min', [$f64('8000000000000001'), $f64('3FE0000000000000')]),
        $f64('8000000000000001'));
    returns(
        'min_54',
        () => m.call('min', [$f64('1'), $f64('BFE0000000000000')]),
        $f64('BFE0000000000000'));
    returns('min_55',
        () => m.call('min', [$f64('1'), $f64('3FE0000000000000')]), $f64('1'));
    returns(
        'min_56',
        () =>
            m.call('min', [$f64('8000000000000001'), $f64('BFF0000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'min_57',
        () =>
            m.call('min', [$f64('8000000000000001'), $f64('3FF0000000000000')]),
        $f64('8000000000000001'));
    returns(
        'min_58',
        () => m.call('min', [$f64('1'), $f64('BFF0000000000000')]),
        $f64('BFF0000000000000'));
    returns('min_59',
        () => m.call('min', [$f64('1'), $f64('3FF0000000000000')]), $f64('1'));
    returns(
        'min_60',
        () =>
            m.call('min', [$f64('8000000000000001'), $f64('C01921FB54442D18')]),
        $f64('C01921FB54442D18'));
    returns(
        'min_61',
        () =>
            m.call('min', [$f64('8000000000000001'), $f64('401921FB54442D18')]),
        $f64('8000000000000001'));
    returns(
        'min_62',
        () => m.call('min', [$f64('1'), $f64('C01921FB54442D18')]),
        $f64('C01921FB54442D18'));
    returns('min_63',
        () => m.call('min', [$f64('1'), $f64('401921FB54442D18')]), $f64('1'));
    returns(
        'min_64',
        () =>
            m.call('min', [$f64('8000000000000001'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'min_65',
        () =>
            m.call('min', [$f64('8000000000000001'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('8000000000000001'));
    returns(
        'min_66',
        () => m.call('min', [$f64('1'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns('min_67',
        () => m.call('min', [$f64('1'), $f64('7FEFFFFFFFFFFFFF')]), $f64('1'));
    returns(
        'min_68',
        () =>
            m.call('min', [$f64('8000000000000001'), $f64('FFF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'min_69',
        () =>
            m.call('min', [$f64('8000000000000001'), $f64('7FF0000000000000')]),
        $f64('8000000000000001'));
    returns(
        'min_70',
        () => m.call('min', [$f64('1'), $f64('FFF0000000000000')]),
        $f64('FFF0000000000000'));
    returns('min_71',
        () => m.call('min', [$f64('1'), $f64('7FF0000000000000')]), $f64('1'));
    returns(
        'min_72',
        () =>
            m.call('min', [$f64('8000000000000001'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'min_73',
        () =>
            m.call('min', [$f64('8000000000000001'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'min_74',
        () =>
            m.call('min', [$f64('8000000000000001'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'min_75',
        () =>
            m.call('min', [$f64('8000000000000001'), $f64('7FF4000000000000')]),
        double.nan);
    returns('min_76',
        () => m.call('min', [$f64('1'), $f64('FFF8000000000000')]), double.nan);
    returns('min_77',
        () => m.call('min', [$f64('1'), $f64('FFF4000000000000')]), double.nan);
    returns('min_78',
        () => m.call('min', [$f64('1'), $f64('7FF8000000000000')]), double.nan);
    returns('min_79',
        () => m.call('min', [$f64('1'), $f64('7FF4000000000000')]), double.nan);
    returns(
        'min_80',
        () =>
            m.call('min', [$f64('8010000000000000'), $f64('8000000000000000')]),
        $f64('8010000000000000'));
    returns(
        'min_81',
        () => m.call('min', [$f64('8010000000000000'), $f64('0')]),
        $f64('8010000000000000'));
    returns(
        'min_82',
        () => m.call('min', [$f64('10000000000000'), $f64('8000000000000000')]),
        $f64('8000000000000000'));
    returns('min_83', () => m.call('min', [$f64('10000000000000'), $f64('0')]),
        $f64('0'));
    returns(
        'min_84',
        () =>
            m.call('min', [$f64('8010000000000000'), $f64('8000000000000001')]),
        $f64('8010000000000000'));
    returns(
        'min_85',
        () => m.call('min', [$f64('8010000000000000'), $f64('1')]),
        $f64('8010000000000000'));
    returns(
        'min_86',
        () => m.call('min', [$f64('10000000000000'), $f64('8000000000000001')]),
        $f64('8000000000000001'));
    returns('min_87', () => m.call('min', [$f64('10000000000000'), $f64('1')]),
        $f64('1'));
    returns(
        'min_88',
        () =>
            m.call('min', [$f64('8010000000000000'), $f64('8010000000000000')]),
        $f64('8010000000000000'));
    returns(
        'min_89',
        () => m.call('min', [$f64('8010000000000000'), $f64('10000000000000')]),
        $f64('8010000000000000'));
    returns(
        'min_90',
        () => m.call('min', [$f64('10000000000000'), $f64('8010000000000000')]),
        $f64('8010000000000000'));
    returns(
        'min_91',
        () => m.call('min', [$f64('10000000000000'), $f64('10000000000000')]),
        $f64('10000000000000'));
    returns(
        'min_92',
        () =>
            m.call('min', [$f64('8010000000000000'), $f64('BFE0000000000000')]),
        $f64('BFE0000000000000'));
    returns(
        'min_93',
        () =>
            m.call('min', [$f64('8010000000000000'), $f64('3FE0000000000000')]),
        $f64('8010000000000000'));
    returns(
        'min_94',
        () => m.call('min', [$f64('10000000000000'), $f64('BFE0000000000000')]),
        $f64('BFE0000000000000'));
    returns(
        'min_95',
        () => m.call('min', [$f64('10000000000000'), $f64('3FE0000000000000')]),
        $f64('10000000000000'));
    returns(
        'min_96',
        () =>
            m.call('min', [$f64('8010000000000000'), $f64('BFF0000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'min_97',
        () =>
            m.call('min', [$f64('8010000000000000'), $f64('3FF0000000000000')]),
        $f64('8010000000000000'));
    returns(
        'min_98',
        () => m.call('min', [$f64('10000000000000'), $f64('BFF0000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'min_99',
        () => m.call('min', [$f64('10000000000000'), $f64('3FF0000000000000')]),
        $f64('10000000000000'));
    returns(
        'min_100',
        () =>
            m.call('min', [$f64('8010000000000000'), $f64('C01921FB54442D18')]),
        $f64('C01921FB54442D18'));
    returns(
        'min_101',
        () =>
            m.call('min', [$f64('8010000000000000'), $f64('401921FB54442D18')]),
        $f64('8010000000000000'));
    returns(
        'min_102',
        () => m.call('min', [$f64('10000000000000'), $f64('C01921FB54442D18')]),
        $f64('C01921FB54442D18'));
    returns(
        'min_103',
        () => m.call('min', [$f64('10000000000000'), $f64('401921FB54442D18')]),
        $f64('10000000000000'));
    returns(
        'min_104',
        () =>
            m.call('min', [$f64('8010000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'min_105',
        () =>
            m.call('min', [$f64('8010000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('8010000000000000'));
    returns(
        'min_106',
        () => m.call('min', [$f64('10000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'min_107',
        () => m.call('min', [$f64('10000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('10000000000000'));
    returns(
        'min_108',
        () =>
            m.call('min', [$f64('8010000000000000'), $f64('FFF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'min_109',
        () =>
            m.call('min', [$f64('8010000000000000'), $f64('7FF0000000000000')]),
        $f64('8010000000000000'));
    returns(
        'min_110',
        () => m.call('min', [$f64('10000000000000'), $f64('FFF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'min_111',
        () => m.call('min', [$f64('10000000000000'), $f64('7FF0000000000000')]),
        $f64('10000000000000'));
    returns(
        'min_112',
        () =>
            m.call('min', [$f64('8010000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'min_113',
        () =>
            m.call('min', [$f64('8010000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'min_114',
        () =>
            m.call('min', [$f64('8010000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'min_115',
        () =>
            m.call('min', [$f64('8010000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'min_116',
        () => m.call('min', [$f64('10000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'min_117',
        () => m.call('min', [$f64('10000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'min_118',
        () => m.call('min', [$f64('10000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'min_119',
        () => m.call('min', [$f64('10000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'min_120',
        () =>
            m.call('min', [$f64('BFE0000000000000'), $f64('8000000000000000')]),
        $f64('BFE0000000000000'));
    returns(
        'min_121',
        () => m.call('min', [$f64('BFE0000000000000'), $f64('0')]),
        $f64('BFE0000000000000'));
    returns(
        'min_122',
        () =>
            m.call('min', [$f64('3FE0000000000000'), $f64('8000000000000000')]),
        $f64('8000000000000000'));
    returns('min_123',
        () => m.call('min', [$f64('3FE0000000000000'), $f64('0')]), $f64('0'));
    returns(
        'min_124',
        () =>
            m.call('min', [$f64('BFE0000000000000'), $f64('8000000000000001')]),
        $f64('BFE0000000000000'));
    returns(
        'min_125',
        () => m.call('min', [$f64('BFE0000000000000'), $f64('1')]),
        $f64('BFE0000000000000'));
    returns(
        'min_126',
        () =>
            m.call('min', [$f64('3FE0000000000000'), $f64('8000000000000001')]),
        $f64('8000000000000001'));
    returns('min_127',
        () => m.call('min', [$f64('3FE0000000000000'), $f64('1')]), $f64('1'));
    returns(
        'min_128',
        () =>
            m.call('min', [$f64('BFE0000000000000'), $f64('8010000000000000')]),
        $f64('BFE0000000000000'));
    returns(
        'min_129',
        () => m.call('min', [$f64('BFE0000000000000'), $f64('10000000000000')]),
        $f64('BFE0000000000000'));
    returns(
        'min_130',
        () =>
            m.call('min', [$f64('3FE0000000000000'), $f64('8010000000000000')]),
        $f64('8010000000000000'));
    returns(
        'min_131',
        () => m.call('min', [$f64('3FE0000000000000'), $f64('10000000000000')]),
        $f64('10000000000000'));
    returns(
        'min_132',
        () =>
            m.call('min', [$f64('BFE0000000000000'), $f64('BFE0000000000000')]),
        $f64('BFE0000000000000'));
    returns(
        'min_133',
        () =>
            m.call('min', [$f64('BFE0000000000000'), $f64('3FE0000000000000')]),
        $f64('BFE0000000000000'));
    returns(
        'min_134',
        () =>
            m.call('min', [$f64('3FE0000000000000'), $f64('BFE0000000000000')]),
        $f64('BFE0000000000000'));
    returns(
        'min_135',
        () =>
            m.call('min', [$f64('3FE0000000000000'), $f64('3FE0000000000000')]),
        $f64('3FE0000000000000'));
    returns(
        'min_136',
        () =>
            m.call('min', [$f64('BFE0000000000000'), $f64('BFF0000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'min_137',
        () =>
            m.call('min', [$f64('BFE0000000000000'), $f64('3FF0000000000000')]),
        $f64('BFE0000000000000'));
    returns(
        'min_138',
        () =>
            m.call('min', [$f64('3FE0000000000000'), $f64('BFF0000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'min_139',
        () =>
            m.call('min', [$f64('3FE0000000000000'), $f64('3FF0000000000000')]),
        $f64('3FE0000000000000'));
    returns(
        'min_140',
        () =>
            m.call('min', [$f64('BFE0000000000000'), $f64('C01921FB54442D18')]),
        $f64('C01921FB54442D18'));
    returns(
        'min_141',
        () =>
            m.call('min', [$f64('BFE0000000000000'), $f64('401921FB54442D18')]),
        $f64('BFE0000000000000'));
    returns(
        'min_142',
        () =>
            m.call('min', [$f64('3FE0000000000000'), $f64('C01921FB54442D18')]),
        $f64('C01921FB54442D18'));
    returns(
        'min_143',
        () =>
            m.call('min', [$f64('3FE0000000000000'), $f64('401921FB54442D18')]),
        $f64('3FE0000000000000'));
    returns(
        'min_144',
        () =>
            m.call('min', [$f64('BFE0000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'min_145',
        () =>
            m.call('min', [$f64('BFE0000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('BFE0000000000000'));
    returns(
        'min_146',
        () =>
            m.call('min', [$f64('3FE0000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'min_147',
        () =>
            m.call('min', [$f64('3FE0000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('3FE0000000000000'));
    returns(
        'min_148',
        () =>
            m.call('min', [$f64('BFE0000000000000'), $f64('FFF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'min_149',
        () =>
            m.call('min', [$f64('BFE0000000000000'), $f64('7FF0000000000000')]),
        $f64('BFE0000000000000'));
    returns(
        'min_150',
        () =>
            m.call('min', [$f64('3FE0000000000000'), $f64('FFF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'min_151',
        () =>
            m.call('min', [$f64('3FE0000000000000'), $f64('7FF0000000000000')]),
        $f64('3FE0000000000000'));
    returns(
        'min_152',
        () =>
            m.call('min', [$f64('BFE0000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'min_153',
        () =>
            m.call('min', [$f64('BFE0000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'min_154',
        () =>
            m.call('min', [$f64('BFE0000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'min_155',
        () =>
            m.call('min', [$f64('BFE0000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'min_156',
        () =>
            m.call('min', [$f64('3FE0000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'min_157',
        () =>
            m.call('min', [$f64('3FE0000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'min_158',
        () =>
            m.call('min', [$f64('3FE0000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'min_159',
        () =>
            m.call('min', [$f64('3FE0000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'min_160',
        () =>
            m.call('min', [$f64('BFF0000000000000'), $f64('8000000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'min_161',
        () => m.call('min', [$f64('BFF0000000000000'), $f64('0')]),
        $f64('BFF0000000000000'));
    returns(
        'min_162',
        () =>
            m.call('min', [$f64('3FF0000000000000'), $f64('8000000000000000')]),
        $f64('8000000000000000'));
    returns('min_163',
        () => m.call('min', [$f64('3FF0000000000000'), $f64('0')]), $f64('0'));
    returns(
        'min_164',
        () =>
            m.call('min', [$f64('BFF0000000000000'), $f64('8000000000000001')]),
        $f64('BFF0000000000000'));
    returns(
        'min_165',
        () => m.call('min', [$f64('BFF0000000000000'), $f64('1')]),
        $f64('BFF0000000000000'));
    returns(
        'min_166',
        () =>
            m.call('min', [$f64('3FF0000000000000'), $f64('8000000000000001')]),
        $f64('8000000000000001'));
    returns('min_167',
        () => m.call('min', [$f64('3FF0000000000000'), $f64('1')]), $f64('1'));
    returns(
        'min_168',
        () =>
            m.call('min', [$f64('BFF0000000000000'), $f64('8010000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'min_169',
        () => m.call('min', [$f64('BFF0000000000000'), $f64('10000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'min_170',
        () =>
            m.call('min', [$f64('3FF0000000000000'), $f64('8010000000000000')]),
        $f64('8010000000000000'));
    returns(
        'min_171',
        () => m.call('min', [$f64('3FF0000000000000'), $f64('10000000000000')]),
        $f64('10000000000000'));
    returns(
        'min_172',
        () =>
            m.call('min', [$f64('BFF0000000000000'), $f64('BFE0000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'min_173',
        () =>
            m.call('min', [$f64('BFF0000000000000'), $f64('3FE0000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'min_174',
        () =>
            m.call('min', [$f64('3FF0000000000000'), $f64('BFE0000000000000')]),
        $f64('BFE0000000000000'));
    returns(
        'min_175',
        () =>
            m.call('min', [$f64('3FF0000000000000'), $f64('3FE0000000000000')]),
        $f64('3FE0000000000000'));
    returns(
        'min_176',
        () =>
            m.call('min', [$f64('BFF0000000000000'), $f64('BFF0000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'min_177',
        () =>
            m.call('min', [$f64('BFF0000000000000'), $f64('3FF0000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'min_178',
        () =>
            m.call('min', [$f64('3FF0000000000000'), $f64('BFF0000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'min_179',
        () =>
            m.call('min', [$f64('3FF0000000000000'), $f64('3FF0000000000000')]),
        $f64('3FF0000000000000'));
    returns(
        'min_180',
        () =>
            m.call('min', [$f64('BFF0000000000000'), $f64('C01921FB54442D18')]),
        $f64('C01921FB54442D18'));
    returns(
        'min_181',
        () =>
            m.call('min', [$f64('BFF0000000000000'), $f64('401921FB54442D18')]),
        $f64('BFF0000000000000'));
    returns(
        'min_182',
        () =>
            m.call('min', [$f64('3FF0000000000000'), $f64('C01921FB54442D18')]),
        $f64('C01921FB54442D18'));
    returns(
        'min_183',
        () =>
            m.call('min', [$f64('3FF0000000000000'), $f64('401921FB54442D18')]),
        $f64('3FF0000000000000'));
    returns(
        'min_184',
        () =>
            m.call('min', [$f64('BFF0000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'min_185',
        () =>
            m.call('min', [$f64('BFF0000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('BFF0000000000000'));
    returns(
        'min_186',
        () =>
            m.call('min', [$f64('3FF0000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'min_187',
        () =>
            m.call('min', [$f64('3FF0000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('3FF0000000000000'));
    returns(
        'min_188',
        () =>
            m.call('min', [$f64('BFF0000000000000'), $f64('FFF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'min_189',
        () =>
            m.call('min', [$f64('BFF0000000000000'), $f64('7FF0000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'min_190',
        () =>
            m.call('min', [$f64('3FF0000000000000'), $f64('FFF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'min_191',
        () =>
            m.call('min', [$f64('3FF0000000000000'), $f64('7FF0000000000000')]),
        $f64('3FF0000000000000'));
    returns(
        'min_192',
        () =>
            m.call('min', [$f64('BFF0000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'min_193',
        () =>
            m.call('min', [$f64('BFF0000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'min_194',
        () =>
            m.call('min', [$f64('BFF0000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'min_195',
        () =>
            m.call('min', [$f64('BFF0000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'min_196',
        () =>
            m.call('min', [$f64('3FF0000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'min_197',
        () =>
            m.call('min', [$f64('3FF0000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'min_198',
        () =>
            m.call('min', [$f64('3FF0000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'min_199',
        () =>
            m.call('min', [$f64('3FF0000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'min_200',
        () =>
            m.call('min', [$f64('C01921FB54442D18'), $f64('8000000000000000')]),
        $f64('C01921FB54442D18'));
    returns(
        'min_201',
        () => m.call('min', [$f64('C01921FB54442D18'), $f64('0')]),
        $f64('C01921FB54442D18'));
    returns(
        'min_202',
        () =>
            m.call('min', [$f64('401921FB54442D18'), $f64('8000000000000000')]),
        $f64('8000000000000000'));
    returns('min_203',
        () => m.call('min', [$f64('401921FB54442D18'), $f64('0')]), $f64('0'));
    returns(
        'min_204',
        () =>
            m.call('min', [$f64('C01921FB54442D18'), $f64('8000000000000001')]),
        $f64('C01921FB54442D18'));
    returns(
        'min_205',
        () => m.call('min', [$f64('C01921FB54442D18'), $f64('1')]),
        $f64('C01921FB54442D18'));
    returns(
        'min_206',
        () =>
            m.call('min', [$f64('401921FB54442D18'), $f64('8000000000000001')]),
        $f64('8000000000000001'));
    returns('min_207',
        () => m.call('min', [$f64('401921FB54442D18'), $f64('1')]), $f64('1'));
    returns(
        'min_208',
        () =>
            m.call('min', [$f64('C01921FB54442D18'), $f64('8010000000000000')]),
        $f64('C01921FB54442D18'));
    returns(
        'min_209',
        () => m.call('min', [$f64('C01921FB54442D18'), $f64('10000000000000')]),
        $f64('C01921FB54442D18'));
    returns(
        'min_210',
        () =>
            m.call('min', [$f64('401921FB54442D18'), $f64('8010000000000000')]),
        $f64('8010000000000000'));
    returns(
        'min_211',
        () => m.call('min', [$f64('401921FB54442D18'), $f64('10000000000000')]),
        $f64('10000000000000'));
    returns(
        'min_212',
        () =>
            m.call('min', [$f64('C01921FB54442D18'), $f64('BFE0000000000000')]),
        $f64('C01921FB54442D18'));
    returns(
        'min_213',
        () =>
            m.call('min', [$f64('C01921FB54442D18'), $f64('3FE0000000000000')]),
        $f64('C01921FB54442D18'));
    returns(
        'min_214',
        () =>
            m.call('min', [$f64('401921FB54442D18'), $f64('BFE0000000000000')]),
        $f64('BFE0000000000000'));
    returns(
        'min_215',
        () =>
            m.call('min', [$f64('401921FB54442D18'), $f64('3FE0000000000000')]),
        $f64('3FE0000000000000'));
    returns(
        'min_216',
        () =>
            m.call('min', [$f64('C01921FB54442D18'), $f64('BFF0000000000000')]),
        $f64('C01921FB54442D18'));
    returns(
        'min_217',
        () =>
            m.call('min', [$f64('C01921FB54442D18'), $f64('3FF0000000000000')]),
        $f64('C01921FB54442D18'));
    returns(
        'min_218',
        () =>
            m.call('min', [$f64('401921FB54442D18'), $f64('BFF0000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'min_219',
        () =>
            m.call('min', [$f64('401921FB54442D18'), $f64('3FF0000000000000')]),
        $f64('3FF0000000000000'));
    returns(
        'min_220',
        () =>
            m.call('min', [$f64('C01921FB54442D18'), $f64('C01921FB54442D18')]),
        $f64('C01921FB54442D18'));
    returns(
        'min_221',
        () =>
            m.call('min', [$f64('C01921FB54442D18'), $f64('401921FB54442D18')]),
        $f64('C01921FB54442D18'));
    returns(
        'min_222',
        () =>
            m.call('min', [$f64('401921FB54442D18'), $f64('C01921FB54442D18')]),
        $f64('C01921FB54442D18'));
    returns(
        'min_223',
        () =>
            m.call('min', [$f64('401921FB54442D18'), $f64('401921FB54442D18')]),
        $f64('401921FB54442D18'));
    returns(
        'min_224',
        () =>
            m.call('min', [$f64('C01921FB54442D18'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'min_225',
        () =>
            m.call('min', [$f64('C01921FB54442D18'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('C01921FB54442D18'));
    returns(
        'min_226',
        () =>
            m.call('min', [$f64('401921FB54442D18'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'min_227',
        () =>
            m.call('min', [$f64('401921FB54442D18'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('401921FB54442D18'));
    returns(
        'min_228',
        () =>
            m.call('min', [$f64('C01921FB54442D18'), $f64('FFF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'min_229',
        () =>
            m.call('min', [$f64('C01921FB54442D18'), $f64('7FF0000000000000')]),
        $f64('C01921FB54442D18'));
    returns(
        'min_230',
        () =>
            m.call('min', [$f64('401921FB54442D18'), $f64('FFF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'min_231',
        () =>
            m.call('min', [$f64('401921FB54442D18'), $f64('7FF0000000000000')]),
        $f64('401921FB54442D18'));
    returns(
        'min_232',
        () =>
            m.call('min', [$f64('C01921FB54442D18'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'min_233',
        () =>
            m.call('min', [$f64('C01921FB54442D18'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'min_234',
        () =>
            m.call('min', [$f64('C01921FB54442D18'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'min_235',
        () =>
            m.call('min', [$f64('C01921FB54442D18'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'min_236',
        () =>
            m.call('min', [$f64('401921FB54442D18'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'min_237',
        () =>
            m.call('min', [$f64('401921FB54442D18'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'min_238',
        () =>
            m.call('min', [$f64('401921FB54442D18'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'min_239',
        () =>
            m.call('min', [$f64('401921FB54442D18'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'min_240',
        () =>
            m.call('min', [$f64('FFEFFFFFFFFFFFFF'), $f64('8000000000000000')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'min_241',
        () => m.call('min', [$f64('FFEFFFFFFFFFFFFF'), $f64('0')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'min_242',
        () =>
            m.call('min', [$f64('7FEFFFFFFFFFFFFF'), $f64('8000000000000000')]),
        $f64('8000000000000000'));
    returns('min_243',
        () => m.call('min', [$f64('7FEFFFFFFFFFFFFF'), $f64('0')]), $f64('0'));
    returns(
        'min_244',
        () =>
            m.call('min', [$f64('FFEFFFFFFFFFFFFF'), $f64('8000000000000001')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'min_245',
        () => m.call('min', [$f64('FFEFFFFFFFFFFFFF'), $f64('1')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'min_246',
        () =>
            m.call('min', [$f64('7FEFFFFFFFFFFFFF'), $f64('8000000000000001')]),
        $f64('8000000000000001'));
    returns('min_247',
        () => m.call('min', [$f64('7FEFFFFFFFFFFFFF'), $f64('1')]), $f64('1'));
    returns(
        'min_248',
        () =>
            m.call('min', [$f64('FFEFFFFFFFFFFFFF'), $f64('8010000000000000')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'min_249',
        () => m.call('min', [$f64('FFEFFFFFFFFFFFFF'), $f64('10000000000000')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'min_250',
        () =>
            m.call('min', [$f64('7FEFFFFFFFFFFFFF'), $f64('8010000000000000')]),
        $f64('8010000000000000'));
    returns(
        'min_251',
        () => m.call('min', [$f64('7FEFFFFFFFFFFFFF'), $f64('10000000000000')]),
        $f64('10000000000000'));
    returns(
        'min_252',
        () =>
            m.call('min', [$f64('FFEFFFFFFFFFFFFF'), $f64('BFE0000000000000')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'min_253',
        () =>
            m.call('min', [$f64('FFEFFFFFFFFFFFFF'), $f64('3FE0000000000000')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'min_254',
        () =>
            m.call('min', [$f64('7FEFFFFFFFFFFFFF'), $f64('BFE0000000000000')]),
        $f64('BFE0000000000000'));
    returns(
        'min_255',
        () =>
            m.call('min', [$f64('7FEFFFFFFFFFFFFF'), $f64('3FE0000000000000')]),
        $f64('3FE0000000000000'));
    returns(
        'min_256',
        () =>
            m.call('min', [$f64('FFEFFFFFFFFFFFFF'), $f64('BFF0000000000000')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'min_257',
        () =>
            m.call('min', [$f64('FFEFFFFFFFFFFFFF'), $f64('3FF0000000000000')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'min_258',
        () =>
            m.call('min', [$f64('7FEFFFFFFFFFFFFF'), $f64('BFF0000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'min_259',
        () =>
            m.call('min', [$f64('7FEFFFFFFFFFFFFF'), $f64('3FF0000000000000')]),
        $f64('3FF0000000000000'));
    returns(
        'min_260',
        () =>
            m.call('min', [$f64('FFEFFFFFFFFFFFFF'), $f64('C01921FB54442D18')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'min_261',
        () =>
            m.call('min', [$f64('FFEFFFFFFFFFFFFF'), $f64('401921FB54442D18')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'min_262',
        () =>
            m.call('min', [$f64('7FEFFFFFFFFFFFFF'), $f64('C01921FB54442D18')]),
        $f64('C01921FB54442D18'));
    returns(
        'min_263',
        () =>
            m.call('min', [$f64('7FEFFFFFFFFFFFFF'), $f64('401921FB54442D18')]),
        $f64('401921FB54442D18'));
    returns(
        'min_264',
        () =>
            m.call('min', [$f64('FFEFFFFFFFFFFFFF'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'min_265',
        () =>
            m.call('min', [$f64('FFEFFFFFFFFFFFFF'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'min_266',
        () =>
            m.call('min', [$f64('7FEFFFFFFFFFFFFF'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'min_267',
        () =>
            m.call('min', [$f64('7FEFFFFFFFFFFFFF'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'min_268',
        () =>
            m.call('min', [$f64('FFEFFFFFFFFFFFFF'), $f64('FFF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'min_269',
        () =>
            m.call('min', [$f64('FFEFFFFFFFFFFFFF'), $f64('7FF0000000000000')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'min_270',
        () =>
            m.call('min', [$f64('7FEFFFFFFFFFFFFF'), $f64('FFF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'min_271',
        () =>
            m.call('min', [$f64('7FEFFFFFFFFFFFFF'), $f64('7FF0000000000000')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'min_272',
        () =>
            m.call('min', [$f64('FFEFFFFFFFFFFFFF'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'min_273',
        () =>
            m.call('min', [$f64('FFEFFFFFFFFFFFFF'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'min_274',
        () =>
            m.call('min', [$f64('FFEFFFFFFFFFFFFF'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'min_275',
        () =>
            m.call('min', [$f64('FFEFFFFFFFFFFFFF'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'min_276',
        () =>
            m.call('min', [$f64('7FEFFFFFFFFFFFFF'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'min_277',
        () =>
            m.call('min', [$f64('7FEFFFFFFFFFFFFF'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'min_278',
        () =>
            m.call('min', [$f64('7FEFFFFFFFFFFFFF'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'min_279',
        () =>
            m.call('min', [$f64('7FEFFFFFFFFFFFFF'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'min_280',
        () =>
            m.call('min', [$f64('FFF0000000000000'), $f64('8000000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'min_281',
        () => m.call('min', [$f64('FFF0000000000000'), $f64('0')]),
        $f64('FFF0000000000000'));
    returns(
        'min_282',
        () =>
            m.call('min', [$f64('7FF0000000000000'), $f64('8000000000000000')]),
        $f64('8000000000000000'));
    returns('min_283',
        () => m.call('min', [$f64('7FF0000000000000'), $f64('0')]), $f64('0'));
    returns(
        'min_284',
        () =>
            m.call('min', [$f64('FFF0000000000000'), $f64('8000000000000001')]),
        $f64('FFF0000000000000'));
    returns(
        'min_285',
        () => m.call('min', [$f64('FFF0000000000000'), $f64('1')]),
        $f64('FFF0000000000000'));
    returns(
        'min_286',
        () =>
            m.call('min', [$f64('7FF0000000000000'), $f64('8000000000000001')]),
        $f64('8000000000000001'));
    returns('min_287',
        () => m.call('min', [$f64('7FF0000000000000'), $f64('1')]), $f64('1'));
    returns(
        'min_288',
        () =>
            m.call('min', [$f64('FFF0000000000000'), $f64('8010000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'min_289',
        () => m.call('min', [$f64('FFF0000000000000'), $f64('10000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'min_290',
        () =>
            m.call('min', [$f64('7FF0000000000000'), $f64('8010000000000000')]),
        $f64('8010000000000000'));
    returns(
        'min_291',
        () => m.call('min', [$f64('7FF0000000000000'), $f64('10000000000000')]),
        $f64('10000000000000'));
    returns(
        'min_292',
        () =>
            m.call('min', [$f64('FFF0000000000000'), $f64('BFE0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'min_293',
        () =>
            m.call('min', [$f64('FFF0000000000000'), $f64('3FE0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'min_294',
        () =>
            m.call('min', [$f64('7FF0000000000000'), $f64('BFE0000000000000')]),
        $f64('BFE0000000000000'));
    returns(
        'min_295',
        () =>
            m.call('min', [$f64('7FF0000000000000'), $f64('3FE0000000000000')]),
        $f64('3FE0000000000000'));
    returns(
        'min_296',
        () =>
            m.call('min', [$f64('FFF0000000000000'), $f64('BFF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'min_297',
        () =>
            m.call('min', [$f64('FFF0000000000000'), $f64('3FF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'min_298',
        () =>
            m.call('min', [$f64('7FF0000000000000'), $f64('BFF0000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'min_299',
        () =>
            m.call('min', [$f64('7FF0000000000000'), $f64('3FF0000000000000')]),
        $f64('3FF0000000000000'));
    returns(
        'min_300',
        () =>
            m.call('min', [$f64('FFF0000000000000'), $f64('C01921FB54442D18')]),
        $f64('FFF0000000000000'));
    returns(
        'min_301',
        () =>
            m.call('min', [$f64('FFF0000000000000'), $f64('401921FB54442D18')]),
        $f64('FFF0000000000000'));
    returns(
        'min_302',
        () =>
            m.call('min', [$f64('7FF0000000000000'), $f64('C01921FB54442D18')]),
        $f64('C01921FB54442D18'));
    returns(
        'min_303',
        () =>
            m.call('min', [$f64('7FF0000000000000'), $f64('401921FB54442D18')]),
        $f64('401921FB54442D18'));
    returns(
        'min_304',
        () =>
            m.call('min', [$f64('FFF0000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('FFF0000000000000'));
    returns(
        'min_305',
        () =>
            m.call('min', [$f64('FFF0000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('FFF0000000000000'));
    returns(
        'min_306',
        () =>
            m.call('min', [$f64('7FF0000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'min_307',
        () =>
            m.call('min', [$f64('7FF0000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'min_308',
        () =>
            m.call('min', [$f64('FFF0000000000000'), $f64('FFF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'min_309',
        () =>
            m.call('min', [$f64('FFF0000000000000'), $f64('7FF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'min_310',
        () =>
            m.call('min', [$f64('7FF0000000000000'), $f64('FFF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'min_311',
        () =>
            m.call('min', [$f64('7FF0000000000000'), $f64('7FF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'min_312',
        () =>
            m.call('min', [$f64('FFF0000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'min_313',
        () =>
            m.call('min', [$f64('FFF0000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'min_314',
        () =>
            m.call('min', [$f64('FFF0000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'min_315',
        () =>
            m.call('min', [$f64('FFF0000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'min_316',
        () =>
            m.call('min', [$f64('7FF0000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'min_317',
        () =>
            m.call('min', [$f64('7FF0000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'min_318',
        () =>
            m.call('min', [$f64('7FF0000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'min_319',
        () =>
            m.call('min', [$f64('7FF0000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'min_320',
        () =>
            m.call('min', [$f64('FFF8000000000000'), $f64('8000000000000000')]),
        double.nan);
    returns(
        'min_321',
        () =>
            m.call('min', [$f64('FFF4000000000000'), $f64('8000000000000000')]),
        double.nan);
    returns('min_322',
        () => m.call('min', [$f64('FFF8000000000000'), $f64('0')]), double.nan);
    returns('min_323',
        () => m.call('min', [$f64('FFF4000000000000'), $f64('0')]), double.nan);
    returns(
        'min_324',
        () =>
            m.call('min', [$f64('7FF8000000000000'), $f64('8000000000000000')]),
        double.nan);
    returns(
        'min_325',
        () =>
            m.call('min', [$f64('7FF4000000000000'), $f64('8000000000000000')]),
        double.nan);
    returns('min_326',
        () => m.call('min', [$f64('7FF8000000000000'), $f64('0')]), double.nan);
    returns('min_327',
        () => m.call('min', [$f64('7FF4000000000000'), $f64('0')]), double.nan);
    returns(
        'min_328',
        () =>
            m.call('min', [$f64('FFF8000000000000'), $f64('8000000000000001')]),
        double.nan);
    returns(
        'min_329',
        () =>
            m.call('min', [$f64('FFF4000000000000'), $f64('8000000000000001')]),
        double.nan);
    returns('min_330',
        () => m.call('min', [$f64('FFF8000000000000'), $f64('1')]), double.nan);
    returns('min_331',
        () => m.call('min', [$f64('FFF4000000000000'), $f64('1')]), double.nan);
    returns(
        'min_332',
        () =>
            m.call('min', [$f64('7FF8000000000000'), $f64('8000000000000001')]),
        double.nan);
    returns(
        'min_333',
        () =>
            m.call('min', [$f64('7FF4000000000000'), $f64('8000000000000001')]),
        double.nan);
    returns('min_334',
        () => m.call('min', [$f64('7FF8000000000000'), $f64('1')]), double.nan);
    returns('min_335',
        () => m.call('min', [$f64('7FF4000000000000'), $f64('1')]), double.nan);
    returns(
        'min_336',
        () =>
            m.call('min', [$f64('FFF8000000000000'), $f64('8010000000000000')]),
        double.nan);
    returns(
        'min_337',
        () =>
            m.call('min', [$f64('FFF4000000000000'), $f64('8010000000000000')]),
        double.nan);
    returns(
        'min_338',
        () => m.call('min', [$f64('FFF8000000000000'), $f64('10000000000000')]),
        double.nan);
    returns(
        'min_339',
        () => m.call('min', [$f64('FFF4000000000000'), $f64('10000000000000')]),
        double.nan);
    returns(
        'min_340',
        () =>
            m.call('min', [$f64('7FF8000000000000'), $f64('8010000000000000')]),
        double.nan);
    returns(
        'min_341',
        () =>
            m.call('min', [$f64('7FF4000000000000'), $f64('8010000000000000')]),
        double.nan);
    returns(
        'min_342',
        () => m.call('min', [$f64('7FF8000000000000'), $f64('10000000000000')]),
        double.nan);
    returns(
        'min_343',
        () => m.call('min', [$f64('7FF4000000000000'), $f64('10000000000000')]),
        double.nan);
    returns(
        'min_344',
        () =>
            m.call('min', [$f64('FFF8000000000000'), $f64('BFE0000000000000')]),
        double.nan);
    returns(
        'min_345',
        () =>
            m.call('min', [$f64('FFF4000000000000'), $f64('BFE0000000000000')]),
        double.nan);
    returns(
        'min_346',
        () =>
            m.call('min', [$f64('FFF8000000000000'), $f64('3FE0000000000000')]),
        double.nan);
    returns(
        'min_347',
        () =>
            m.call('min', [$f64('FFF4000000000000'), $f64('3FE0000000000000')]),
        double.nan);
    returns(
        'min_348',
        () =>
            m.call('min', [$f64('7FF8000000000000'), $f64('BFE0000000000000')]),
        double.nan);
    returns(
        'min_349',
        () =>
            m.call('min', [$f64('7FF4000000000000'), $f64('BFE0000000000000')]),
        double.nan);
    returns(
        'min_350',
        () =>
            m.call('min', [$f64('7FF8000000000000'), $f64('3FE0000000000000')]),
        double.nan);
    returns(
        'min_351',
        () =>
            m.call('min', [$f64('7FF4000000000000'), $f64('3FE0000000000000')]),
        double.nan);
    returns(
        'min_352',
        () =>
            m.call('min', [$f64('FFF8000000000000'), $f64('BFF0000000000000')]),
        double.nan);
    returns(
        'min_353',
        () =>
            m.call('min', [$f64('FFF4000000000000'), $f64('BFF0000000000000')]),
        double.nan);
    returns(
        'min_354',
        () =>
            m.call('min', [$f64('FFF8000000000000'), $f64('3FF0000000000000')]),
        double.nan);
    returns(
        'min_355',
        () =>
            m.call('min', [$f64('FFF4000000000000'), $f64('3FF0000000000000')]),
        double.nan);
    returns(
        'min_356',
        () =>
            m.call('min', [$f64('7FF8000000000000'), $f64('BFF0000000000000')]),
        double.nan);
    returns(
        'min_357',
        () =>
            m.call('min', [$f64('7FF4000000000000'), $f64('BFF0000000000000')]),
        double.nan);
    returns(
        'min_358',
        () =>
            m.call('min', [$f64('7FF8000000000000'), $f64('3FF0000000000000')]),
        double.nan);
    returns(
        'min_359',
        () =>
            m.call('min', [$f64('7FF4000000000000'), $f64('3FF0000000000000')]),
        double.nan);
    returns(
        'min_360',
        () =>
            m.call('min', [$f64('FFF8000000000000'), $f64('C01921FB54442D18')]),
        double.nan);
    returns(
        'min_361',
        () =>
            m.call('min', [$f64('FFF4000000000000'), $f64('C01921FB54442D18')]),
        double.nan);
    returns(
        'min_362',
        () =>
            m.call('min', [$f64('FFF8000000000000'), $f64('401921FB54442D18')]),
        double.nan);
    returns(
        'min_363',
        () =>
            m.call('min', [$f64('FFF4000000000000'), $f64('401921FB54442D18')]),
        double.nan);
    returns(
        'min_364',
        () =>
            m.call('min', [$f64('7FF8000000000000'), $f64('C01921FB54442D18')]),
        double.nan);
    returns(
        'min_365',
        () =>
            m.call('min', [$f64('7FF4000000000000'), $f64('C01921FB54442D18')]),
        double.nan);
    returns(
        'min_366',
        () =>
            m.call('min', [$f64('7FF8000000000000'), $f64('401921FB54442D18')]),
        double.nan);
    returns(
        'min_367',
        () =>
            m.call('min', [$f64('7FF4000000000000'), $f64('401921FB54442D18')]),
        double.nan);
    returns(
        'min_368',
        () =>
            m.call('min', [$f64('FFF8000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        double.nan);
    returns(
        'min_369',
        () =>
            m.call('min', [$f64('FFF4000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        double.nan);
    returns(
        'min_370',
        () =>
            m.call('min', [$f64('FFF8000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        double.nan);
    returns(
        'min_371',
        () =>
            m.call('min', [$f64('FFF4000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        double.nan);
    returns(
        'min_372',
        () =>
            m.call('min', [$f64('7FF8000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        double.nan);
    returns(
        'min_373',
        () =>
            m.call('min', [$f64('7FF4000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        double.nan);
    returns(
        'min_374',
        () =>
            m.call('min', [$f64('7FF8000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        double.nan);
    returns(
        'min_375',
        () =>
            m.call('min', [$f64('7FF4000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        double.nan);
    returns(
        'min_376',
        () =>
            m.call('min', [$f64('FFF8000000000000'), $f64('FFF0000000000000')]),
        double.nan);
    returns(
        'min_377',
        () =>
            m.call('min', [$f64('FFF4000000000000'), $f64('FFF0000000000000')]),
        double.nan);
    returns(
        'min_378',
        () =>
            m.call('min', [$f64('FFF8000000000000'), $f64('7FF0000000000000')]),
        double.nan);
    returns(
        'min_379',
        () =>
            m.call('min', [$f64('FFF4000000000000'), $f64('7FF0000000000000')]),
        double.nan);
    returns(
        'min_380',
        () =>
            m.call('min', [$f64('7FF8000000000000'), $f64('FFF0000000000000')]),
        double.nan);
    returns(
        'min_381',
        () =>
            m.call('min', [$f64('7FF4000000000000'), $f64('FFF0000000000000')]),
        double.nan);
    returns(
        'min_382',
        () =>
            m.call('min', [$f64('7FF8000000000000'), $f64('7FF0000000000000')]),
        double.nan);
    returns(
        'min_383',
        () =>
            m.call('min', [$f64('7FF4000000000000'), $f64('7FF0000000000000')]),
        double.nan);
    returns(
        'min_384',
        () =>
            m.call('min', [$f64('FFF8000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'min_385',
        () =>
            m.call('min', [$f64('FFF4000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'min_386',
        () =>
            m.call('min', [$f64('FFF8000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'min_387',
        () =>
            m.call('min', [$f64('FFF4000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'min_388',
        () =>
            m.call('min', [$f64('FFF8000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'min_389',
        () =>
            m.call('min', [$f64('FFF4000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'min_390',
        () =>
            m.call('min', [$f64('FFF8000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'min_391',
        () =>
            m.call('min', [$f64('FFF4000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'min_392',
        () =>
            m.call('min', [$f64('7FF8000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'min_393',
        () =>
            m.call('min', [$f64('7FF4000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'min_394',
        () =>
            m.call('min', [$f64('7FF8000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'min_395',
        () =>
            m.call('min', [$f64('7FF4000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'min_396',
        () =>
            m.call('min', [$f64('7FF8000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'min_397',
        () =>
            m.call('min', [$f64('7FF4000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'min_398',
        () =>
            m.call('min', [$f64('7FF8000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'min_399',
        () =>
            m.call('min', [$f64('7FF4000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'max_0',
        () =>
            m.call('max', [$f64('8000000000000000'), $f64('8000000000000000')]),
        $f64('8000000000000000'));
    returns('max_1', () => m.call('max', [$f64('8000000000000000'), $f64('0')]),
        $f64('0'));
    returns('max_2', () => m.call('max', [$f64('0'), $f64('8000000000000000')]),
        $f64('0'));
    returns('max_3', () => m.call('max', [$f64('0'), $f64('0')]), $f64('0'));
    returns(
        'max_4',
        () =>
            m.call('max', [$f64('8000000000000000'), $f64('8000000000000001')]),
        $f64('8000000000000000'));
    returns('max_5', () => m.call('max', [$f64('8000000000000000'), $f64('1')]),
        $f64('1'));
    returns('max_6', () => m.call('max', [$f64('0'), $f64('8000000000000001')]),
        $f64('0'));
    returns('max_7', () => m.call('max', [$f64('0'), $f64('1')]), $f64('1'));
    returns(
        'max_8',
        () =>
            m.call('max', [$f64('8000000000000000'), $f64('8010000000000000')]),
        $f64('8000000000000000'));
    returns(
        'max_9',
        () => m.call('max', [$f64('8000000000000000'), $f64('10000000000000')]),
        $f64('10000000000000'));
    returns('max_10',
        () => m.call('max', [$f64('0'), $f64('8010000000000000')]), $f64('0'));
    returns('max_11', () => m.call('max', [$f64('0'), $f64('10000000000000')]),
        $f64('10000000000000'));
    returns(
        'max_12',
        () =>
            m.call('max', [$f64('8000000000000000'), $f64('BFE0000000000000')]),
        $f64('8000000000000000'));
    returns(
        'max_13',
        () =>
            m.call('max', [$f64('8000000000000000'), $f64('3FE0000000000000')]),
        $f64('3FE0000000000000'));
    returns('max_14',
        () => m.call('max', [$f64('0'), $f64('BFE0000000000000')]), $f64('0'));
    returns(
        'max_15',
        () => m.call('max', [$f64('0'), $f64('3FE0000000000000')]),
        $f64('3FE0000000000000'));
    returns(
        'max_16',
        () =>
            m.call('max', [$f64('8000000000000000'), $f64('BFF0000000000000')]),
        $f64('8000000000000000'));
    returns(
        'max_17',
        () =>
            m.call('max', [$f64('8000000000000000'), $f64('3FF0000000000000')]),
        $f64('3FF0000000000000'));
    returns('max_18',
        () => m.call('max', [$f64('0'), $f64('BFF0000000000000')]), $f64('0'));
    returns(
        'max_19',
        () => m.call('max', [$f64('0'), $f64('3FF0000000000000')]),
        $f64('3FF0000000000000'));
    returns(
        'max_20',
        () =>
            m.call('max', [$f64('8000000000000000'), $f64('C01921FB54442D18')]),
        $f64('8000000000000000'));
    returns(
        'max_21',
        () =>
            m.call('max', [$f64('8000000000000000'), $f64('401921FB54442D18')]),
        $f64('401921FB54442D18'));
    returns('max_22',
        () => m.call('max', [$f64('0'), $f64('C01921FB54442D18')]), $f64('0'));
    returns(
        'max_23',
        () => m.call('max', [$f64('0'), $f64('401921FB54442D18')]),
        $f64('401921FB54442D18'));
    returns(
        'max_24',
        () =>
            m.call('max', [$f64('8000000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('8000000000000000'));
    returns(
        'max_25',
        () =>
            m.call('max', [$f64('8000000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns('max_26',
        () => m.call('max', [$f64('0'), $f64('FFEFFFFFFFFFFFFF')]), $f64('0'));
    returns(
        'max_27',
        () => m.call('max', [$f64('0'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'max_28',
        () =>
            m.call('max', [$f64('8000000000000000'), $f64('FFF0000000000000')]),
        $f64('8000000000000000'));
    returns(
        'max_29',
        () =>
            m.call('max', [$f64('8000000000000000'), $f64('7FF0000000000000')]),
        $f64('7FF0000000000000'));
    returns('max_30',
        () => m.call('max', [$f64('0'), $f64('FFF0000000000000')]), $f64('0'));
    returns(
        'max_31',
        () => m.call('max', [$f64('0'), $f64('7FF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'max_32',
        () =>
            m.call('max', [$f64('8000000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'max_33',
        () =>
            m.call('max', [$f64('8000000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'max_34',
        () =>
            m.call('max', [$f64('8000000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'max_35',
        () =>
            m.call('max', [$f64('8000000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns('max_36',
        () => m.call('max', [$f64('0'), $f64('FFF8000000000000')]), double.nan);
    returns('max_37',
        () => m.call('max', [$f64('0'), $f64('FFF4000000000000')]), double.nan);
    returns('max_38',
        () => m.call('max', [$f64('0'), $f64('7FF8000000000000')]), double.nan);
    returns('max_39',
        () => m.call('max', [$f64('0'), $f64('7FF4000000000000')]), double.nan);
    returns(
        'max_40',
        () =>
            m.call('max', [$f64('8000000000000001'), $f64('8000000000000000')]),
        $f64('8000000000000000'));
    returns('max_41',
        () => m.call('max', [$f64('8000000000000001'), $f64('0')]), $f64('0'));
    returns('max_42',
        () => m.call('max', [$f64('1'), $f64('8000000000000000')]), $f64('1'));
    returns('max_43', () => m.call('max', [$f64('1'), $f64('0')]), $f64('1'));
    returns(
        'max_44',
        () =>
            m.call('max', [$f64('8000000000000001'), $f64('8000000000000001')]),
        $f64('8000000000000001'));
    returns('max_45',
        () => m.call('max', [$f64('8000000000000001'), $f64('1')]), $f64('1'));
    returns('max_46',
        () => m.call('max', [$f64('1'), $f64('8000000000000001')]), $f64('1'));
    returns('max_47', () => m.call('max', [$f64('1'), $f64('1')]), $f64('1'));
    returns(
        'max_48',
        () =>
            m.call('max', [$f64('8000000000000001'), $f64('8010000000000000')]),
        $f64('8000000000000001'));
    returns(
        'max_49',
        () => m.call('max', [$f64('8000000000000001'), $f64('10000000000000')]),
        $f64('10000000000000'));
    returns('max_50',
        () => m.call('max', [$f64('1'), $f64('8010000000000000')]), $f64('1'));
    returns('max_51', () => m.call('max', [$f64('1'), $f64('10000000000000')]),
        $f64('10000000000000'));
    returns(
        'max_52',
        () =>
            m.call('max', [$f64('8000000000000001'), $f64('BFE0000000000000')]),
        $f64('8000000000000001'));
    returns(
        'max_53',
        () =>
            m.call('max', [$f64('8000000000000001'), $f64('3FE0000000000000')]),
        $f64('3FE0000000000000'));
    returns('max_54',
        () => m.call('max', [$f64('1'), $f64('BFE0000000000000')]), $f64('1'));
    returns(
        'max_55',
        () => m.call('max', [$f64('1'), $f64('3FE0000000000000')]),
        $f64('3FE0000000000000'));
    returns(
        'max_56',
        () =>
            m.call('max', [$f64('8000000000000001'), $f64('BFF0000000000000')]),
        $f64('8000000000000001'));
    returns(
        'max_57',
        () =>
            m.call('max', [$f64('8000000000000001'), $f64('3FF0000000000000')]),
        $f64('3FF0000000000000'));
    returns('max_58',
        () => m.call('max', [$f64('1'), $f64('BFF0000000000000')]), $f64('1'));
    returns(
        'max_59',
        () => m.call('max', [$f64('1'), $f64('3FF0000000000000')]),
        $f64('3FF0000000000000'));
    returns(
        'max_60',
        () =>
            m.call('max', [$f64('8000000000000001'), $f64('C01921FB54442D18')]),
        $f64('8000000000000001'));
    returns(
        'max_61',
        () =>
            m.call('max', [$f64('8000000000000001'), $f64('401921FB54442D18')]),
        $f64('401921FB54442D18'));
    returns('max_62',
        () => m.call('max', [$f64('1'), $f64('C01921FB54442D18')]), $f64('1'));
    returns(
        'max_63',
        () => m.call('max', [$f64('1'), $f64('401921FB54442D18')]),
        $f64('401921FB54442D18'));
    returns(
        'max_64',
        () =>
            m.call('max', [$f64('8000000000000001'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('8000000000000001'));
    returns(
        'max_65',
        () =>
            m.call('max', [$f64('8000000000000001'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns('max_66',
        () => m.call('max', [$f64('1'), $f64('FFEFFFFFFFFFFFFF')]), $f64('1'));
    returns(
        'max_67',
        () => m.call('max', [$f64('1'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'max_68',
        () =>
            m.call('max', [$f64('8000000000000001'), $f64('FFF0000000000000')]),
        $f64('8000000000000001'));
    returns(
        'max_69',
        () =>
            m.call('max', [$f64('8000000000000001'), $f64('7FF0000000000000')]),
        $f64('7FF0000000000000'));
    returns('max_70',
        () => m.call('max', [$f64('1'), $f64('FFF0000000000000')]), $f64('1'));
    returns(
        'max_71',
        () => m.call('max', [$f64('1'), $f64('7FF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'max_72',
        () =>
            m.call('max', [$f64('8000000000000001'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'max_73',
        () =>
            m.call('max', [$f64('8000000000000001'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'max_74',
        () =>
            m.call('max', [$f64('8000000000000001'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'max_75',
        () =>
            m.call('max', [$f64('8000000000000001'), $f64('7FF4000000000000')]),
        double.nan);
    returns('max_76',
        () => m.call('max', [$f64('1'), $f64('FFF8000000000000')]), double.nan);
    returns('max_77',
        () => m.call('max', [$f64('1'), $f64('FFF4000000000000')]), double.nan);
    returns('max_78',
        () => m.call('max', [$f64('1'), $f64('7FF8000000000000')]), double.nan);
    returns('max_79',
        () => m.call('max', [$f64('1'), $f64('7FF4000000000000')]), double.nan);
    returns(
        'max_80',
        () =>
            m.call('max', [$f64('8010000000000000'), $f64('8000000000000000')]),
        $f64('8000000000000000'));
    returns('max_81',
        () => m.call('max', [$f64('8010000000000000'), $f64('0')]), $f64('0'));
    returns(
        'max_82',
        () => m.call('max', [$f64('10000000000000'), $f64('8000000000000000')]),
        $f64('10000000000000'));
    returns('max_83', () => m.call('max', [$f64('10000000000000'), $f64('0')]),
        $f64('10000000000000'));
    returns(
        'max_84',
        () =>
            m.call('max', [$f64('8010000000000000'), $f64('8000000000000001')]),
        $f64('8000000000000001'));
    returns('max_85',
        () => m.call('max', [$f64('8010000000000000'), $f64('1')]), $f64('1'));
    returns(
        'max_86',
        () => m.call('max', [$f64('10000000000000'), $f64('8000000000000001')]),
        $f64('10000000000000'));
    returns('max_87', () => m.call('max', [$f64('10000000000000'), $f64('1')]),
        $f64('10000000000000'));
    returns(
        'max_88',
        () =>
            m.call('max', [$f64('8010000000000000'), $f64('8010000000000000')]),
        $f64('8010000000000000'));
    returns(
        'max_89',
        () => m.call('max', [$f64('8010000000000000'), $f64('10000000000000')]),
        $f64('10000000000000'));
    returns(
        'max_90',
        () => m.call('max', [$f64('10000000000000'), $f64('8010000000000000')]),
        $f64('10000000000000'));
    returns(
        'max_91',
        () => m.call('max', [$f64('10000000000000'), $f64('10000000000000')]),
        $f64('10000000000000'));
    returns(
        'max_92',
        () =>
            m.call('max', [$f64('8010000000000000'), $f64('BFE0000000000000')]),
        $f64('8010000000000000'));
    returns(
        'max_93',
        () =>
            m.call('max', [$f64('8010000000000000'), $f64('3FE0000000000000')]),
        $f64('3FE0000000000000'));
    returns(
        'max_94',
        () => m.call('max', [$f64('10000000000000'), $f64('BFE0000000000000')]),
        $f64('10000000000000'));
    returns(
        'max_95',
        () => m.call('max', [$f64('10000000000000'), $f64('3FE0000000000000')]),
        $f64('3FE0000000000000'));
    returns(
        'max_96',
        () =>
            m.call('max', [$f64('8010000000000000'), $f64('BFF0000000000000')]),
        $f64('8010000000000000'));
    returns(
        'max_97',
        () =>
            m.call('max', [$f64('8010000000000000'), $f64('3FF0000000000000')]),
        $f64('3FF0000000000000'));
    returns(
        'max_98',
        () => m.call('max', [$f64('10000000000000'), $f64('BFF0000000000000')]),
        $f64('10000000000000'));
    returns(
        'max_99',
        () => m.call('max', [$f64('10000000000000'), $f64('3FF0000000000000')]),
        $f64('3FF0000000000000'));
    returns(
        'max_100',
        () =>
            m.call('max', [$f64('8010000000000000'), $f64('C01921FB54442D18')]),
        $f64('8010000000000000'));
    returns(
        'max_101',
        () =>
            m.call('max', [$f64('8010000000000000'), $f64('401921FB54442D18')]),
        $f64('401921FB54442D18'));
    returns(
        'max_102',
        () => m.call('max', [$f64('10000000000000'), $f64('C01921FB54442D18')]),
        $f64('10000000000000'));
    returns(
        'max_103',
        () => m.call('max', [$f64('10000000000000'), $f64('401921FB54442D18')]),
        $f64('401921FB54442D18'));
    returns(
        'max_104',
        () =>
            m.call('max', [$f64('8010000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('8010000000000000'));
    returns(
        'max_105',
        () =>
            m.call('max', [$f64('8010000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'max_106',
        () => m.call('max', [$f64('10000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('10000000000000'));
    returns(
        'max_107',
        () => m.call('max', [$f64('10000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'max_108',
        () =>
            m.call('max', [$f64('8010000000000000'), $f64('FFF0000000000000')]),
        $f64('8010000000000000'));
    returns(
        'max_109',
        () =>
            m.call('max', [$f64('8010000000000000'), $f64('7FF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'max_110',
        () => m.call('max', [$f64('10000000000000'), $f64('FFF0000000000000')]),
        $f64('10000000000000'));
    returns(
        'max_111',
        () => m.call('max', [$f64('10000000000000'), $f64('7FF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'max_112',
        () =>
            m.call('max', [$f64('8010000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'max_113',
        () =>
            m.call('max', [$f64('8010000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'max_114',
        () =>
            m.call('max', [$f64('8010000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'max_115',
        () =>
            m.call('max', [$f64('8010000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'max_116',
        () => m.call('max', [$f64('10000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'max_117',
        () => m.call('max', [$f64('10000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'max_118',
        () => m.call('max', [$f64('10000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'max_119',
        () => m.call('max', [$f64('10000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'max_120',
        () =>
            m.call('max', [$f64('BFE0000000000000'), $f64('8000000000000000')]),
        $f64('8000000000000000'));
    returns('max_121',
        () => m.call('max', [$f64('BFE0000000000000'), $f64('0')]), $f64('0'));
    returns(
        'max_122',
        () =>
            m.call('max', [$f64('3FE0000000000000'), $f64('8000000000000000')]),
        $f64('3FE0000000000000'));
    returns(
        'max_123',
        () => m.call('max', [$f64('3FE0000000000000'), $f64('0')]),
        $f64('3FE0000000000000'));
    returns(
        'max_124',
        () =>
            m.call('max', [$f64('BFE0000000000000'), $f64('8000000000000001')]),
        $f64('8000000000000001'));
    returns('max_125',
        () => m.call('max', [$f64('BFE0000000000000'), $f64('1')]), $f64('1'));
    returns(
        'max_126',
        () =>
            m.call('max', [$f64('3FE0000000000000'), $f64('8000000000000001')]),
        $f64('3FE0000000000000'));
    returns(
        'max_127',
        () => m.call('max', [$f64('3FE0000000000000'), $f64('1')]),
        $f64('3FE0000000000000'));
    returns(
        'max_128',
        () =>
            m.call('max', [$f64('BFE0000000000000'), $f64('8010000000000000')]),
        $f64('8010000000000000'));
    returns(
        'max_129',
        () => m.call('max', [$f64('BFE0000000000000'), $f64('10000000000000')]),
        $f64('10000000000000'));
    returns(
        'max_130',
        () =>
            m.call('max', [$f64('3FE0000000000000'), $f64('8010000000000000')]),
        $f64('3FE0000000000000'));
    returns(
        'max_131',
        () => m.call('max', [$f64('3FE0000000000000'), $f64('10000000000000')]),
        $f64('3FE0000000000000'));
    returns(
        'max_132',
        () =>
            m.call('max', [$f64('BFE0000000000000'), $f64('BFE0000000000000')]),
        $f64('BFE0000000000000'));
    returns(
        'max_133',
        () =>
            m.call('max', [$f64('BFE0000000000000'), $f64('3FE0000000000000')]),
        $f64('3FE0000000000000'));
    returns(
        'max_134',
        () =>
            m.call('max', [$f64('3FE0000000000000'), $f64('BFE0000000000000')]),
        $f64('3FE0000000000000'));
    returns(
        'max_135',
        () =>
            m.call('max', [$f64('3FE0000000000000'), $f64('3FE0000000000000')]),
        $f64('3FE0000000000000'));
    returns(
        'max_136',
        () =>
            m.call('max', [$f64('BFE0000000000000'), $f64('BFF0000000000000')]),
        $f64('BFE0000000000000'));
    returns(
        'max_137',
        () =>
            m.call('max', [$f64('BFE0000000000000'), $f64('3FF0000000000000')]),
        $f64('3FF0000000000000'));
    returns(
        'max_138',
        () =>
            m.call('max', [$f64('3FE0000000000000'), $f64('BFF0000000000000')]),
        $f64('3FE0000000000000'));
    returns(
        'max_139',
        () =>
            m.call('max', [$f64('3FE0000000000000'), $f64('3FF0000000000000')]),
        $f64('3FF0000000000000'));
    returns(
        'max_140',
        () =>
            m.call('max', [$f64('BFE0000000000000'), $f64('C01921FB54442D18')]),
        $f64('BFE0000000000000'));
    returns(
        'max_141',
        () =>
            m.call('max', [$f64('BFE0000000000000'), $f64('401921FB54442D18')]),
        $f64('401921FB54442D18'));
    returns(
        'max_142',
        () =>
            m.call('max', [$f64('3FE0000000000000'), $f64('C01921FB54442D18')]),
        $f64('3FE0000000000000'));
    returns(
        'max_143',
        () =>
            m.call('max', [$f64('3FE0000000000000'), $f64('401921FB54442D18')]),
        $f64('401921FB54442D18'));
    returns(
        'max_144',
        () =>
            m.call('max', [$f64('BFE0000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('BFE0000000000000'));
    returns(
        'max_145',
        () =>
            m.call('max', [$f64('BFE0000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'max_146',
        () =>
            m.call('max', [$f64('3FE0000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('3FE0000000000000'));
    returns(
        'max_147',
        () =>
            m.call('max', [$f64('3FE0000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'max_148',
        () =>
            m.call('max', [$f64('BFE0000000000000'), $f64('FFF0000000000000')]),
        $f64('BFE0000000000000'));
    returns(
        'max_149',
        () =>
            m.call('max', [$f64('BFE0000000000000'), $f64('7FF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'max_150',
        () =>
            m.call('max', [$f64('3FE0000000000000'), $f64('FFF0000000000000')]),
        $f64('3FE0000000000000'));
    returns(
        'max_151',
        () =>
            m.call('max', [$f64('3FE0000000000000'), $f64('7FF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'max_152',
        () =>
            m.call('max', [$f64('BFE0000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'max_153',
        () =>
            m.call('max', [$f64('BFE0000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'max_154',
        () =>
            m.call('max', [$f64('BFE0000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'max_155',
        () =>
            m.call('max', [$f64('BFE0000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'max_156',
        () =>
            m.call('max', [$f64('3FE0000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'max_157',
        () =>
            m.call('max', [$f64('3FE0000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'max_158',
        () =>
            m.call('max', [$f64('3FE0000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'max_159',
        () =>
            m.call('max', [$f64('3FE0000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'max_160',
        () =>
            m.call('max', [$f64('BFF0000000000000'), $f64('8000000000000000')]),
        $f64('8000000000000000'));
    returns('max_161',
        () => m.call('max', [$f64('BFF0000000000000'), $f64('0')]), $f64('0'));
    returns(
        'max_162',
        () =>
            m.call('max', [$f64('3FF0000000000000'), $f64('8000000000000000')]),
        $f64('3FF0000000000000'));
    returns(
        'max_163',
        () => m.call('max', [$f64('3FF0000000000000'), $f64('0')]),
        $f64('3FF0000000000000'));
    returns(
        'max_164',
        () =>
            m.call('max', [$f64('BFF0000000000000'), $f64('8000000000000001')]),
        $f64('8000000000000001'));
    returns('max_165',
        () => m.call('max', [$f64('BFF0000000000000'), $f64('1')]), $f64('1'));
    returns(
        'max_166',
        () =>
            m.call('max', [$f64('3FF0000000000000'), $f64('8000000000000001')]),
        $f64('3FF0000000000000'));
    returns(
        'max_167',
        () => m.call('max', [$f64('3FF0000000000000'), $f64('1')]),
        $f64('3FF0000000000000'));
    returns(
        'max_168',
        () =>
            m.call('max', [$f64('BFF0000000000000'), $f64('8010000000000000')]),
        $f64('8010000000000000'));
    returns(
        'max_169',
        () => m.call('max', [$f64('BFF0000000000000'), $f64('10000000000000')]),
        $f64('10000000000000'));
    returns(
        'max_170',
        () =>
            m.call('max', [$f64('3FF0000000000000'), $f64('8010000000000000')]),
        $f64('3FF0000000000000'));
    returns(
        'max_171',
        () => m.call('max', [$f64('3FF0000000000000'), $f64('10000000000000')]),
        $f64('3FF0000000000000'));
    returns(
        'max_172',
        () =>
            m.call('max', [$f64('BFF0000000000000'), $f64('BFE0000000000000')]),
        $f64('BFE0000000000000'));
    returns(
        'max_173',
        () =>
            m.call('max', [$f64('BFF0000000000000'), $f64('3FE0000000000000')]),
        $f64('3FE0000000000000'));
    returns(
        'max_174',
        () =>
            m.call('max', [$f64('3FF0000000000000'), $f64('BFE0000000000000')]),
        $f64('3FF0000000000000'));
    returns(
        'max_175',
        () =>
            m.call('max', [$f64('3FF0000000000000'), $f64('3FE0000000000000')]),
        $f64('3FF0000000000000'));
    returns(
        'max_176',
        () =>
            m.call('max', [$f64('BFF0000000000000'), $f64('BFF0000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'max_177',
        () =>
            m.call('max', [$f64('BFF0000000000000'), $f64('3FF0000000000000')]),
        $f64('3FF0000000000000'));
    returns(
        'max_178',
        () =>
            m.call('max', [$f64('3FF0000000000000'), $f64('BFF0000000000000')]),
        $f64('3FF0000000000000'));
    returns(
        'max_179',
        () =>
            m.call('max', [$f64('3FF0000000000000'), $f64('3FF0000000000000')]),
        $f64('3FF0000000000000'));
    returns(
        'max_180',
        () =>
            m.call('max', [$f64('BFF0000000000000'), $f64('C01921FB54442D18')]),
        $f64('BFF0000000000000'));
    returns(
        'max_181',
        () =>
            m.call('max', [$f64('BFF0000000000000'), $f64('401921FB54442D18')]),
        $f64('401921FB54442D18'));
    returns(
        'max_182',
        () =>
            m.call('max', [$f64('3FF0000000000000'), $f64('C01921FB54442D18')]),
        $f64('3FF0000000000000'));
    returns(
        'max_183',
        () =>
            m.call('max', [$f64('3FF0000000000000'), $f64('401921FB54442D18')]),
        $f64('401921FB54442D18'));
    returns(
        'max_184',
        () =>
            m.call('max', [$f64('BFF0000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('BFF0000000000000'));
    returns(
        'max_185',
        () =>
            m.call('max', [$f64('BFF0000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'max_186',
        () =>
            m.call('max', [$f64('3FF0000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('3FF0000000000000'));
    returns(
        'max_187',
        () =>
            m.call('max', [$f64('3FF0000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'max_188',
        () =>
            m.call('max', [$f64('BFF0000000000000'), $f64('FFF0000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'max_189',
        () =>
            m.call('max', [$f64('BFF0000000000000'), $f64('7FF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'max_190',
        () =>
            m.call('max', [$f64('3FF0000000000000'), $f64('FFF0000000000000')]),
        $f64('3FF0000000000000'));
    returns(
        'max_191',
        () =>
            m.call('max', [$f64('3FF0000000000000'), $f64('7FF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'max_192',
        () =>
            m.call('max', [$f64('BFF0000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'max_193',
        () =>
            m.call('max', [$f64('BFF0000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'max_194',
        () =>
            m.call('max', [$f64('BFF0000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'max_195',
        () =>
            m.call('max', [$f64('BFF0000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'max_196',
        () =>
            m.call('max', [$f64('3FF0000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'max_197',
        () =>
            m.call('max', [$f64('3FF0000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'max_198',
        () =>
            m.call('max', [$f64('3FF0000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'max_199',
        () =>
            m.call('max', [$f64('3FF0000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'max_200',
        () =>
            m.call('max', [$f64('C01921FB54442D18'), $f64('8000000000000000')]),
        $f64('8000000000000000'));
    returns('max_201',
        () => m.call('max', [$f64('C01921FB54442D18'), $f64('0')]), $f64('0'));
    returns(
        'max_202',
        () =>
            m.call('max', [$f64('401921FB54442D18'), $f64('8000000000000000')]),
        $f64('401921FB54442D18'));
    returns(
        'max_203',
        () => m.call('max', [$f64('401921FB54442D18'), $f64('0')]),
        $f64('401921FB54442D18'));
    returns(
        'max_204',
        () =>
            m.call('max', [$f64('C01921FB54442D18'), $f64('8000000000000001')]),
        $f64('8000000000000001'));
    returns('max_205',
        () => m.call('max', [$f64('C01921FB54442D18'), $f64('1')]), $f64('1'));
    returns(
        'max_206',
        () =>
            m.call('max', [$f64('401921FB54442D18'), $f64('8000000000000001')]),
        $f64('401921FB54442D18'));
    returns(
        'max_207',
        () => m.call('max', [$f64('401921FB54442D18'), $f64('1')]),
        $f64('401921FB54442D18'));
    returns(
        'max_208',
        () =>
            m.call('max', [$f64('C01921FB54442D18'), $f64('8010000000000000')]),
        $f64('8010000000000000'));
    returns(
        'max_209',
        () => m.call('max', [$f64('C01921FB54442D18'), $f64('10000000000000')]),
        $f64('10000000000000'));
    returns(
        'max_210',
        () =>
            m.call('max', [$f64('401921FB54442D18'), $f64('8010000000000000')]),
        $f64('401921FB54442D18'));
    returns(
        'max_211',
        () => m.call('max', [$f64('401921FB54442D18'), $f64('10000000000000')]),
        $f64('401921FB54442D18'));
    returns(
        'max_212',
        () =>
            m.call('max', [$f64('C01921FB54442D18'), $f64('BFE0000000000000')]),
        $f64('BFE0000000000000'));
    returns(
        'max_213',
        () =>
            m.call('max', [$f64('C01921FB54442D18'), $f64('3FE0000000000000')]),
        $f64('3FE0000000000000'));
    returns(
        'max_214',
        () =>
            m.call('max', [$f64('401921FB54442D18'), $f64('BFE0000000000000')]),
        $f64('401921FB54442D18'));
    returns(
        'max_215',
        () =>
            m.call('max', [$f64('401921FB54442D18'), $f64('3FE0000000000000')]),
        $f64('401921FB54442D18'));
    returns(
        'max_216',
        () =>
            m.call('max', [$f64('C01921FB54442D18'), $f64('BFF0000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'max_217',
        () =>
            m.call('max', [$f64('C01921FB54442D18'), $f64('3FF0000000000000')]),
        $f64('3FF0000000000000'));
    returns(
        'max_218',
        () =>
            m.call('max', [$f64('401921FB54442D18'), $f64('BFF0000000000000')]),
        $f64('401921FB54442D18'));
    returns(
        'max_219',
        () =>
            m.call('max', [$f64('401921FB54442D18'), $f64('3FF0000000000000')]),
        $f64('401921FB54442D18'));
    returns(
        'max_220',
        () =>
            m.call('max', [$f64('C01921FB54442D18'), $f64('C01921FB54442D18')]),
        $f64('C01921FB54442D18'));
    returns(
        'max_221',
        () =>
            m.call('max', [$f64('C01921FB54442D18'), $f64('401921FB54442D18')]),
        $f64('401921FB54442D18'));
    returns(
        'max_222',
        () =>
            m.call('max', [$f64('401921FB54442D18'), $f64('C01921FB54442D18')]),
        $f64('401921FB54442D18'));
    returns(
        'max_223',
        () =>
            m.call('max', [$f64('401921FB54442D18'), $f64('401921FB54442D18')]),
        $f64('401921FB54442D18'));
    returns(
        'max_224',
        () =>
            m.call('max', [$f64('C01921FB54442D18'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('C01921FB54442D18'));
    returns(
        'max_225',
        () =>
            m.call('max', [$f64('C01921FB54442D18'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'max_226',
        () =>
            m.call('max', [$f64('401921FB54442D18'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('401921FB54442D18'));
    returns(
        'max_227',
        () =>
            m.call('max', [$f64('401921FB54442D18'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'max_228',
        () =>
            m.call('max', [$f64('C01921FB54442D18'), $f64('FFF0000000000000')]),
        $f64('C01921FB54442D18'));
    returns(
        'max_229',
        () =>
            m.call('max', [$f64('C01921FB54442D18'), $f64('7FF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'max_230',
        () =>
            m.call('max', [$f64('401921FB54442D18'), $f64('FFF0000000000000')]),
        $f64('401921FB54442D18'));
    returns(
        'max_231',
        () =>
            m.call('max', [$f64('401921FB54442D18'), $f64('7FF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'max_232',
        () =>
            m.call('max', [$f64('C01921FB54442D18'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'max_233',
        () =>
            m.call('max', [$f64('C01921FB54442D18'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'max_234',
        () =>
            m.call('max', [$f64('C01921FB54442D18'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'max_235',
        () =>
            m.call('max', [$f64('C01921FB54442D18'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'max_236',
        () =>
            m.call('max', [$f64('401921FB54442D18'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'max_237',
        () =>
            m.call('max', [$f64('401921FB54442D18'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'max_238',
        () =>
            m.call('max', [$f64('401921FB54442D18'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'max_239',
        () =>
            m.call('max', [$f64('401921FB54442D18'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'max_240',
        () =>
            m.call('max', [$f64('FFEFFFFFFFFFFFFF'), $f64('8000000000000000')]),
        $f64('8000000000000000'));
    returns('max_241',
        () => m.call('max', [$f64('FFEFFFFFFFFFFFFF'), $f64('0')]), $f64('0'));
    returns(
        'max_242',
        () =>
            m.call('max', [$f64('7FEFFFFFFFFFFFFF'), $f64('8000000000000000')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'max_243',
        () => m.call('max', [$f64('7FEFFFFFFFFFFFFF'), $f64('0')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'max_244',
        () =>
            m.call('max', [$f64('FFEFFFFFFFFFFFFF'), $f64('8000000000000001')]),
        $f64('8000000000000001'));
    returns('max_245',
        () => m.call('max', [$f64('FFEFFFFFFFFFFFFF'), $f64('1')]), $f64('1'));
    returns(
        'max_246',
        () =>
            m.call('max', [$f64('7FEFFFFFFFFFFFFF'), $f64('8000000000000001')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'max_247',
        () => m.call('max', [$f64('7FEFFFFFFFFFFFFF'), $f64('1')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'max_248',
        () =>
            m.call('max', [$f64('FFEFFFFFFFFFFFFF'), $f64('8010000000000000')]),
        $f64('8010000000000000'));
    returns(
        'max_249',
        () => m.call('max', [$f64('FFEFFFFFFFFFFFFF'), $f64('10000000000000')]),
        $f64('10000000000000'));
    returns(
        'max_250',
        () =>
            m.call('max', [$f64('7FEFFFFFFFFFFFFF'), $f64('8010000000000000')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'max_251',
        () => m.call('max', [$f64('7FEFFFFFFFFFFFFF'), $f64('10000000000000')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'max_252',
        () =>
            m.call('max', [$f64('FFEFFFFFFFFFFFFF'), $f64('BFE0000000000000')]),
        $f64('BFE0000000000000'));
    returns(
        'max_253',
        () =>
            m.call('max', [$f64('FFEFFFFFFFFFFFFF'), $f64('3FE0000000000000')]),
        $f64('3FE0000000000000'));
    returns(
        'max_254',
        () =>
            m.call('max', [$f64('7FEFFFFFFFFFFFFF'), $f64('BFE0000000000000')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'max_255',
        () =>
            m.call('max', [$f64('7FEFFFFFFFFFFFFF'), $f64('3FE0000000000000')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'max_256',
        () =>
            m.call('max', [$f64('FFEFFFFFFFFFFFFF'), $f64('BFF0000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'max_257',
        () =>
            m.call('max', [$f64('FFEFFFFFFFFFFFFF'), $f64('3FF0000000000000')]),
        $f64('3FF0000000000000'));
    returns(
        'max_258',
        () =>
            m.call('max', [$f64('7FEFFFFFFFFFFFFF'), $f64('BFF0000000000000')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'max_259',
        () =>
            m.call('max', [$f64('7FEFFFFFFFFFFFFF'), $f64('3FF0000000000000')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'max_260',
        () =>
            m.call('max', [$f64('FFEFFFFFFFFFFFFF'), $f64('C01921FB54442D18')]),
        $f64('C01921FB54442D18'));
    returns(
        'max_261',
        () =>
            m.call('max', [$f64('FFEFFFFFFFFFFFFF'), $f64('401921FB54442D18')]),
        $f64('401921FB54442D18'));
    returns(
        'max_262',
        () =>
            m.call('max', [$f64('7FEFFFFFFFFFFFFF'), $f64('C01921FB54442D18')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'max_263',
        () =>
            m.call('max', [$f64('7FEFFFFFFFFFFFFF'), $f64('401921FB54442D18')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'max_264',
        () =>
            m.call('max', [$f64('FFEFFFFFFFFFFFFF'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'max_265',
        () =>
            m.call('max', [$f64('FFEFFFFFFFFFFFFF'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'max_266',
        () =>
            m.call('max', [$f64('7FEFFFFFFFFFFFFF'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'max_267',
        () =>
            m.call('max', [$f64('7FEFFFFFFFFFFFFF'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'max_268',
        () =>
            m.call('max', [$f64('FFEFFFFFFFFFFFFF'), $f64('FFF0000000000000')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'max_269',
        () =>
            m.call('max', [$f64('FFEFFFFFFFFFFFFF'), $f64('7FF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'max_270',
        () =>
            m.call('max', [$f64('7FEFFFFFFFFFFFFF'), $f64('FFF0000000000000')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'max_271',
        () =>
            m.call('max', [$f64('7FEFFFFFFFFFFFFF'), $f64('7FF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'max_272',
        () =>
            m.call('max', [$f64('FFEFFFFFFFFFFFFF'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'max_273',
        () =>
            m.call('max', [$f64('FFEFFFFFFFFFFFFF'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'max_274',
        () =>
            m.call('max', [$f64('FFEFFFFFFFFFFFFF'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'max_275',
        () =>
            m.call('max', [$f64('FFEFFFFFFFFFFFFF'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'max_276',
        () =>
            m.call('max', [$f64('7FEFFFFFFFFFFFFF'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'max_277',
        () =>
            m.call('max', [$f64('7FEFFFFFFFFFFFFF'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'max_278',
        () =>
            m.call('max', [$f64('7FEFFFFFFFFFFFFF'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'max_279',
        () =>
            m.call('max', [$f64('7FEFFFFFFFFFFFFF'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'max_280',
        () =>
            m.call('max', [$f64('FFF0000000000000'), $f64('8000000000000000')]),
        $f64('8000000000000000'));
    returns('max_281',
        () => m.call('max', [$f64('FFF0000000000000'), $f64('0')]), $f64('0'));
    returns(
        'max_282',
        () =>
            m.call('max', [$f64('7FF0000000000000'), $f64('8000000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'max_283',
        () => m.call('max', [$f64('7FF0000000000000'), $f64('0')]),
        $f64('7FF0000000000000'));
    returns(
        'max_284',
        () =>
            m.call('max', [$f64('FFF0000000000000'), $f64('8000000000000001')]),
        $f64('8000000000000001'));
    returns('max_285',
        () => m.call('max', [$f64('FFF0000000000000'), $f64('1')]), $f64('1'));
    returns(
        'max_286',
        () =>
            m.call('max', [$f64('7FF0000000000000'), $f64('8000000000000001')]),
        $f64('7FF0000000000000'));
    returns(
        'max_287',
        () => m.call('max', [$f64('7FF0000000000000'), $f64('1')]),
        $f64('7FF0000000000000'));
    returns(
        'max_288',
        () =>
            m.call('max', [$f64('FFF0000000000000'), $f64('8010000000000000')]),
        $f64('8010000000000000'));
    returns(
        'max_289',
        () => m.call('max', [$f64('FFF0000000000000'), $f64('10000000000000')]),
        $f64('10000000000000'));
    returns(
        'max_290',
        () =>
            m.call('max', [$f64('7FF0000000000000'), $f64('8010000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'max_291',
        () => m.call('max', [$f64('7FF0000000000000'), $f64('10000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'max_292',
        () =>
            m.call('max', [$f64('FFF0000000000000'), $f64('BFE0000000000000')]),
        $f64('BFE0000000000000'));
    returns(
        'max_293',
        () =>
            m.call('max', [$f64('FFF0000000000000'), $f64('3FE0000000000000')]),
        $f64('3FE0000000000000'));
    returns(
        'max_294',
        () =>
            m.call('max', [$f64('7FF0000000000000'), $f64('BFE0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'max_295',
        () =>
            m.call('max', [$f64('7FF0000000000000'), $f64('3FE0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'max_296',
        () =>
            m.call('max', [$f64('FFF0000000000000'), $f64('BFF0000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'max_297',
        () =>
            m.call('max', [$f64('FFF0000000000000'), $f64('3FF0000000000000')]),
        $f64('3FF0000000000000'));
    returns(
        'max_298',
        () =>
            m.call('max', [$f64('7FF0000000000000'), $f64('BFF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'max_299',
        () =>
            m.call('max', [$f64('7FF0000000000000'), $f64('3FF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'max_300',
        () =>
            m.call('max', [$f64('FFF0000000000000'), $f64('C01921FB54442D18')]),
        $f64('C01921FB54442D18'));
    returns(
        'max_301',
        () =>
            m.call('max', [$f64('FFF0000000000000'), $f64('401921FB54442D18')]),
        $f64('401921FB54442D18'));
    returns(
        'max_302',
        () =>
            m.call('max', [$f64('7FF0000000000000'), $f64('C01921FB54442D18')]),
        $f64('7FF0000000000000'));
    returns(
        'max_303',
        () =>
            m.call('max', [$f64('7FF0000000000000'), $f64('401921FB54442D18')]),
        $f64('7FF0000000000000'));
    returns(
        'max_304',
        () =>
            m.call('max', [$f64('FFF0000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns(
        'max_305',
        () =>
            m.call('max', [$f64('FFF0000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns(
        'max_306',
        () =>
            m.call('max', [$f64('7FF0000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        $f64('7FF0000000000000'));
    returns(
        'max_307',
        () =>
            m.call('max', [$f64('7FF0000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        $f64('7FF0000000000000'));
    returns(
        'max_308',
        () =>
            m.call('max', [$f64('FFF0000000000000'), $f64('FFF0000000000000')]),
        $f64('FFF0000000000000'));
    returns(
        'max_309',
        () =>
            m.call('max', [$f64('FFF0000000000000'), $f64('7FF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'max_310',
        () =>
            m.call('max', [$f64('7FF0000000000000'), $f64('FFF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'max_311',
        () =>
            m.call('max', [$f64('7FF0000000000000'), $f64('7FF0000000000000')]),
        $f64('7FF0000000000000'));
    returns(
        'max_312',
        () =>
            m.call('max', [$f64('FFF0000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'max_313',
        () =>
            m.call('max', [$f64('FFF0000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'max_314',
        () =>
            m.call('max', [$f64('FFF0000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'max_315',
        () =>
            m.call('max', [$f64('FFF0000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'max_316',
        () =>
            m.call('max', [$f64('7FF0000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'max_317',
        () =>
            m.call('max', [$f64('7FF0000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'max_318',
        () =>
            m.call('max', [$f64('7FF0000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'max_319',
        () =>
            m.call('max', [$f64('7FF0000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'max_320',
        () =>
            m.call('max', [$f64('FFF8000000000000'), $f64('8000000000000000')]),
        double.nan);
    returns(
        'max_321',
        () =>
            m.call('max', [$f64('FFF4000000000000'), $f64('8000000000000000')]),
        double.nan);
    returns('max_322',
        () => m.call('max', [$f64('FFF8000000000000'), $f64('0')]), double.nan);
    returns('max_323',
        () => m.call('max', [$f64('FFF4000000000000'), $f64('0')]), double.nan);
    returns(
        'max_324',
        () =>
            m.call('max', [$f64('7FF8000000000000'), $f64('8000000000000000')]),
        double.nan);
    returns(
        'max_325',
        () =>
            m.call('max', [$f64('7FF4000000000000'), $f64('8000000000000000')]),
        double.nan);
    returns('max_326',
        () => m.call('max', [$f64('7FF8000000000000'), $f64('0')]), double.nan);
    returns('max_327',
        () => m.call('max', [$f64('7FF4000000000000'), $f64('0')]), double.nan);
    returns(
        'max_328',
        () =>
            m.call('max', [$f64('FFF8000000000000'), $f64('8000000000000001')]),
        double.nan);
    returns(
        'max_329',
        () =>
            m.call('max', [$f64('FFF4000000000000'), $f64('8000000000000001')]),
        double.nan);
    returns('max_330',
        () => m.call('max', [$f64('FFF8000000000000'), $f64('1')]), double.nan);
    returns('max_331',
        () => m.call('max', [$f64('FFF4000000000000'), $f64('1')]), double.nan);
    returns(
        'max_332',
        () =>
            m.call('max', [$f64('7FF8000000000000'), $f64('8000000000000001')]),
        double.nan);
    returns(
        'max_333',
        () =>
            m.call('max', [$f64('7FF4000000000000'), $f64('8000000000000001')]),
        double.nan);
    returns('max_334',
        () => m.call('max', [$f64('7FF8000000000000'), $f64('1')]), double.nan);
    returns('max_335',
        () => m.call('max', [$f64('7FF4000000000000'), $f64('1')]), double.nan);
    returns(
        'max_336',
        () =>
            m.call('max', [$f64('FFF8000000000000'), $f64('8010000000000000')]),
        double.nan);
    returns(
        'max_337',
        () =>
            m.call('max', [$f64('FFF4000000000000'), $f64('8010000000000000')]),
        double.nan);
    returns(
        'max_338',
        () => m.call('max', [$f64('FFF8000000000000'), $f64('10000000000000')]),
        double.nan);
    returns(
        'max_339',
        () => m.call('max', [$f64('FFF4000000000000'), $f64('10000000000000')]),
        double.nan);
    returns(
        'max_340',
        () =>
            m.call('max', [$f64('7FF8000000000000'), $f64('8010000000000000')]),
        double.nan);
    returns(
        'max_341',
        () =>
            m.call('max', [$f64('7FF4000000000000'), $f64('8010000000000000')]),
        double.nan);
    returns(
        'max_342',
        () => m.call('max', [$f64('7FF8000000000000'), $f64('10000000000000')]),
        double.nan);
    returns(
        'max_343',
        () => m.call('max', [$f64('7FF4000000000000'), $f64('10000000000000')]),
        double.nan);
    returns(
        'max_344',
        () =>
            m.call('max', [$f64('FFF8000000000000'), $f64('BFE0000000000000')]),
        double.nan);
    returns(
        'max_345',
        () =>
            m.call('max', [$f64('FFF4000000000000'), $f64('BFE0000000000000')]),
        double.nan);
    returns(
        'max_346',
        () =>
            m.call('max', [$f64('FFF8000000000000'), $f64('3FE0000000000000')]),
        double.nan);
    returns(
        'max_347',
        () =>
            m.call('max', [$f64('FFF4000000000000'), $f64('3FE0000000000000')]),
        double.nan);
    returns(
        'max_348',
        () =>
            m.call('max', [$f64('7FF8000000000000'), $f64('BFE0000000000000')]),
        double.nan);
    returns(
        'max_349',
        () =>
            m.call('max', [$f64('7FF4000000000000'), $f64('BFE0000000000000')]),
        double.nan);
    returns(
        'max_350',
        () =>
            m.call('max', [$f64('7FF8000000000000'), $f64('3FE0000000000000')]),
        double.nan);
    returns(
        'max_351',
        () =>
            m.call('max', [$f64('7FF4000000000000'), $f64('3FE0000000000000')]),
        double.nan);
    returns(
        'max_352',
        () =>
            m.call('max', [$f64('FFF8000000000000'), $f64('BFF0000000000000')]),
        double.nan);
    returns(
        'max_353',
        () =>
            m.call('max', [$f64('FFF4000000000000'), $f64('BFF0000000000000')]),
        double.nan);
    returns(
        'max_354',
        () =>
            m.call('max', [$f64('FFF8000000000000'), $f64('3FF0000000000000')]),
        double.nan);
    returns(
        'max_355',
        () =>
            m.call('max', [$f64('FFF4000000000000'), $f64('3FF0000000000000')]),
        double.nan);
    returns(
        'max_356',
        () =>
            m.call('max', [$f64('7FF8000000000000'), $f64('BFF0000000000000')]),
        double.nan);
    returns(
        'max_357',
        () =>
            m.call('max', [$f64('7FF4000000000000'), $f64('BFF0000000000000')]),
        double.nan);
    returns(
        'max_358',
        () =>
            m.call('max', [$f64('7FF8000000000000'), $f64('3FF0000000000000')]),
        double.nan);
    returns(
        'max_359',
        () =>
            m.call('max', [$f64('7FF4000000000000'), $f64('3FF0000000000000')]),
        double.nan);
    returns(
        'max_360',
        () =>
            m.call('max', [$f64('FFF8000000000000'), $f64('C01921FB54442D18')]),
        double.nan);
    returns(
        'max_361',
        () =>
            m.call('max', [$f64('FFF4000000000000'), $f64('C01921FB54442D18')]),
        double.nan);
    returns(
        'max_362',
        () =>
            m.call('max', [$f64('FFF8000000000000'), $f64('401921FB54442D18')]),
        double.nan);
    returns(
        'max_363',
        () =>
            m.call('max', [$f64('FFF4000000000000'), $f64('401921FB54442D18')]),
        double.nan);
    returns(
        'max_364',
        () =>
            m.call('max', [$f64('7FF8000000000000'), $f64('C01921FB54442D18')]),
        double.nan);
    returns(
        'max_365',
        () =>
            m.call('max', [$f64('7FF4000000000000'), $f64('C01921FB54442D18')]),
        double.nan);
    returns(
        'max_366',
        () =>
            m.call('max', [$f64('7FF8000000000000'), $f64('401921FB54442D18')]),
        double.nan);
    returns(
        'max_367',
        () =>
            m.call('max', [$f64('7FF4000000000000'), $f64('401921FB54442D18')]),
        double.nan);
    returns(
        'max_368',
        () =>
            m.call('max', [$f64('FFF8000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        double.nan);
    returns(
        'max_369',
        () =>
            m.call('max', [$f64('FFF4000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        double.nan);
    returns(
        'max_370',
        () =>
            m.call('max', [$f64('FFF8000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        double.nan);
    returns(
        'max_371',
        () =>
            m.call('max', [$f64('FFF4000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        double.nan);
    returns(
        'max_372',
        () =>
            m.call('max', [$f64('7FF8000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        double.nan);
    returns(
        'max_373',
        () =>
            m.call('max', [$f64('7FF4000000000000'), $f64('FFEFFFFFFFFFFFFF')]),
        double.nan);
    returns(
        'max_374',
        () =>
            m.call('max', [$f64('7FF8000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        double.nan);
    returns(
        'max_375',
        () =>
            m.call('max', [$f64('7FF4000000000000'), $f64('7FEFFFFFFFFFFFFF')]),
        double.nan);
    returns(
        'max_376',
        () =>
            m.call('max', [$f64('FFF8000000000000'), $f64('FFF0000000000000')]),
        double.nan);
    returns(
        'max_377',
        () =>
            m.call('max', [$f64('FFF4000000000000'), $f64('FFF0000000000000')]),
        double.nan);
    returns(
        'max_378',
        () =>
            m.call('max', [$f64('FFF8000000000000'), $f64('7FF0000000000000')]),
        double.nan);
    returns(
        'max_379',
        () =>
            m.call('max', [$f64('FFF4000000000000'), $f64('7FF0000000000000')]),
        double.nan);
    returns(
        'max_380',
        () =>
            m.call('max', [$f64('7FF8000000000000'), $f64('FFF0000000000000')]),
        double.nan);
    returns(
        'max_381',
        () =>
            m.call('max', [$f64('7FF4000000000000'), $f64('FFF0000000000000')]),
        double.nan);
    returns(
        'max_382',
        () =>
            m.call('max', [$f64('7FF8000000000000'), $f64('7FF0000000000000')]),
        double.nan);
    returns(
        'max_383',
        () =>
            m.call('max', [$f64('7FF4000000000000'), $f64('7FF0000000000000')]),
        double.nan);
    returns(
        'max_384',
        () =>
            m.call('max', [$f64('FFF8000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'max_385',
        () =>
            m.call('max', [$f64('FFF4000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'max_386',
        () =>
            m.call('max', [$f64('FFF8000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'max_387',
        () =>
            m.call('max', [$f64('FFF4000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'max_388',
        () =>
            m.call('max', [$f64('FFF8000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'max_389',
        () =>
            m.call('max', [$f64('FFF4000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'max_390',
        () =>
            m.call('max', [$f64('FFF8000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'max_391',
        () =>
            m.call('max', [$f64('FFF4000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'max_392',
        () =>
            m.call('max', [$f64('7FF8000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'max_393',
        () =>
            m.call('max', [$f64('7FF4000000000000'), $f64('FFF8000000000000')]),
        double.nan);
    returns(
        'max_394',
        () =>
            m.call('max', [$f64('7FF8000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'max_395',
        () =>
            m.call('max', [$f64('7FF4000000000000'), $f64('FFF4000000000000')]),
        double.nan);
    returns(
        'max_396',
        () =>
            m.call('max', [$f64('7FF8000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'max_397',
        () =>
            m.call('max', [$f64('7FF4000000000000'), $f64('7FF8000000000000')]),
        double.nan);
    returns(
        'max_398',
        () =>
            m.call('max', [$f64('7FF8000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns(
        'max_399',
        () =>
            m.call('max', [$f64('7FF4000000000000'), $f64('7FF4000000000000')]),
        double.nan);
    returns('sqrt_0', () => m.call('sqrt', [$f64('8000000000000000')]),
        $f64('8000000000000000'));
    returns('sqrt_1', () => m.call('sqrt', [$f64('0')]), $f64('0'));
    returns(
        'sqrt_2', () => m.call('sqrt', [$f64('8000000000000001')]), double.nan);
    returns(
        'sqrt_3', () => m.call('sqrt', [$f64('1')]), $f64('1E60000000000000'));
    returns(
        'sqrt_4', () => m.call('sqrt', [$f64('8010000000000000')]), double.nan);
    returns('sqrt_5', () => m.call('sqrt', [$f64('10000000000000')]),
        $f64('2000000000000000'));
    returns(
        'sqrt_6', () => m.call('sqrt', [$f64('BFE0000000000000')]), double.nan);
    returns('sqrt_7', () => m.call('sqrt', [$f64('3FE0000000000000')]),
        $f64('3FE6A09E667F3BCD'));
    returns(
        'sqrt_8', () => m.call('sqrt', [$f64('BFF0000000000000')]), double.nan);
    returns('sqrt_9', () => m.call('sqrt', [$f64('3FF0000000000000')]),
        $f64('3FF0000000000000'));
    returns('sqrt_10', () => m.call('sqrt', [$f64('C01921FB54442D18')]),
        double.nan);
    returns('sqrt_11', () => m.call('sqrt', [$f64('401921FB54442D18')]),
        $f64('40040D931FF62705'));
    returns('sqrt_12', () => m.call('sqrt', [$f64('FFEFFFFFFFFFFFFF')]),
        double.nan);
    returns('sqrt_13', () => m.call('sqrt', [$f64('7FEFFFFFFFFFFFFF')]),
        $f64('5FEFFFFFFFFFFFFF'));
    returns('sqrt_14', () => m.call('sqrt', [$f64('FFF0000000000000')]),
        double.nan);
    returns('sqrt_15', () => m.call('sqrt', [$f64('7FF0000000000000')]),
        $f64('7FF0000000000000'));
    returns('sqrt_16', () => m.call('sqrt', [$f64('FFF8000000000000')]),
        double.nan);
    returns('sqrt_17', () => m.call('sqrt', [$f64('FFF4000000000000')]),
        double.nan);
    returns('sqrt_18', () => m.call('sqrt', [$f64('7FF8000000000000')]),
        double.nan);
    returns('sqrt_19', () => m.call('sqrt', [$f64('7FF4000000000000')]),
        double.nan);
    returns('floor_0', () => m.call('floor', [$f64('8000000000000000')]),
        $f64('8000000000000000'));
    returns('floor_1', () => m.call('floor', [$f64('0')]), $f64('0'));
    returns('floor_2', () => m.call('floor', [$f64('8000000000000001')]),
        $f64('BFF0000000000000'));
    returns('floor_3', () => m.call('floor', [$f64('1')]), $f64('0'));
    returns('floor_4', () => m.call('floor', [$f64('8010000000000000')]),
        $f64('BFF0000000000000'));
    returns(
        'floor_5', () => m.call('floor', [$f64('10000000000000')]), $f64('0'));
    returns('floor_6', () => m.call('floor', [$f64('BFE0000000000000')]),
        $f64('BFF0000000000000'));
    returns('floor_7', () => m.call('floor', [$f64('3FE0000000000000')]),
        $f64('0'));
    returns('floor_8', () => m.call('floor', [$f64('BFF0000000000000')]),
        $f64('BFF0000000000000'));
    returns('floor_9', () => m.call('floor', [$f64('3FF0000000000000')]),
        $f64('3FF0000000000000'));
    returns('floor_10', () => m.call('floor', [$f64('C01921FB54442D18')]),
        $f64('C01C000000000000'));
    returns('floor_11', () => m.call('floor', [$f64('401921FB54442D18')]),
        $f64('4018000000000000'));
    returns('floor_12', () => m.call('floor', [$f64('FFEFFFFFFFFFFFFF')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns('floor_13', () => m.call('floor', [$f64('7FEFFFFFFFFFFFFF')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns('floor_14', () => m.call('floor', [$f64('FFF0000000000000')]),
        $f64('FFF0000000000000'));
    returns('floor_15', () => m.call('floor', [$f64('7FF0000000000000')]),
        $f64('7FF0000000000000'));
    returns('floor_16', () => m.call('floor', [$f64('FFF8000000000000')]),
        double.nan);
    returns('floor_17', () => m.call('floor', [$f64('FFF4000000000000')]),
        double.nan);
    returns('floor_18', () => m.call('floor', [$f64('7FF8000000000000')]),
        double.nan);
    returns('floor_19', () => m.call('floor', [$f64('7FF4000000000000')]),
        double.nan);
    returns('ceil_0', () => m.call('ceil', [$f64('8000000000000000')]),
        $f64('8000000000000000'));
    returns('ceil_1', () => m.call('ceil', [$f64('0')]), $f64('0'));
    returns('ceil_2', () => m.call('ceil', [$f64('8000000000000001')]),
        $f64('8000000000000000'));
    returns(
        'ceil_3', () => m.call('ceil', [$f64('1')]), $f64('3FF0000000000000'));
    returns('ceil_4', () => m.call('ceil', [$f64('8010000000000000')]),
        $f64('8000000000000000'));
    returns('ceil_5', () => m.call('ceil', [$f64('10000000000000')]),
        $f64('3FF0000000000000'));
    returns('ceil_6', () => m.call('ceil', [$f64('BFE0000000000000')]),
        $f64('8000000000000000'));
    returns('ceil_7', () => m.call('ceil', [$f64('3FE0000000000000')]),
        $f64('3FF0000000000000'));
    returns('ceil_8', () => m.call('ceil', [$f64('BFF0000000000000')]),
        $f64('BFF0000000000000'));
    returns('ceil_9', () => m.call('ceil', [$f64('3FF0000000000000')]),
        $f64('3FF0000000000000'));
    returns('ceil_10', () => m.call('ceil', [$f64('C01921FB54442D18')]),
        $f64('C018000000000000'));
    returns('ceil_11', () => m.call('ceil', [$f64('401921FB54442D18')]),
        $f64('401C000000000000'));
    returns('ceil_12', () => m.call('ceil', [$f64('FFEFFFFFFFFFFFFF')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns('ceil_13', () => m.call('ceil', [$f64('7FEFFFFFFFFFFFFF')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns('ceil_14', () => m.call('ceil', [$f64('FFF0000000000000')]),
        $f64('FFF0000000000000'));
    returns('ceil_15', () => m.call('ceil', [$f64('7FF0000000000000')]),
        $f64('7FF0000000000000'));
    returns('ceil_16', () => m.call('ceil', [$f64('FFF8000000000000')]),
        double.nan);
    returns('ceil_17', () => m.call('ceil', [$f64('FFF4000000000000')]),
        double.nan);
    returns('ceil_18', () => m.call('ceil', [$f64('7FF8000000000000')]),
        double.nan);
    returns('ceil_19', () => m.call('ceil', [$f64('7FF4000000000000')]),
        double.nan);
    returns('trunc_0', () => m.call('trunc', [$f64('8000000000000000')]),
        $f64('8000000000000000'));
    returns('trunc_1', () => m.call('trunc', [$f64('0')]), $f64('0'));
    returns('trunc_2', () => m.call('trunc', [$f64('8000000000000001')]),
        $f64('8000000000000000'));
    returns('trunc_3', () => m.call('trunc', [$f64('1')]), $f64('0'));
    returns('trunc_4', () => m.call('trunc', [$f64('8010000000000000')]),
        $f64('8000000000000000'));
    returns(
        'trunc_5', () => m.call('trunc', [$f64('10000000000000')]), $f64('0'));
    returns('trunc_6', () => m.call('trunc', [$f64('BFE0000000000000')]),
        $f64('8000000000000000'));
    returns('trunc_7', () => m.call('trunc', [$f64('3FE0000000000000')]),
        $f64('0'));
    returns('trunc_8', () => m.call('trunc', [$f64('BFF0000000000000')]),
        $f64('BFF0000000000000'));
    returns('trunc_9', () => m.call('trunc', [$f64('3FF0000000000000')]),
        $f64('3FF0000000000000'));
    returns('trunc_10', () => m.call('trunc', [$f64('C01921FB54442D18')]),
        $f64('C018000000000000'));
    returns('trunc_11', () => m.call('trunc', [$f64('401921FB54442D18')]),
        $f64('4018000000000000'));
    returns('trunc_12', () => m.call('trunc', [$f64('FFEFFFFFFFFFFFFF')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns('trunc_13', () => m.call('trunc', [$f64('7FEFFFFFFFFFFFFF')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns('trunc_14', () => m.call('trunc', [$f64('FFF0000000000000')]),
        $f64('FFF0000000000000'));
    returns('trunc_15', () => m.call('trunc', [$f64('7FF0000000000000')]),
        $f64('7FF0000000000000'));
    returns('trunc_16', () => m.call('trunc', [$f64('FFF8000000000000')]),
        double.nan);
    returns('trunc_17', () => m.call('trunc', [$f64('FFF4000000000000')]),
        double.nan);
    returns('trunc_18', () => m.call('trunc', [$f64('7FF8000000000000')]),
        double.nan);
    returns('trunc_19', () => m.call('trunc', [$f64('7FF4000000000000')]),
        double.nan);
    returns('nearest_0', () => m.call('nearest', [$f64('8000000000000000')]),
        $f64('8000000000000000'));
    returns('nearest_1', () => m.call('nearest', [$f64('0')]), $f64('0'));
    returns('nearest_2', () => m.call('nearest', [$f64('8000000000000001')]),
        $f64('8000000000000000'));
    returns('nearest_3', () => m.call('nearest', [$f64('1')]), $f64('0'));
    returns('nearest_4', () => m.call('nearest', [$f64('8010000000000000')]),
        $f64('8000000000000000'));
    returns('nearest_5', () => m.call('nearest', [$f64('10000000000000')]),
        $f64('0'));
    returns(
      'nearest_6',
      () => m.call('nearest', [$f64('BFE0000000000000')]),
      $f64('8000000000000000'),
      'skip: see test/spec/_expected_fail.txt',
    );
    returns(
      'nearest_7',
      () => m.call('nearest', [$f64('3FE0000000000000')]),
      $f64('0'),
      'skip: see test/spec/_expected_fail.txt',
    );
    returns('nearest_8', () => m.call('nearest', [$f64('BFF0000000000000')]),
        $f64('BFF0000000000000'));
    returns('nearest_9', () => m.call('nearest', [$f64('3FF0000000000000')]),
        $f64('3FF0000000000000'));
    returns('nearest_10', () => m.call('nearest', [$f64('C01921FB54442D18')]),
        $f64('C018000000000000'));
    returns('nearest_11', () => m.call('nearest', [$f64('401921FB54442D18')]),
        $f64('4018000000000000'));
    returns('nearest_12', () => m.call('nearest', [$f64('FFEFFFFFFFFFFFFF')]),
        $f64('FFEFFFFFFFFFFFFF'));
    returns('nearest_13', () => m.call('nearest', [$f64('7FEFFFFFFFFFFFFF')]),
        $f64('7FEFFFFFFFFFFFFF'));
    returns('nearest_14', () => m.call('nearest', [$f64('FFF0000000000000')]),
        $f64('FFF0000000000000'));
    returns('nearest_15', () => m.call('nearest', [$f64('7FF0000000000000')]),
        $f64('7FF0000000000000'));
    returns('nearest_16', () => m.call('nearest', [$f64('FFF8000000000000')]),
        double.nan);
    returns('nearest_17', () => m.call('nearest', [$f64('FFF4000000000000')]),
        double.nan);
    returns('nearest_18', () => m.call('nearest', [$f64('7FF8000000000000')]),
        double.nan);
    returns('nearest_19', () => m.call('nearest', [$f64('7FF4000000000000')]),
        double.nan);
  });
}
