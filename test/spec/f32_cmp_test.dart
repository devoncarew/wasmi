// Generated from spec/test/core/f32_cmp.wast.

import 'dart:io';
import 'package:test/test.dart';
import 'package:wasmi/format.dart';
import '_framework.dart';

void main() {
  group('f32_cmp.0.wasm', () {
    late Module m;

    setUpAll(() {
      m = Module.parse(File('test/spec/f32_cmp/f32_cmp.0.wasm'));
    });

    returns(
        'eq_0', () => m.call('eq', [$f32('80000000'), $f32('80000000')]), 0x1);
    returns('eq_1', () => m.call('eq', [$f32('80000000'), $f32('0')]), 0x1);
    returns('eq_2', () => m.call('eq', [$f32('0'), $f32('80000000')]), 0x1);
    returns('eq_3', () => m.call('eq', [$f32('0'), $f32('0')]), 0x1);
    returns(
        'eq_4', () => m.call('eq', [$f32('80000000'), $f32('80000001')]), 0);
    returns('eq_5', () => m.call('eq', [$f32('80000000'), $f32('1')]), 0);
    returns('eq_6', () => m.call('eq', [$f32('0'), $f32('80000001')]), 0);
    returns('eq_7', () => m.call('eq', [$f32('0'), $f32('1')]), 0);
    returns(
        'eq_8', () => m.call('eq', [$f32('80000000'), $f32('80800000')]), 0);
    returns('eq_9', () => m.call('eq', [$f32('80000000'), $f32('800000')]), 0);
    returns('eq_10', () => m.call('eq', [$f32('0'), $f32('80800000')]), 0);
    returns('eq_11', () => m.call('eq', [$f32('0'), $f32('800000')]), 0);
    returns(
        'eq_12', () => m.call('eq', [$f32('80000000'), $f32('BF000000')]), 0);
    returns(
        'eq_13', () => m.call('eq', [$f32('80000000'), $f32('3F000000')]), 0);
    returns('eq_14', () => m.call('eq', [$f32('0'), $f32('BF000000')]), 0);
    returns('eq_15', () => m.call('eq', [$f32('0'), $f32('3F000000')]), 0);
    returns(
        'eq_16', () => m.call('eq', [$f32('80000000'), $f32('BF800000')]), 0);
    returns(
        'eq_17', () => m.call('eq', [$f32('80000000'), $f32('3F800000')]), 0);
    returns('eq_18', () => m.call('eq', [$f32('0'), $f32('BF800000')]), 0);
    returns('eq_19', () => m.call('eq', [$f32('0'), $f32('3F800000')]), 0);
    returns(
        'eq_20', () => m.call('eq', [$f32('80000000'), $f32('C0C90FDB')]), 0);
    returns(
        'eq_21', () => m.call('eq', [$f32('80000000'), $f32('40C90FDB')]), 0);
    returns('eq_22', () => m.call('eq', [$f32('0'), $f32('C0C90FDB')]), 0);
    returns('eq_23', () => m.call('eq', [$f32('0'), $f32('40C90FDB')]), 0);
    returns(
        'eq_24', () => m.call('eq', [$f32('80000000'), $f32('FF7FFFFF')]), 0);
    returns(
        'eq_25', () => m.call('eq', [$f32('80000000'), $f32('7F7FFFFF')]), 0);
    returns('eq_26', () => m.call('eq', [$f32('0'), $f32('FF7FFFFF')]), 0);
    returns('eq_27', () => m.call('eq', [$f32('0'), $f32('7F7FFFFF')]), 0);
    returns(
        'eq_28', () => m.call('eq', [$f32('80000000'), $f32('FF800000')]), 0);
    returns(
        'eq_29', () => m.call('eq', [$f32('80000000'), $f32('7F800000')]), 0);
    returns('eq_30', () => m.call('eq', [$f32('0'), $f32('FF800000')]), 0);
    returns('eq_31', () => m.call('eq', [$f32('0'), $f32('7F800000')]), 0);
    returns(
        'eq_32', () => m.call('eq', [$f32('80000000'), $f32('FFC00000')]), 0);
    returns(
        'eq_33', () => m.call('eq', [$f32('80000000'), $f32('FFA00000')]), 0);
    returns(
        'eq_34', () => m.call('eq', [$f32('80000000'), $f32('7FC00000')]), 0);
    returns(
        'eq_35', () => m.call('eq', [$f32('80000000'), $f32('7FA00000')]), 0);
    returns('eq_36', () => m.call('eq', [$f32('0'), $f32('FFC00000')]), 0);
    returns('eq_37', () => m.call('eq', [$f32('0'), $f32('FFA00000')]), 0);
    returns('eq_38', () => m.call('eq', [$f32('0'), $f32('7FC00000')]), 0);
    returns('eq_39', () => m.call('eq', [$f32('0'), $f32('7FA00000')]), 0);
    returns(
        'eq_40', () => m.call('eq', [$f32('80000001'), $f32('80000000')]), 0);
    returns('eq_41', () => m.call('eq', [$f32('80000001'), $f32('0')]), 0);
    returns('eq_42', () => m.call('eq', [$f32('1'), $f32('80000000')]), 0);
    returns('eq_43', () => m.call('eq', [$f32('1'), $f32('0')]), 0);
    returns(
        'eq_44', () => m.call('eq', [$f32('80000001'), $f32('80000001')]), 0x1);
    returns('eq_45', () => m.call('eq', [$f32('80000001'), $f32('1')]), 0);
    returns('eq_46', () => m.call('eq', [$f32('1'), $f32('80000001')]), 0);
    returns('eq_47', () => m.call('eq', [$f32('1'), $f32('1')]), 0x1);
    returns(
        'eq_48', () => m.call('eq', [$f32('80000001'), $f32('80800000')]), 0);
    returns('eq_49', () => m.call('eq', [$f32('80000001'), $f32('800000')]), 0);
    returns('eq_50', () => m.call('eq', [$f32('1'), $f32('80800000')]), 0);
    returns('eq_51', () => m.call('eq', [$f32('1'), $f32('800000')]), 0);
    returns(
        'eq_52', () => m.call('eq', [$f32('80000001'), $f32('BF000000')]), 0);
    returns(
        'eq_53', () => m.call('eq', [$f32('80000001'), $f32('3F000000')]), 0);
    returns('eq_54', () => m.call('eq', [$f32('1'), $f32('BF000000')]), 0);
    returns('eq_55', () => m.call('eq', [$f32('1'), $f32('3F000000')]), 0);
    returns(
        'eq_56', () => m.call('eq', [$f32('80000001'), $f32('BF800000')]), 0);
    returns(
        'eq_57', () => m.call('eq', [$f32('80000001'), $f32('3F800000')]), 0);
    returns('eq_58', () => m.call('eq', [$f32('1'), $f32('BF800000')]), 0);
    returns('eq_59', () => m.call('eq', [$f32('1'), $f32('3F800000')]), 0);
    returns(
        'eq_60', () => m.call('eq', [$f32('80000001'), $f32('C0C90FDB')]), 0);
    returns(
        'eq_61', () => m.call('eq', [$f32('80000001'), $f32('40C90FDB')]), 0);
    returns('eq_62', () => m.call('eq', [$f32('1'), $f32('C0C90FDB')]), 0);
    returns('eq_63', () => m.call('eq', [$f32('1'), $f32('40C90FDB')]), 0);
    returns(
        'eq_64', () => m.call('eq', [$f32('80000001'), $f32('FF7FFFFF')]), 0);
    returns(
        'eq_65', () => m.call('eq', [$f32('80000001'), $f32('7F7FFFFF')]), 0);
    returns('eq_66', () => m.call('eq', [$f32('1'), $f32('FF7FFFFF')]), 0);
    returns('eq_67', () => m.call('eq', [$f32('1'), $f32('7F7FFFFF')]), 0);
    returns(
        'eq_68', () => m.call('eq', [$f32('80000001'), $f32('FF800000')]), 0);
    returns(
        'eq_69', () => m.call('eq', [$f32('80000001'), $f32('7F800000')]), 0);
    returns('eq_70', () => m.call('eq', [$f32('1'), $f32('FF800000')]), 0);
    returns('eq_71', () => m.call('eq', [$f32('1'), $f32('7F800000')]), 0);
    returns(
        'eq_72', () => m.call('eq', [$f32('80000001'), $f32('FFC00000')]), 0);
    returns(
        'eq_73', () => m.call('eq', [$f32('80000001'), $f32('FFA00000')]), 0);
    returns(
        'eq_74', () => m.call('eq', [$f32('80000001'), $f32('7FC00000')]), 0);
    returns(
        'eq_75', () => m.call('eq', [$f32('80000001'), $f32('7FA00000')]), 0);
    returns('eq_76', () => m.call('eq', [$f32('1'), $f32('FFC00000')]), 0);
    returns('eq_77', () => m.call('eq', [$f32('1'), $f32('FFA00000')]), 0);
    returns('eq_78', () => m.call('eq', [$f32('1'), $f32('7FC00000')]), 0);
    returns('eq_79', () => m.call('eq', [$f32('1'), $f32('7FA00000')]), 0);
    returns(
        'eq_80', () => m.call('eq', [$f32('80800000'), $f32('80000000')]), 0);
    returns('eq_81', () => m.call('eq', [$f32('80800000'), $f32('0')]), 0);
    returns('eq_82', () => m.call('eq', [$f32('800000'), $f32('80000000')]), 0);
    returns('eq_83', () => m.call('eq', [$f32('800000'), $f32('0')]), 0);
    returns(
        'eq_84', () => m.call('eq', [$f32('80800000'), $f32('80000001')]), 0);
    returns('eq_85', () => m.call('eq', [$f32('80800000'), $f32('1')]), 0);
    returns('eq_86', () => m.call('eq', [$f32('800000'), $f32('80000001')]), 0);
    returns('eq_87', () => m.call('eq', [$f32('800000'), $f32('1')]), 0);
    returns(
        'eq_88', () => m.call('eq', [$f32('80800000'), $f32('80800000')]), 0x1);
    returns('eq_89', () => m.call('eq', [$f32('80800000'), $f32('800000')]), 0);
    returns('eq_90', () => m.call('eq', [$f32('800000'), $f32('80800000')]), 0);
    returns('eq_91', () => m.call('eq', [$f32('800000'), $f32('800000')]), 0x1);
    returns(
        'eq_92', () => m.call('eq', [$f32('80800000'), $f32('BF000000')]), 0);
    returns(
        'eq_93', () => m.call('eq', [$f32('80800000'), $f32('3F000000')]), 0);
    returns('eq_94', () => m.call('eq', [$f32('800000'), $f32('BF000000')]), 0);
    returns('eq_95', () => m.call('eq', [$f32('800000'), $f32('3F000000')]), 0);
    returns(
        'eq_96', () => m.call('eq', [$f32('80800000'), $f32('BF800000')]), 0);
    returns(
        'eq_97', () => m.call('eq', [$f32('80800000'), $f32('3F800000')]), 0);
    returns('eq_98', () => m.call('eq', [$f32('800000'), $f32('BF800000')]), 0);
    returns('eq_99', () => m.call('eq', [$f32('800000'), $f32('3F800000')]), 0);
    returns(
        'eq_100', () => m.call('eq', [$f32('80800000'), $f32('C0C90FDB')]), 0);
    returns(
        'eq_101', () => m.call('eq', [$f32('80800000'), $f32('40C90FDB')]), 0);
    returns(
        'eq_102', () => m.call('eq', [$f32('800000'), $f32('C0C90FDB')]), 0);
    returns(
        'eq_103', () => m.call('eq', [$f32('800000'), $f32('40C90FDB')]), 0);
    returns(
        'eq_104', () => m.call('eq', [$f32('80800000'), $f32('FF7FFFFF')]), 0);
    returns(
        'eq_105', () => m.call('eq', [$f32('80800000'), $f32('7F7FFFFF')]), 0);
    returns(
        'eq_106', () => m.call('eq', [$f32('800000'), $f32('FF7FFFFF')]), 0);
    returns(
        'eq_107', () => m.call('eq', [$f32('800000'), $f32('7F7FFFFF')]), 0);
    returns(
        'eq_108', () => m.call('eq', [$f32('80800000'), $f32('FF800000')]), 0);
    returns(
        'eq_109', () => m.call('eq', [$f32('80800000'), $f32('7F800000')]), 0);
    returns(
        'eq_110', () => m.call('eq', [$f32('800000'), $f32('FF800000')]), 0);
    returns(
        'eq_111', () => m.call('eq', [$f32('800000'), $f32('7F800000')]), 0);
    returns(
        'eq_112', () => m.call('eq', [$f32('80800000'), $f32('FFC00000')]), 0);
    returns(
        'eq_113', () => m.call('eq', [$f32('80800000'), $f32('FFA00000')]), 0);
    returns(
        'eq_114', () => m.call('eq', [$f32('80800000'), $f32('7FC00000')]), 0);
    returns(
        'eq_115', () => m.call('eq', [$f32('80800000'), $f32('7FA00000')]), 0);
    returns(
        'eq_116', () => m.call('eq', [$f32('800000'), $f32('FFC00000')]), 0);
    returns(
        'eq_117', () => m.call('eq', [$f32('800000'), $f32('FFA00000')]), 0);
    returns(
        'eq_118', () => m.call('eq', [$f32('800000'), $f32('7FC00000')]), 0);
    returns(
        'eq_119', () => m.call('eq', [$f32('800000'), $f32('7FA00000')]), 0);
    returns(
        'eq_120', () => m.call('eq', [$f32('BF000000'), $f32('80000000')]), 0);
    returns('eq_121', () => m.call('eq', [$f32('BF000000'), $f32('0')]), 0);
    returns(
        'eq_122', () => m.call('eq', [$f32('3F000000'), $f32('80000000')]), 0);
    returns('eq_123', () => m.call('eq', [$f32('3F000000'), $f32('0')]), 0);
    returns(
        'eq_124', () => m.call('eq', [$f32('BF000000'), $f32('80000001')]), 0);
    returns('eq_125', () => m.call('eq', [$f32('BF000000'), $f32('1')]), 0);
    returns(
        'eq_126', () => m.call('eq', [$f32('3F000000'), $f32('80000001')]), 0);
    returns('eq_127', () => m.call('eq', [$f32('3F000000'), $f32('1')]), 0);
    returns(
        'eq_128', () => m.call('eq', [$f32('BF000000'), $f32('80800000')]), 0);
    returns(
        'eq_129', () => m.call('eq', [$f32('BF000000'), $f32('800000')]), 0);
    returns(
        'eq_130', () => m.call('eq', [$f32('3F000000'), $f32('80800000')]), 0);
    returns(
        'eq_131', () => m.call('eq', [$f32('3F000000'), $f32('800000')]), 0);
    returns('eq_132', () => m.call('eq', [$f32('BF000000'), $f32('BF000000')]),
        0x1);
    returns(
        'eq_133', () => m.call('eq', [$f32('BF000000'), $f32('3F000000')]), 0);
    returns(
        'eq_134', () => m.call('eq', [$f32('3F000000'), $f32('BF000000')]), 0);
    returns('eq_135', () => m.call('eq', [$f32('3F000000'), $f32('3F000000')]),
        0x1);
    returns(
        'eq_136', () => m.call('eq', [$f32('BF000000'), $f32('BF800000')]), 0);
    returns(
        'eq_137', () => m.call('eq', [$f32('BF000000'), $f32('3F800000')]), 0);
    returns(
        'eq_138', () => m.call('eq', [$f32('3F000000'), $f32('BF800000')]), 0);
    returns(
        'eq_139', () => m.call('eq', [$f32('3F000000'), $f32('3F800000')]), 0);
    returns(
        'eq_140', () => m.call('eq', [$f32('BF000000'), $f32('C0C90FDB')]), 0);
    returns(
        'eq_141', () => m.call('eq', [$f32('BF000000'), $f32('40C90FDB')]), 0);
    returns(
        'eq_142', () => m.call('eq', [$f32('3F000000'), $f32('C0C90FDB')]), 0);
    returns(
        'eq_143', () => m.call('eq', [$f32('3F000000'), $f32('40C90FDB')]), 0);
    returns(
        'eq_144', () => m.call('eq', [$f32('BF000000'), $f32('FF7FFFFF')]), 0);
    returns(
        'eq_145', () => m.call('eq', [$f32('BF000000'), $f32('7F7FFFFF')]), 0);
    returns(
        'eq_146', () => m.call('eq', [$f32('3F000000'), $f32('FF7FFFFF')]), 0);
    returns(
        'eq_147', () => m.call('eq', [$f32('3F000000'), $f32('7F7FFFFF')]), 0);
    returns(
        'eq_148', () => m.call('eq', [$f32('BF000000'), $f32('FF800000')]), 0);
    returns(
        'eq_149', () => m.call('eq', [$f32('BF000000'), $f32('7F800000')]), 0);
    returns(
        'eq_150', () => m.call('eq', [$f32('3F000000'), $f32('FF800000')]), 0);
    returns(
        'eq_151', () => m.call('eq', [$f32('3F000000'), $f32('7F800000')]), 0);
    returns(
        'eq_152', () => m.call('eq', [$f32('BF000000'), $f32('FFC00000')]), 0);
    returns(
        'eq_153', () => m.call('eq', [$f32('BF000000'), $f32('FFA00000')]), 0);
    returns(
        'eq_154', () => m.call('eq', [$f32('BF000000'), $f32('7FC00000')]), 0);
    returns(
        'eq_155', () => m.call('eq', [$f32('BF000000'), $f32('7FA00000')]), 0);
    returns(
        'eq_156', () => m.call('eq', [$f32('3F000000'), $f32('FFC00000')]), 0);
    returns(
        'eq_157', () => m.call('eq', [$f32('3F000000'), $f32('FFA00000')]), 0);
    returns(
        'eq_158', () => m.call('eq', [$f32('3F000000'), $f32('7FC00000')]), 0);
    returns(
        'eq_159', () => m.call('eq', [$f32('3F000000'), $f32('7FA00000')]), 0);
    returns(
        'eq_160', () => m.call('eq', [$f32('BF800000'), $f32('80000000')]), 0);
    returns('eq_161', () => m.call('eq', [$f32('BF800000'), $f32('0')]), 0);
    returns(
        'eq_162', () => m.call('eq', [$f32('3F800000'), $f32('80000000')]), 0);
    returns('eq_163', () => m.call('eq', [$f32('3F800000'), $f32('0')]), 0);
    returns(
        'eq_164', () => m.call('eq', [$f32('BF800000'), $f32('80000001')]), 0);
    returns('eq_165', () => m.call('eq', [$f32('BF800000'), $f32('1')]), 0);
    returns(
        'eq_166', () => m.call('eq', [$f32('3F800000'), $f32('80000001')]), 0);
    returns('eq_167', () => m.call('eq', [$f32('3F800000'), $f32('1')]), 0);
    returns(
        'eq_168', () => m.call('eq', [$f32('BF800000'), $f32('80800000')]), 0);
    returns(
        'eq_169', () => m.call('eq', [$f32('BF800000'), $f32('800000')]), 0);
    returns(
        'eq_170', () => m.call('eq', [$f32('3F800000'), $f32('80800000')]), 0);
    returns(
        'eq_171', () => m.call('eq', [$f32('3F800000'), $f32('800000')]), 0);
    returns(
        'eq_172', () => m.call('eq', [$f32('BF800000'), $f32('BF000000')]), 0);
    returns(
        'eq_173', () => m.call('eq', [$f32('BF800000'), $f32('3F000000')]), 0);
    returns(
        'eq_174', () => m.call('eq', [$f32('3F800000'), $f32('BF000000')]), 0);
    returns(
        'eq_175', () => m.call('eq', [$f32('3F800000'), $f32('3F000000')]), 0);
    returns('eq_176', () => m.call('eq', [$f32('BF800000'), $f32('BF800000')]),
        0x1);
    returns(
        'eq_177', () => m.call('eq', [$f32('BF800000'), $f32('3F800000')]), 0);
    returns(
        'eq_178', () => m.call('eq', [$f32('3F800000'), $f32('BF800000')]), 0);
    returns('eq_179', () => m.call('eq', [$f32('3F800000'), $f32('3F800000')]),
        0x1);
    returns(
        'eq_180', () => m.call('eq', [$f32('BF800000'), $f32('C0C90FDB')]), 0);
    returns(
        'eq_181', () => m.call('eq', [$f32('BF800000'), $f32('40C90FDB')]), 0);
    returns(
        'eq_182', () => m.call('eq', [$f32('3F800000'), $f32('C0C90FDB')]), 0);
    returns(
        'eq_183', () => m.call('eq', [$f32('3F800000'), $f32('40C90FDB')]), 0);
    returns(
        'eq_184', () => m.call('eq', [$f32('BF800000'), $f32('FF7FFFFF')]), 0);
    returns(
        'eq_185', () => m.call('eq', [$f32('BF800000'), $f32('7F7FFFFF')]), 0);
    returns(
        'eq_186', () => m.call('eq', [$f32('3F800000'), $f32('FF7FFFFF')]), 0);
    returns(
        'eq_187', () => m.call('eq', [$f32('3F800000'), $f32('7F7FFFFF')]), 0);
    returns(
        'eq_188', () => m.call('eq', [$f32('BF800000'), $f32('FF800000')]), 0);
    returns(
        'eq_189', () => m.call('eq', [$f32('BF800000'), $f32('7F800000')]), 0);
    returns(
        'eq_190', () => m.call('eq', [$f32('3F800000'), $f32('FF800000')]), 0);
    returns(
        'eq_191', () => m.call('eq', [$f32('3F800000'), $f32('7F800000')]), 0);
    returns(
        'eq_192', () => m.call('eq', [$f32('BF800000'), $f32('FFC00000')]), 0);
    returns(
        'eq_193', () => m.call('eq', [$f32('BF800000'), $f32('FFA00000')]), 0);
    returns(
        'eq_194', () => m.call('eq', [$f32('BF800000'), $f32('7FC00000')]), 0);
    returns(
        'eq_195', () => m.call('eq', [$f32('BF800000'), $f32('7FA00000')]), 0);
    returns(
        'eq_196', () => m.call('eq', [$f32('3F800000'), $f32('FFC00000')]), 0);
    returns(
        'eq_197', () => m.call('eq', [$f32('3F800000'), $f32('FFA00000')]), 0);
    returns(
        'eq_198', () => m.call('eq', [$f32('3F800000'), $f32('7FC00000')]), 0);
    returns(
        'eq_199', () => m.call('eq', [$f32('3F800000'), $f32('7FA00000')]), 0);
    returns(
        'eq_200', () => m.call('eq', [$f32('C0C90FDB'), $f32('80000000')]), 0);
    returns('eq_201', () => m.call('eq', [$f32('C0C90FDB'), $f32('0')]), 0);
    returns(
        'eq_202', () => m.call('eq', [$f32('40C90FDB'), $f32('80000000')]), 0);
    returns('eq_203', () => m.call('eq', [$f32('40C90FDB'), $f32('0')]), 0);
    returns(
        'eq_204', () => m.call('eq', [$f32('C0C90FDB'), $f32('80000001')]), 0);
    returns('eq_205', () => m.call('eq', [$f32('C0C90FDB'), $f32('1')]), 0);
    returns(
        'eq_206', () => m.call('eq', [$f32('40C90FDB'), $f32('80000001')]), 0);
    returns('eq_207', () => m.call('eq', [$f32('40C90FDB'), $f32('1')]), 0);
    returns(
        'eq_208', () => m.call('eq', [$f32('C0C90FDB'), $f32('80800000')]), 0);
    returns(
        'eq_209', () => m.call('eq', [$f32('C0C90FDB'), $f32('800000')]), 0);
    returns(
        'eq_210', () => m.call('eq', [$f32('40C90FDB'), $f32('80800000')]), 0);
    returns(
        'eq_211', () => m.call('eq', [$f32('40C90FDB'), $f32('800000')]), 0);
    returns(
        'eq_212', () => m.call('eq', [$f32('C0C90FDB'), $f32('BF000000')]), 0);
    returns(
        'eq_213', () => m.call('eq', [$f32('C0C90FDB'), $f32('3F000000')]), 0);
    returns(
        'eq_214', () => m.call('eq', [$f32('40C90FDB'), $f32('BF000000')]), 0);
    returns(
        'eq_215', () => m.call('eq', [$f32('40C90FDB'), $f32('3F000000')]), 0);
    returns(
        'eq_216', () => m.call('eq', [$f32('C0C90FDB'), $f32('BF800000')]), 0);
    returns(
        'eq_217', () => m.call('eq', [$f32('C0C90FDB'), $f32('3F800000')]), 0);
    returns(
        'eq_218', () => m.call('eq', [$f32('40C90FDB'), $f32('BF800000')]), 0);
    returns(
        'eq_219', () => m.call('eq', [$f32('40C90FDB'), $f32('3F800000')]), 0);
    returns('eq_220', () => m.call('eq', [$f32('C0C90FDB'), $f32('C0C90FDB')]),
        0x1);
    returns(
        'eq_221', () => m.call('eq', [$f32('C0C90FDB'), $f32('40C90FDB')]), 0);
    returns(
        'eq_222', () => m.call('eq', [$f32('40C90FDB'), $f32('C0C90FDB')]), 0);
    returns('eq_223', () => m.call('eq', [$f32('40C90FDB'), $f32('40C90FDB')]),
        0x1);
    returns(
        'eq_224', () => m.call('eq', [$f32('C0C90FDB'), $f32('FF7FFFFF')]), 0);
    returns(
        'eq_225', () => m.call('eq', [$f32('C0C90FDB'), $f32('7F7FFFFF')]), 0);
    returns(
        'eq_226', () => m.call('eq', [$f32('40C90FDB'), $f32('FF7FFFFF')]), 0);
    returns(
        'eq_227', () => m.call('eq', [$f32('40C90FDB'), $f32('7F7FFFFF')]), 0);
    returns(
        'eq_228', () => m.call('eq', [$f32('C0C90FDB'), $f32('FF800000')]), 0);
    returns(
        'eq_229', () => m.call('eq', [$f32('C0C90FDB'), $f32('7F800000')]), 0);
    returns(
        'eq_230', () => m.call('eq', [$f32('40C90FDB'), $f32('FF800000')]), 0);
    returns(
        'eq_231', () => m.call('eq', [$f32('40C90FDB'), $f32('7F800000')]), 0);
    returns(
        'eq_232', () => m.call('eq', [$f32('C0C90FDB'), $f32('FFC00000')]), 0);
    returns(
        'eq_233', () => m.call('eq', [$f32('C0C90FDB'), $f32('FFA00000')]), 0);
    returns(
        'eq_234', () => m.call('eq', [$f32('C0C90FDB'), $f32('7FC00000')]), 0);
    returns(
        'eq_235', () => m.call('eq', [$f32('C0C90FDB'), $f32('7FA00000')]), 0);
    returns(
        'eq_236', () => m.call('eq', [$f32('40C90FDB'), $f32('FFC00000')]), 0);
    returns(
        'eq_237', () => m.call('eq', [$f32('40C90FDB'), $f32('FFA00000')]), 0);
    returns(
        'eq_238', () => m.call('eq', [$f32('40C90FDB'), $f32('7FC00000')]), 0);
    returns(
        'eq_239', () => m.call('eq', [$f32('40C90FDB'), $f32('7FA00000')]), 0);
    returns(
        'eq_240', () => m.call('eq', [$f32('FF7FFFFF'), $f32('80000000')]), 0);
    returns('eq_241', () => m.call('eq', [$f32('FF7FFFFF'), $f32('0')]), 0);
    returns(
        'eq_242', () => m.call('eq', [$f32('7F7FFFFF'), $f32('80000000')]), 0);
    returns('eq_243', () => m.call('eq', [$f32('7F7FFFFF'), $f32('0')]), 0);
    returns(
        'eq_244', () => m.call('eq', [$f32('FF7FFFFF'), $f32('80000001')]), 0);
    returns('eq_245', () => m.call('eq', [$f32('FF7FFFFF'), $f32('1')]), 0);
    returns(
        'eq_246', () => m.call('eq', [$f32('7F7FFFFF'), $f32('80000001')]), 0);
    returns('eq_247', () => m.call('eq', [$f32('7F7FFFFF'), $f32('1')]), 0);
    returns(
        'eq_248', () => m.call('eq', [$f32('FF7FFFFF'), $f32('80800000')]), 0);
    returns(
        'eq_249', () => m.call('eq', [$f32('FF7FFFFF'), $f32('800000')]), 0);
    returns(
        'eq_250', () => m.call('eq', [$f32('7F7FFFFF'), $f32('80800000')]), 0);
    returns(
        'eq_251', () => m.call('eq', [$f32('7F7FFFFF'), $f32('800000')]), 0);
    returns(
        'eq_252', () => m.call('eq', [$f32('FF7FFFFF'), $f32('BF000000')]), 0);
    returns(
        'eq_253', () => m.call('eq', [$f32('FF7FFFFF'), $f32('3F000000')]), 0);
    returns(
        'eq_254', () => m.call('eq', [$f32('7F7FFFFF'), $f32('BF000000')]), 0);
    returns(
        'eq_255', () => m.call('eq', [$f32('7F7FFFFF'), $f32('3F000000')]), 0);
    returns(
        'eq_256', () => m.call('eq', [$f32('FF7FFFFF'), $f32('BF800000')]), 0);
    returns(
        'eq_257', () => m.call('eq', [$f32('FF7FFFFF'), $f32('3F800000')]), 0);
    returns(
        'eq_258', () => m.call('eq', [$f32('7F7FFFFF'), $f32('BF800000')]), 0);
    returns(
        'eq_259', () => m.call('eq', [$f32('7F7FFFFF'), $f32('3F800000')]), 0);
    returns(
        'eq_260', () => m.call('eq', [$f32('FF7FFFFF'), $f32('C0C90FDB')]), 0);
    returns(
        'eq_261', () => m.call('eq', [$f32('FF7FFFFF'), $f32('40C90FDB')]), 0);
    returns(
        'eq_262', () => m.call('eq', [$f32('7F7FFFFF'), $f32('C0C90FDB')]), 0);
    returns(
        'eq_263', () => m.call('eq', [$f32('7F7FFFFF'), $f32('40C90FDB')]), 0);
    returns('eq_264', () => m.call('eq', [$f32('FF7FFFFF'), $f32('FF7FFFFF')]),
        0x1);
    returns(
        'eq_265', () => m.call('eq', [$f32('FF7FFFFF'), $f32('7F7FFFFF')]), 0);
    returns(
        'eq_266', () => m.call('eq', [$f32('7F7FFFFF'), $f32('FF7FFFFF')]), 0);
    returns('eq_267', () => m.call('eq', [$f32('7F7FFFFF'), $f32('7F7FFFFF')]),
        0x1);
    returns(
        'eq_268', () => m.call('eq', [$f32('FF7FFFFF'), $f32('FF800000')]), 0);
    returns(
        'eq_269', () => m.call('eq', [$f32('FF7FFFFF'), $f32('7F800000')]), 0);
    returns(
        'eq_270', () => m.call('eq', [$f32('7F7FFFFF'), $f32('FF800000')]), 0);
    returns(
        'eq_271', () => m.call('eq', [$f32('7F7FFFFF'), $f32('7F800000')]), 0);
    returns(
        'eq_272', () => m.call('eq', [$f32('FF7FFFFF'), $f32('FFC00000')]), 0);
    returns(
        'eq_273', () => m.call('eq', [$f32('FF7FFFFF'), $f32('FFA00000')]), 0);
    returns(
        'eq_274', () => m.call('eq', [$f32('FF7FFFFF'), $f32('7FC00000')]), 0);
    returns(
        'eq_275', () => m.call('eq', [$f32('FF7FFFFF'), $f32('7FA00000')]), 0);
    returns(
        'eq_276', () => m.call('eq', [$f32('7F7FFFFF'), $f32('FFC00000')]), 0);
    returns(
        'eq_277', () => m.call('eq', [$f32('7F7FFFFF'), $f32('FFA00000')]), 0);
    returns(
        'eq_278', () => m.call('eq', [$f32('7F7FFFFF'), $f32('7FC00000')]), 0);
    returns(
        'eq_279', () => m.call('eq', [$f32('7F7FFFFF'), $f32('7FA00000')]), 0);
    returns(
        'eq_280', () => m.call('eq', [$f32('FF800000'), $f32('80000000')]), 0);
    returns('eq_281', () => m.call('eq', [$f32('FF800000'), $f32('0')]), 0);
    returns(
        'eq_282', () => m.call('eq', [$f32('7F800000'), $f32('80000000')]), 0);
    returns('eq_283', () => m.call('eq', [$f32('7F800000'), $f32('0')]), 0);
    returns(
        'eq_284', () => m.call('eq', [$f32('FF800000'), $f32('80000001')]), 0);
    returns('eq_285', () => m.call('eq', [$f32('FF800000'), $f32('1')]), 0);
    returns(
        'eq_286', () => m.call('eq', [$f32('7F800000'), $f32('80000001')]), 0);
    returns('eq_287', () => m.call('eq', [$f32('7F800000'), $f32('1')]), 0);
    returns(
        'eq_288', () => m.call('eq', [$f32('FF800000'), $f32('80800000')]), 0);
    returns(
        'eq_289', () => m.call('eq', [$f32('FF800000'), $f32('800000')]), 0);
    returns(
        'eq_290', () => m.call('eq', [$f32('7F800000'), $f32('80800000')]), 0);
    returns(
        'eq_291', () => m.call('eq', [$f32('7F800000'), $f32('800000')]), 0);
    returns(
        'eq_292', () => m.call('eq', [$f32('FF800000'), $f32('BF000000')]), 0);
    returns(
        'eq_293', () => m.call('eq', [$f32('FF800000'), $f32('3F000000')]), 0);
    returns(
        'eq_294', () => m.call('eq', [$f32('7F800000'), $f32('BF000000')]), 0);
    returns(
        'eq_295', () => m.call('eq', [$f32('7F800000'), $f32('3F000000')]), 0);
    returns(
        'eq_296', () => m.call('eq', [$f32('FF800000'), $f32('BF800000')]), 0);
    returns(
        'eq_297', () => m.call('eq', [$f32('FF800000'), $f32('3F800000')]), 0);
    returns(
        'eq_298', () => m.call('eq', [$f32('7F800000'), $f32('BF800000')]), 0);
    returns(
        'eq_299', () => m.call('eq', [$f32('7F800000'), $f32('3F800000')]), 0);
    returns(
        'eq_300', () => m.call('eq', [$f32('FF800000'), $f32('C0C90FDB')]), 0);
    returns(
        'eq_301', () => m.call('eq', [$f32('FF800000'), $f32('40C90FDB')]), 0);
    returns(
        'eq_302', () => m.call('eq', [$f32('7F800000'), $f32('C0C90FDB')]), 0);
    returns(
        'eq_303', () => m.call('eq', [$f32('7F800000'), $f32('40C90FDB')]), 0);
    returns(
        'eq_304', () => m.call('eq', [$f32('FF800000'), $f32('FF7FFFFF')]), 0);
    returns(
        'eq_305', () => m.call('eq', [$f32('FF800000'), $f32('7F7FFFFF')]), 0);
    returns(
        'eq_306', () => m.call('eq', [$f32('7F800000'), $f32('FF7FFFFF')]), 0);
    returns(
        'eq_307', () => m.call('eq', [$f32('7F800000'), $f32('7F7FFFFF')]), 0);
    returns('eq_308', () => m.call('eq', [$f32('FF800000'), $f32('FF800000')]),
        0x1);
    returns(
        'eq_309', () => m.call('eq', [$f32('FF800000'), $f32('7F800000')]), 0);
    returns(
        'eq_310', () => m.call('eq', [$f32('7F800000'), $f32('FF800000')]), 0);
    returns('eq_311', () => m.call('eq', [$f32('7F800000'), $f32('7F800000')]),
        0x1);
    returns(
        'eq_312', () => m.call('eq', [$f32('FF800000'), $f32('FFC00000')]), 0);
    returns(
        'eq_313', () => m.call('eq', [$f32('FF800000'), $f32('FFA00000')]), 0);
    returns(
        'eq_314', () => m.call('eq', [$f32('FF800000'), $f32('7FC00000')]), 0);
    returns(
        'eq_315', () => m.call('eq', [$f32('FF800000'), $f32('7FA00000')]), 0);
    returns(
        'eq_316', () => m.call('eq', [$f32('7F800000'), $f32('FFC00000')]), 0);
    returns(
        'eq_317', () => m.call('eq', [$f32('7F800000'), $f32('FFA00000')]), 0);
    returns(
        'eq_318', () => m.call('eq', [$f32('7F800000'), $f32('7FC00000')]), 0);
    returns(
        'eq_319', () => m.call('eq', [$f32('7F800000'), $f32('7FA00000')]), 0);
    returns(
        'eq_320', () => m.call('eq', [$f32('FFC00000'), $f32('80000000')]), 0);
    returns(
        'eq_321', () => m.call('eq', [$f32('FFA00000'), $f32('80000000')]), 0);
    returns('eq_322', () => m.call('eq', [$f32('FFC00000'), $f32('0')]), 0);
    returns('eq_323', () => m.call('eq', [$f32('FFA00000'), $f32('0')]), 0);
    returns(
        'eq_324', () => m.call('eq', [$f32('7FC00000'), $f32('80000000')]), 0);
    returns(
        'eq_325', () => m.call('eq', [$f32('7FA00000'), $f32('80000000')]), 0);
    returns('eq_326', () => m.call('eq', [$f32('7FC00000'), $f32('0')]), 0);
    returns('eq_327', () => m.call('eq', [$f32('7FA00000'), $f32('0')]), 0);
    returns(
        'eq_328', () => m.call('eq', [$f32('FFC00000'), $f32('80000001')]), 0);
    returns(
        'eq_329', () => m.call('eq', [$f32('FFA00000'), $f32('80000001')]), 0);
    returns('eq_330', () => m.call('eq', [$f32('FFC00000'), $f32('1')]), 0);
    returns('eq_331', () => m.call('eq', [$f32('FFA00000'), $f32('1')]), 0);
    returns(
        'eq_332', () => m.call('eq', [$f32('7FC00000'), $f32('80000001')]), 0);
    returns(
        'eq_333', () => m.call('eq', [$f32('7FA00000'), $f32('80000001')]), 0);
    returns('eq_334', () => m.call('eq', [$f32('7FC00000'), $f32('1')]), 0);
    returns('eq_335', () => m.call('eq', [$f32('7FA00000'), $f32('1')]), 0);
    returns(
        'eq_336', () => m.call('eq', [$f32('FFC00000'), $f32('80800000')]), 0);
    returns(
        'eq_337', () => m.call('eq', [$f32('FFA00000'), $f32('80800000')]), 0);
    returns(
        'eq_338', () => m.call('eq', [$f32('FFC00000'), $f32('800000')]), 0);
    returns(
        'eq_339', () => m.call('eq', [$f32('FFA00000'), $f32('800000')]), 0);
    returns(
        'eq_340', () => m.call('eq', [$f32('7FC00000'), $f32('80800000')]), 0);
    returns(
        'eq_341', () => m.call('eq', [$f32('7FA00000'), $f32('80800000')]), 0);
    returns(
        'eq_342', () => m.call('eq', [$f32('7FC00000'), $f32('800000')]), 0);
    returns(
        'eq_343', () => m.call('eq', [$f32('7FA00000'), $f32('800000')]), 0);
    returns(
        'eq_344', () => m.call('eq', [$f32('FFC00000'), $f32('BF000000')]), 0);
    returns(
        'eq_345', () => m.call('eq', [$f32('FFA00000'), $f32('BF000000')]), 0);
    returns(
        'eq_346', () => m.call('eq', [$f32('FFC00000'), $f32('3F000000')]), 0);
    returns(
        'eq_347', () => m.call('eq', [$f32('FFA00000'), $f32('3F000000')]), 0);
    returns(
        'eq_348', () => m.call('eq', [$f32('7FC00000'), $f32('BF000000')]), 0);
    returns(
        'eq_349', () => m.call('eq', [$f32('7FA00000'), $f32('BF000000')]), 0);
    returns(
        'eq_350', () => m.call('eq', [$f32('7FC00000'), $f32('3F000000')]), 0);
    returns(
        'eq_351', () => m.call('eq', [$f32('7FA00000'), $f32('3F000000')]), 0);
    returns(
        'eq_352', () => m.call('eq', [$f32('FFC00000'), $f32('BF800000')]), 0);
    returns(
        'eq_353', () => m.call('eq', [$f32('FFA00000'), $f32('BF800000')]), 0);
    returns(
        'eq_354', () => m.call('eq', [$f32('FFC00000'), $f32('3F800000')]), 0);
    returns(
        'eq_355', () => m.call('eq', [$f32('FFA00000'), $f32('3F800000')]), 0);
    returns(
        'eq_356', () => m.call('eq', [$f32('7FC00000'), $f32('BF800000')]), 0);
    returns(
        'eq_357', () => m.call('eq', [$f32('7FA00000'), $f32('BF800000')]), 0);
    returns(
        'eq_358', () => m.call('eq', [$f32('7FC00000'), $f32('3F800000')]), 0);
    returns(
        'eq_359', () => m.call('eq', [$f32('7FA00000'), $f32('3F800000')]), 0);
    returns(
        'eq_360', () => m.call('eq', [$f32('FFC00000'), $f32('C0C90FDB')]), 0);
    returns(
        'eq_361', () => m.call('eq', [$f32('FFA00000'), $f32('C0C90FDB')]), 0);
    returns(
        'eq_362', () => m.call('eq', [$f32('FFC00000'), $f32('40C90FDB')]), 0);
    returns(
        'eq_363', () => m.call('eq', [$f32('FFA00000'), $f32('40C90FDB')]), 0);
    returns(
        'eq_364', () => m.call('eq', [$f32('7FC00000'), $f32('C0C90FDB')]), 0);
    returns(
        'eq_365', () => m.call('eq', [$f32('7FA00000'), $f32('C0C90FDB')]), 0);
    returns(
        'eq_366', () => m.call('eq', [$f32('7FC00000'), $f32('40C90FDB')]), 0);
    returns(
        'eq_367', () => m.call('eq', [$f32('7FA00000'), $f32('40C90FDB')]), 0);
    returns(
        'eq_368', () => m.call('eq', [$f32('FFC00000'), $f32('FF7FFFFF')]), 0);
    returns(
        'eq_369', () => m.call('eq', [$f32('FFA00000'), $f32('FF7FFFFF')]), 0);
    returns(
        'eq_370', () => m.call('eq', [$f32('FFC00000'), $f32('7F7FFFFF')]), 0);
    returns(
        'eq_371', () => m.call('eq', [$f32('FFA00000'), $f32('7F7FFFFF')]), 0);
    returns(
        'eq_372', () => m.call('eq', [$f32('7FC00000'), $f32('FF7FFFFF')]), 0);
    returns(
        'eq_373', () => m.call('eq', [$f32('7FA00000'), $f32('FF7FFFFF')]), 0);
    returns(
        'eq_374', () => m.call('eq', [$f32('7FC00000'), $f32('7F7FFFFF')]), 0);
    returns(
        'eq_375', () => m.call('eq', [$f32('7FA00000'), $f32('7F7FFFFF')]), 0);
    returns(
        'eq_376', () => m.call('eq', [$f32('FFC00000'), $f32('FF800000')]), 0);
    returns(
        'eq_377', () => m.call('eq', [$f32('FFA00000'), $f32('FF800000')]), 0);
    returns(
        'eq_378', () => m.call('eq', [$f32('FFC00000'), $f32('7F800000')]), 0);
    returns(
        'eq_379', () => m.call('eq', [$f32('FFA00000'), $f32('7F800000')]), 0);
    returns(
        'eq_380', () => m.call('eq', [$f32('7FC00000'), $f32('FF800000')]), 0);
    returns(
        'eq_381', () => m.call('eq', [$f32('7FA00000'), $f32('FF800000')]), 0);
    returns(
        'eq_382', () => m.call('eq', [$f32('7FC00000'), $f32('7F800000')]), 0);
    returns(
        'eq_383', () => m.call('eq', [$f32('7FA00000'), $f32('7F800000')]), 0);
    returns(
        'eq_384', () => m.call('eq', [$f32('FFC00000'), $f32('FFC00000')]), 0);
    returns(
        'eq_385', () => m.call('eq', [$f32('FFA00000'), $f32('FFC00000')]), 0);
    returns(
        'eq_386', () => m.call('eq', [$f32('FFC00000'), $f32('FFA00000')]), 0);
    returns(
        'eq_387', () => m.call('eq', [$f32('FFA00000'), $f32('FFA00000')]), 0);
    returns(
        'eq_388', () => m.call('eq', [$f32('FFC00000'), $f32('7FC00000')]), 0);
    returns(
        'eq_389', () => m.call('eq', [$f32('FFA00000'), $f32('7FC00000')]), 0);
    returns(
        'eq_390', () => m.call('eq', [$f32('FFC00000'), $f32('7FA00000')]), 0);
    returns(
        'eq_391', () => m.call('eq', [$f32('FFA00000'), $f32('7FA00000')]), 0);
    returns(
        'eq_392', () => m.call('eq', [$f32('7FC00000'), $f32('FFC00000')]), 0);
    returns(
        'eq_393', () => m.call('eq', [$f32('7FA00000'), $f32('FFC00000')]), 0);
    returns(
        'eq_394', () => m.call('eq', [$f32('7FC00000'), $f32('FFA00000')]), 0);
    returns(
        'eq_395', () => m.call('eq', [$f32('7FA00000'), $f32('FFA00000')]), 0);
    returns(
        'eq_396', () => m.call('eq', [$f32('7FC00000'), $f32('7FC00000')]), 0);
    returns(
        'eq_397', () => m.call('eq', [$f32('7FA00000'), $f32('7FC00000')]), 0);
    returns(
        'eq_398', () => m.call('eq', [$f32('7FC00000'), $f32('7FA00000')]), 0);
    returns(
        'eq_399', () => m.call('eq', [$f32('7FA00000'), $f32('7FA00000')]), 0);
    returns(
        'ne_0', () => m.call('ne', [$f32('80000000'), $f32('80000000')]), 0);
    returns('ne_1', () => m.call('ne', [$f32('80000000'), $f32('0')]), 0);
    returns('ne_2', () => m.call('ne', [$f32('0'), $f32('80000000')]), 0);
    returns('ne_3', () => m.call('ne', [$f32('0'), $f32('0')]), 0);
    returns(
        'ne_4', () => m.call('ne', [$f32('80000000'), $f32('80000001')]), 0x1);
    returns('ne_5', () => m.call('ne', [$f32('80000000'), $f32('1')]), 0x1);
    returns('ne_6', () => m.call('ne', [$f32('0'), $f32('80000001')]), 0x1);
    returns('ne_7', () => m.call('ne', [$f32('0'), $f32('1')]), 0x1);
    returns(
        'ne_8', () => m.call('ne', [$f32('80000000'), $f32('80800000')]), 0x1);
    returns(
        'ne_9', () => m.call('ne', [$f32('80000000'), $f32('800000')]), 0x1);
    returns('ne_10', () => m.call('ne', [$f32('0'), $f32('80800000')]), 0x1);
    returns('ne_11', () => m.call('ne', [$f32('0'), $f32('800000')]), 0x1);
    returns(
        'ne_12', () => m.call('ne', [$f32('80000000'), $f32('BF000000')]), 0x1);
    returns(
        'ne_13', () => m.call('ne', [$f32('80000000'), $f32('3F000000')]), 0x1);
    returns('ne_14', () => m.call('ne', [$f32('0'), $f32('BF000000')]), 0x1);
    returns('ne_15', () => m.call('ne', [$f32('0'), $f32('3F000000')]), 0x1);
    returns(
        'ne_16', () => m.call('ne', [$f32('80000000'), $f32('BF800000')]), 0x1);
    returns(
        'ne_17', () => m.call('ne', [$f32('80000000'), $f32('3F800000')]), 0x1);
    returns('ne_18', () => m.call('ne', [$f32('0'), $f32('BF800000')]), 0x1);
    returns('ne_19', () => m.call('ne', [$f32('0'), $f32('3F800000')]), 0x1);
    returns(
        'ne_20', () => m.call('ne', [$f32('80000000'), $f32('C0C90FDB')]), 0x1);
    returns(
        'ne_21', () => m.call('ne', [$f32('80000000'), $f32('40C90FDB')]), 0x1);
    returns('ne_22', () => m.call('ne', [$f32('0'), $f32('C0C90FDB')]), 0x1);
    returns('ne_23', () => m.call('ne', [$f32('0'), $f32('40C90FDB')]), 0x1);
    returns(
        'ne_24', () => m.call('ne', [$f32('80000000'), $f32('FF7FFFFF')]), 0x1);
    returns(
        'ne_25', () => m.call('ne', [$f32('80000000'), $f32('7F7FFFFF')]), 0x1);
    returns('ne_26', () => m.call('ne', [$f32('0'), $f32('FF7FFFFF')]), 0x1);
    returns('ne_27', () => m.call('ne', [$f32('0'), $f32('7F7FFFFF')]), 0x1);
    returns(
        'ne_28', () => m.call('ne', [$f32('80000000'), $f32('FF800000')]), 0x1);
    returns(
        'ne_29', () => m.call('ne', [$f32('80000000'), $f32('7F800000')]), 0x1);
    returns('ne_30', () => m.call('ne', [$f32('0'), $f32('FF800000')]), 0x1);
    returns('ne_31', () => m.call('ne', [$f32('0'), $f32('7F800000')]), 0x1);
    returns(
        'ne_32', () => m.call('ne', [$f32('80000000'), $f32('FFC00000')]), 0x1);
    returns(
        'ne_33', () => m.call('ne', [$f32('80000000'), $f32('FFA00000')]), 0x1);
    returns(
        'ne_34', () => m.call('ne', [$f32('80000000'), $f32('7FC00000')]), 0x1);
    returns(
        'ne_35', () => m.call('ne', [$f32('80000000'), $f32('7FA00000')]), 0x1);
    returns('ne_36', () => m.call('ne', [$f32('0'), $f32('FFC00000')]), 0x1);
    returns('ne_37', () => m.call('ne', [$f32('0'), $f32('FFA00000')]), 0x1);
    returns('ne_38', () => m.call('ne', [$f32('0'), $f32('7FC00000')]), 0x1);
    returns('ne_39', () => m.call('ne', [$f32('0'), $f32('7FA00000')]), 0x1);
    returns(
        'ne_40', () => m.call('ne', [$f32('80000001'), $f32('80000000')]), 0x1);
    returns('ne_41', () => m.call('ne', [$f32('80000001'), $f32('0')]), 0x1);
    returns('ne_42', () => m.call('ne', [$f32('1'), $f32('80000000')]), 0x1);
    returns('ne_43', () => m.call('ne', [$f32('1'), $f32('0')]), 0x1);
    returns(
        'ne_44', () => m.call('ne', [$f32('80000001'), $f32('80000001')]), 0);
    returns('ne_45', () => m.call('ne', [$f32('80000001'), $f32('1')]), 0x1);
    returns('ne_46', () => m.call('ne', [$f32('1'), $f32('80000001')]), 0x1);
    returns('ne_47', () => m.call('ne', [$f32('1'), $f32('1')]), 0);
    returns(
        'ne_48', () => m.call('ne', [$f32('80000001'), $f32('80800000')]), 0x1);
    returns(
        'ne_49', () => m.call('ne', [$f32('80000001'), $f32('800000')]), 0x1);
    returns('ne_50', () => m.call('ne', [$f32('1'), $f32('80800000')]), 0x1);
    returns('ne_51', () => m.call('ne', [$f32('1'), $f32('800000')]), 0x1);
    returns(
        'ne_52', () => m.call('ne', [$f32('80000001'), $f32('BF000000')]), 0x1);
    returns(
        'ne_53', () => m.call('ne', [$f32('80000001'), $f32('3F000000')]), 0x1);
    returns('ne_54', () => m.call('ne', [$f32('1'), $f32('BF000000')]), 0x1);
    returns('ne_55', () => m.call('ne', [$f32('1'), $f32('3F000000')]), 0x1);
    returns(
        'ne_56', () => m.call('ne', [$f32('80000001'), $f32('BF800000')]), 0x1);
    returns(
        'ne_57', () => m.call('ne', [$f32('80000001'), $f32('3F800000')]), 0x1);
    returns('ne_58', () => m.call('ne', [$f32('1'), $f32('BF800000')]), 0x1);
    returns('ne_59', () => m.call('ne', [$f32('1'), $f32('3F800000')]), 0x1);
    returns(
        'ne_60', () => m.call('ne', [$f32('80000001'), $f32('C0C90FDB')]), 0x1);
    returns(
        'ne_61', () => m.call('ne', [$f32('80000001'), $f32('40C90FDB')]), 0x1);
    returns('ne_62', () => m.call('ne', [$f32('1'), $f32('C0C90FDB')]), 0x1);
    returns('ne_63', () => m.call('ne', [$f32('1'), $f32('40C90FDB')]), 0x1);
    returns(
        'ne_64', () => m.call('ne', [$f32('80000001'), $f32('FF7FFFFF')]), 0x1);
    returns(
        'ne_65', () => m.call('ne', [$f32('80000001'), $f32('7F7FFFFF')]), 0x1);
    returns('ne_66', () => m.call('ne', [$f32('1'), $f32('FF7FFFFF')]), 0x1);
    returns('ne_67', () => m.call('ne', [$f32('1'), $f32('7F7FFFFF')]), 0x1);
    returns(
        'ne_68', () => m.call('ne', [$f32('80000001'), $f32('FF800000')]), 0x1);
    returns(
        'ne_69', () => m.call('ne', [$f32('80000001'), $f32('7F800000')]), 0x1);
    returns('ne_70', () => m.call('ne', [$f32('1'), $f32('FF800000')]), 0x1);
    returns('ne_71', () => m.call('ne', [$f32('1'), $f32('7F800000')]), 0x1);
    returns(
        'ne_72', () => m.call('ne', [$f32('80000001'), $f32('FFC00000')]), 0x1);
    returns(
        'ne_73', () => m.call('ne', [$f32('80000001'), $f32('FFA00000')]), 0x1);
    returns(
        'ne_74', () => m.call('ne', [$f32('80000001'), $f32('7FC00000')]), 0x1);
    returns(
        'ne_75', () => m.call('ne', [$f32('80000001'), $f32('7FA00000')]), 0x1);
    returns('ne_76', () => m.call('ne', [$f32('1'), $f32('FFC00000')]), 0x1);
    returns('ne_77', () => m.call('ne', [$f32('1'), $f32('FFA00000')]), 0x1);
    returns('ne_78', () => m.call('ne', [$f32('1'), $f32('7FC00000')]), 0x1);
    returns('ne_79', () => m.call('ne', [$f32('1'), $f32('7FA00000')]), 0x1);
    returns(
        'ne_80', () => m.call('ne', [$f32('80800000'), $f32('80000000')]), 0x1);
    returns('ne_81', () => m.call('ne', [$f32('80800000'), $f32('0')]), 0x1);
    returns(
        'ne_82', () => m.call('ne', [$f32('800000'), $f32('80000000')]), 0x1);
    returns('ne_83', () => m.call('ne', [$f32('800000'), $f32('0')]), 0x1);
    returns(
        'ne_84', () => m.call('ne', [$f32('80800000'), $f32('80000001')]), 0x1);
    returns('ne_85', () => m.call('ne', [$f32('80800000'), $f32('1')]), 0x1);
    returns(
        'ne_86', () => m.call('ne', [$f32('800000'), $f32('80000001')]), 0x1);
    returns('ne_87', () => m.call('ne', [$f32('800000'), $f32('1')]), 0x1);
    returns(
        'ne_88', () => m.call('ne', [$f32('80800000'), $f32('80800000')]), 0);
    returns(
        'ne_89', () => m.call('ne', [$f32('80800000'), $f32('800000')]), 0x1);
    returns(
        'ne_90', () => m.call('ne', [$f32('800000'), $f32('80800000')]), 0x1);
    returns('ne_91', () => m.call('ne', [$f32('800000'), $f32('800000')]), 0);
    returns(
        'ne_92', () => m.call('ne', [$f32('80800000'), $f32('BF000000')]), 0x1);
    returns(
        'ne_93', () => m.call('ne', [$f32('80800000'), $f32('3F000000')]), 0x1);
    returns(
        'ne_94', () => m.call('ne', [$f32('800000'), $f32('BF000000')]), 0x1);
    returns(
        'ne_95', () => m.call('ne', [$f32('800000'), $f32('3F000000')]), 0x1);
    returns(
        'ne_96', () => m.call('ne', [$f32('80800000'), $f32('BF800000')]), 0x1);
    returns(
        'ne_97', () => m.call('ne', [$f32('80800000'), $f32('3F800000')]), 0x1);
    returns(
        'ne_98', () => m.call('ne', [$f32('800000'), $f32('BF800000')]), 0x1);
    returns(
        'ne_99', () => m.call('ne', [$f32('800000'), $f32('3F800000')]), 0x1);
    returns('ne_100', () => m.call('ne', [$f32('80800000'), $f32('C0C90FDB')]),
        0x1);
    returns('ne_101', () => m.call('ne', [$f32('80800000'), $f32('40C90FDB')]),
        0x1);
    returns(
        'ne_102', () => m.call('ne', [$f32('800000'), $f32('C0C90FDB')]), 0x1);
    returns(
        'ne_103', () => m.call('ne', [$f32('800000'), $f32('40C90FDB')]), 0x1);
    returns('ne_104', () => m.call('ne', [$f32('80800000'), $f32('FF7FFFFF')]),
        0x1);
    returns('ne_105', () => m.call('ne', [$f32('80800000'), $f32('7F7FFFFF')]),
        0x1);
    returns(
        'ne_106', () => m.call('ne', [$f32('800000'), $f32('FF7FFFFF')]), 0x1);
    returns(
        'ne_107', () => m.call('ne', [$f32('800000'), $f32('7F7FFFFF')]), 0x1);
    returns('ne_108', () => m.call('ne', [$f32('80800000'), $f32('FF800000')]),
        0x1);
    returns('ne_109', () => m.call('ne', [$f32('80800000'), $f32('7F800000')]),
        0x1);
    returns(
        'ne_110', () => m.call('ne', [$f32('800000'), $f32('FF800000')]), 0x1);
    returns(
        'ne_111', () => m.call('ne', [$f32('800000'), $f32('7F800000')]), 0x1);
    returns('ne_112', () => m.call('ne', [$f32('80800000'), $f32('FFC00000')]),
        0x1);
    returns('ne_113', () => m.call('ne', [$f32('80800000'), $f32('FFA00000')]),
        0x1);
    returns('ne_114', () => m.call('ne', [$f32('80800000'), $f32('7FC00000')]),
        0x1);
    returns('ne_115', () => m.call('ne', [$f32('80800000'), $f32('7FA00000')]),
        0x1);
    returns(
        'ne_116', () => m.call('ne', [$f32('800000'), $f32('FFC00000')]), 0x1);
    returns(
        'ne_117', () => m.call('ne', [$f32('800000'), $f32('FFA00000')]), 0x1);
    returns(
        'ne_118', () => m.call('ne', [$f32('800000'), $f32('7FC00000')]), 0x1);
    returns(
        'ne_119', () => m.call('ne', [$f32('800000'), $f32('7FA00000')]), 0x1);
    returns('ne_120', () => m.call('ne', [$f32('BF000000'), $f32('80000000')]),
        0x1);
    returns('ne_121', () => m.call('ne', [$f32('BF000000'), $f32('0')]), 0x1);
    returns('ne_122', () => m.call('ne', [$f32('3F000000'), $f32('80000000')]),
        0x1);
    returns('ne_123', () => m.call('ne', [$f32('3F000000'), $f32('0')]), 0x1);
    returns('ne_124', () => m.call('ne', [$f32('BF000000'), $f32('80000001')]),
        0x1);
    returns('ne_125', () => m.call('ne', [$f32('BF000000'), $f32('1')]), 0x1);
    returns('ne_126', () => m.call('ne', [$f32('3F000000'), $f32('80000001')]),
        0x1);
    returns('ne_127', () => m.call('ne', [$f32('3F000000'), $f32('1')]), 0x1);
    returns('ne_128', () => m.call('ne', [$f32('BF000000'), $f32('80800000')]),
        0x1);
    returns(
        'ne_129', () => m.call('ne', [$f32('BF000000'), $f32('800000')]), 0x1);
    returns('ne_130', () => m.call('ne', [$f32('3F000000'), $f32('80800000')]),
        0x1);
    returns(
        'ne_131', () => m.call('ne', [$f32('3F000000'), $f32('800000')]), 0x1);
    returns(
        'ne_132', () => m.call('ne', [$f32('BF000000'), $f32('BF000000')]), 0);
    returns('ne_133', () => m.call('ne', [$f32('BF000000'), $f32('3F000000')]),
        0x1);
    returns('ne_134', () => m.call('ne', [$f32('3F000000'), $f32('BF000000')]),
        0x1);
    returns(
        'ne_135', () => m.call('ne', [$f32('3F000000'), $f32('3F000000')]), 0);
    returns('ne_136', () => m.call('ne', [$f32('BF000000'), $f32('BF800000')]),
        0x1);
    returns('ne_137', () => m.call('ne', [$f32('BF000000'), $f32('3F800000')]),
        0x1);
    returns('ne_138', () => m.call('ne', [$f32('3F000000'), $f32('BF800000')]),
        0x1);
    returns('ne_139', () => m.call('ne', [$f32('3F000000'), $f32('3F800000')]),
        0x1);
    returns('ne_140', () => m.call('ne', [$f32('BF000000'), $f32('C0C90FDB')]),
        0x1);
    returns('ne_141', () => m.call('ne', [$f32('BF000000'), $f32('40C90FDB')]),
        0x1);
    returns('ne_142', () => m.call('ne', [$f32('3F000000'), $f32('C0C90FDB')]),
        0x1);
    returns('ne_143', () => m.call('ne', [$f32('3F000000'), $f32('40C90FDB')]),
        0x1);
    returns('ne_144', () => m.call('ne', [$f32('BF000000'), $f32('FF7FFFFF')]),
        0x1);
    returns('ne_145', () => m.call('ne', [$f32('BF000000'), $f32('7F7FFFFF')]),
        0x1);
    returns('ne_146', () => m.call('ne', [$f32('3F000000'), $f32('FF7FFFFF')]),
        0x1);
    returns('ne_147', () => m.call('ne', [$f32('3F000000'), $f32('7F7FFFFF')]),
        0x1);
    returns('ne_148', () => m.call('ne', [$f32('BF000000'), $f32('FF800000')]),
        0x1);
    returns('ne_149', () => m.call('ne', [$f32('BF000000'), $f32('7F800000')]),
        0x1);
    returns('ne_150', () => m.call('ne', [$f32('3F000000'), $f32('FF800000')]),
        0x1);
    returns('ne_151', () => m.call('ne', [$f32('3F000000'), $f32('7F800000')]),
        0x1);
    returns('ne_152', () => m.call('ne', [$f32('BF000000'), $f32('FFC00000')]),
        0x1);
    returns('ne_153', () => m.call('ne', [$f32('BF000000'), $f32('FFA00000')]),
        0x1);
    returns('ne_154', () => m.call('ne', [$f32('BF000000'), $f32('7FC00000')]),
        0x1);
    returns('ne_155', () => m.call('ne', [$f32('BF000000'), $f32('7FA00000')]),
        0x1);
    returns('ne_156', () => m.call('ne', [$f32('3F000000'), $f32('FFC00000')]),
        0x1);
    returns('ne_157', () => m.call('ne', [$f32('3F000000'), $f32('FFA00000')]),
        0x1);
    returns('ne_158', () => m.call('ne', [$f32('3F000000'), $f32('7FC00000')]),
        0x1);
    returns('ne_159', () => m.call('ne', [$f32('3F000000'), $f32('7FA00000')]),
        0x1);
    returns('ne_160', () => m.call('ne', [$f32('BF800000'), $f32('80000000')]),
        0x1);
    returns('ne_161', () => m.call('ne', [$f32('BF800000'), $f32('0')]), 0x1);
    returns('ne_162', () => m.call('ne', [$f32('3F800000'), $f32('80000000')]),
        0x1);
    returns('ne_163', () => m.call('ne', [$f32('3F800000'), $f32('0')]), 0x1);
    returns('ne_164', () => m.call('ne', [$f32('BF800000'), $f32('80000001')]),
        0x1);
    returns('ne_165', () => m.call('ne', [$f32('BF800000'), $f32('1')]), 0x1);
    returns('ne_166', () => m.call('ne', [$f32('3F800000'), $f32('80000001')]),
        0x1);
    returns('ne_167', () => m.call('ne', [$f32('3F800000'), $f32('1')]), 0x1);
    returns('ne_168', () => m.call('ne', [$f32('BF800000'), $f32('80800000')]),
        0x1);
    returns(
        'ne_169', () => m.call('ne', [$f32('BF800000'), $f32('800000')]), 0x1);
    returns('ne_170', () => m.call('ne', [$f32('3F800000'), $f32('80800000')]),
        0x1);
    returns(
        'ne_171', () => m.call('ne', [$f32('3F800000'), $f32('800000')]), 0x1);
    returns('ne_172', () => m.call('ne', [$f32('BF800000'), $f32('BF000000')]),
        0x1);
    returns('ne_173', () => m.call('ne', [$f32('BF800000'), $f32('3F000000')]),
        0x1);
    returns('ne_174', () => m.call('ne', [$f32('3F800000'), $f32('BF000000')]),
        0x1);
    returns('ne_175', () => m.call('ne', [$f32('3F800000'), $f32('3F000000')]),
        0x1);
    returns(
        'ne_176', () => m.call('ne', [$f32('BF800000'), $f32('BF800000')]), 0);
    returns('ne_177', () => m.call('ne', [$f32('BF800000'), $f32('3F800000')]),
        0x1);
    returns('ne_178', () => m.call('ne', [$f32('3F800000'), $f32('BF800000')]),
        0x1);
    returns(
        'ne_179', () => m.call('ne', [$f32('3F800000'), $f32('3F800000')]), 0);
    returns('ne_180', () => m.call('ne', [$f32('BF800000'), $f32('C0C90FDB')]),
        0x1);
    returns('ne_181', () => m.call('ne', [$f32('BF800000'), $f32('40C90FDB')]),
        0x1);
    returns('ne_182', () => m.call('ne', [$f32('3F800000'), $f32('C0C90FDB')]),
        0x1);
    returns('ne_183', () => m.call('ne', [$f32('3F800000'), $f32('40C90FDB')]),
        0x1);
    returns('ne_184', () => m.call('ne', [$f32('BF800000'), $f32('FF7FFFFF')]),
        0x1);
    returns('ne_185', () => m.call('ne', [$f32('BF800000'), $f32('7F7FFFFF')]),
        0x1);
    returns('ne_186', () => m.call('ne', [$f32('3F800000'), $f32('FF7FFFFF')]),
        0x1);
    returns('ne_187', () => m.call('ne', [$f32('3F800000'), $f32('7F7FFFFF')]),
        0x1);
    returns('ne_188', () => m.call('ne', [$f32('BF800000'), $f32('FF800000')]),
        0x1);
    returns('ne_189', () => m.call('ne', [$f32('BF800000'), $f32('7F800000')]),
        0x1);
    returns('ne_190', () => m.call('ne', [$f32('3F800000'), $f32('FF800000')]),
        0x1);
    returns('ne_191', () => m.call('ne', [$f32('3F800000'), $f32('7F800000')]),
        0x1);
    returns('ne_192', () => m.call('ne', [$f32('BF800000'), $f32('FFC00000')]),
        0x1);
    returns('ne_193', () => m.call('ne', [$f32('BF800000'), $f32('FFA00000')]),
        0x1);
    returns('ne_194', () => m.call('ne', [$f32('BF800000'), $f32('7FC00000')]),
        0x1);
    returns('ne_195', () => m.call('ne', [$f32('BF800000'), $f32('7FA00000')]),
        0x1);
    returns('ne_196', () => m.call('ne', [$f32('3F800000'), $f32('FFC00000')]),
        0x1);
    returns('ne_197', () => m.call('ne', [$f32('3F800000'), $f32('FFA00000')]),
        0x1);
    returns('ne_198', () => m.call('ne', [$f32('3F800000'), $f32('7FC00000')]),
        0x1);
    returns('ne_199', () => m.call('ne', [$f32('3F800000'), $f32('7FA00000')]),
        0x1);
    returns('ne_200', () => m.call('ne', [$f32('C0C90FDB'), $f32('80000000')]),
        0x1);
    returns('ne_201', () => m.call('ne', [$f32('C0C90FDB'), $f32('0')]), 0x1);
    returns('ne_202', () => m.call('ne', [$f32('40C90FDB'), $f32('80000000')]),
        0x1);
    returns('ne_203', () => m.call('ne', [$f32('40C90FDB'), $f32('0')]), 0x1);
    returns('ne_204', () => m.call('ne', [$f32('C0C90FDB'), $f32('80000001')]),
        0x1);
    returns('ne_205', () => m.call('ne', [$f32('C0C90FDB'), $f32('1')]), 0x1);
    returns('ne_206', () => m.call('ne', [$f32('40C90FDB'), $f32('80000001')]),
        0x1);
    returns('ne_207', () => m.call('ne', [$f32('40C90FDB'), $f32('1')]), 0x1);
    returns('ne_208', () => m.call('ne', [$f32('C0C90FDB'), $f32('80800000')]),
        0x1);
    returns(
        'ne_209', () => m.call('ne', [$f32('C0C90FDB'), $f32('800000')]), 0x1);
    returns('ne_210', () => m.call('ne', [$f32('40C90FDB'), $f32('80800000')]),
        0x1);
    returns(
        'ne_211', () => m.call('ne', [$f32('40C90FDB'), $f32('800000')]), 0x1);
    returns('ne_212', () => m.call('ne', [$f32('C0C90FDB'), $f32('BF000000')]),
        0x1);
    returns('ne_213', () => m.call('ne', [$f32('C0C90FDB'), $f32('3F000000')]),
        0x1);
    returns('ne_214', () => m.call('ne', [$f32('40C90FDB'), $f32('BF000000')]),
        0x1);
    returns('ne_215', () => m.call('ne', [$f32('40C90FDB'), $f32('3F000000')]),
        0x1);
    returns('ne_216', () => m.call('ne', [$f32('C0C90FDB'), $f32('BF800000')]),
        0x1);
    returns('ne_217', () => m.call('ne', [$f32('C0C90FDB'), $f32('3F800000')]),
        0x1);
    returns('ne_218', () => m.call('ne', [$f32('40C90FDB'), $f32('BF800000')]),
        0x1);
    returns('ne_219', () => m.call('ne', [$f32('40C90FDB'), $f32('3F800000')]),
        0x1);
    returns(
        'ne_220', () => m.call('ne', [$f32('C0C90FDB'), $f32('C0C90FDB')]), 0);
    returns('ne_221', () => m.call('ne', [$f32('C0C90FDB'), $f32('40C90FDB')]),
        0x1);
    returns('ne_222', () => m.call('ne', [$f32('40C90FDB'), $f32('C0C90FDB')]),
        0x1);
    returns(
        'ne_223', () => m.call('ne', [$f32('40C90FDB'), $f32('40C90FDB')]), 0);
    returns('ne_224', () => m.call('ne', [$f32('C0C90FDB'), $f32('FF7FFFFF')]),
        0x1);
    returns('ne_225', () => m.call('ne', [$f32('C0C90FDB'), $f32('7F7FFFFF')]),
        0x1);
    returns('ne_226', () => m.call('ne', [$f32('40C90FDB'), $f32('FF7FFFFF')]),
        0x1);
    returns('ne_227', () => m.call('ne', [$f32('40C90FDB'), $f32('7F7FFFFF')]),
        0x1);
    returns('ne_228', () => m.call('ne', [$f32('C0C90FDB'), $f32('FF800000')]),
        0x1);
    returns('ne_229', () => m.call('ne', [$f32('C0C90FDB'), $f32('7F800000')]),
        0x1);
    returns('ne_230', () => m.call('ne', [$f32('40C90FDB'), $f32('FF800000')]),
        0x1);
    returns('ne_231', () => m.call('ne', [$f32('40C90FDB'), $f32('7F800000')]),
        0x1);
    returns('ne_232', () => m.call('ne', [$f32('C0C90FDB'), $f32('FFC00000')]),
        0x1);
    returns('ne_233', () => m.call('ne', [$f32('C0C90FDB'), $f32('FFA00000')]),
        0x1);
    returns('ne_234', () => m.call('ne', [$f32('C0C90FDB'), $f32('7FC00000')]),
        0x1);
    returns('ne_235', () => m.call('ne', [$f32('C0C90FDB'), $f32('7FA00000')]),
        0x1);
    returns('ne_236', () => m.call('ne', [$f32('40C90FDB'), $f32('FFC00000')]),
        0x1);
    returns('ne_237', () => m.call('ne', [$f32('40C90FDB'), $f32('FFA00000')]),
        0x1);
    returns('ne_238', () => m.call('ne', [$f32('40C90FDB'), $f32('7FC00000')]),
        0x1);
    returns('ne_239', () => m.call('ne', [$f32('40C90FDB'), $f32('7FA00000')]),
        0x1);
    returns('ne_240', () => m.call('ne', [$f32('FF7FFFFF'), $f32('80000000')]),
        0x1);
    returns('ne_241', () => m.call('ne', [$f32('FF7FFFFF'), $f32('0')]), 0x1);
    returns('ne_242', () => m.call('ne', [$f32('7F7FFFFF'), $f32('80000000')]),
        0x1);
    returns('ne_243', () => m.call('ne', [$f32('7F7FFFFF'), $f32('0')]), 0x1);
    returns('ne_244', () => m.call('ne', [$f32('FF7FFFFF'), $f32('80000001')]),
        0x1);
    returns('ne_245', () => m.call('ne', [$f32('FF7FFFFF'), $f32('1')]), 0x1);
    returns('ne_246', () => m.call('ne', [$f32('7F7FFFFF'), $f32('80000001')]),
        0x1);
    returns('ne_247', () => m.call('ne', [$f32('7F7FFFFF'), $f32('1')]), 0x1);
    returns('ne_248', () => m.call('ne', [$f32('FF7FFFFF'), $f32('80800000')]),
        0x1);
    returns(
        'ne_249', () => m.call('ne', [$f32('FF7FFFFF'), $f32('800000')]), 0x1);
    returns('ne_250', () => m.call('ne', [$f32('7F7FFFFF'), $f32('80800000')]),
        0x1);
    returns(
        'ne_251', () => m.call('ne', [$f32('7F7FFFFF'), $f32('800000')]), 0x1);
    returns('ne_252', () => m.call('ne', [$f32('FF7FFFFF'), $f32('BF000000')]),
        0x1);
    returns('ne_253', () => m.call('ne', [$f32('FF7FFFFF'), $f32('3F000000')]),
        0x1);
    returns('ne_254', () => m.call('ne', [$f32('7F7FFFFF'), $f32('BF000000')]),
        0x1);
    returns('ne_255', () => m.call('ne', [$f32('7F7FFFFF'), $f32('3F000000')]),
        0x1);
    returns('ne_256', () => m.call('ne', [$f32('FF7FFFFF'), $f32('BF800000')]),
        0x1);
    returns('ne_257', () => m.call('ne', [$f32('FF7FFFFF'), $f32('3F800000')]),
        0x1);
    returns('ne_258', () => m.call('ne', [$f32('7F7FFFFF'), $f32('BF800000')]),
        0x1);
    returns('ne_259', () => m.call('ne', [$f32('7F7FFFFF'), $f32('3F800000')]),
        0x1);
    returns('ne_260', () => m.call('ne', [$f32('FF7FFFFF'), $f32('C0C90FDB')]),
        0x1);
    returns('ne_261', () => m.call('ne', [$f32('FF7FFFFF'), $f32('40C90FDB')]),
        0x1);
    returns('ne_262', () => m.call('ne', [$f32('7F7FFFFF'), $f32('C0C90FDB')]),
        0x1);
    returns('ne_263', () => m.call('ne', [$f32('7F7FFFFF'), $f32('40C90FDB')]),
        0x1);
    returns(
        'ne_264', () => m.call('ne', [$f32('FF7FFFFF'), $f32('FF7FFFFF')]), 0);
    returns('ne_265', () => m.call('ne', [$f32('FF7FFFFF'), $f32('7F7FFFFF')]),
        0x1);
    returns('ne_266', () => m.call('ne', [$f32('7F7FFFFF'), $f32('FF7FFFFF')]),
        0x1);
    returns(
        'ne_267', () => m.call('ne', [$f32('7F7FFFFF'), $f32('7F7FFFFF')]), 0);
    returns('ne_268', () => m.call('ne', [$f32('FF7FFFFF'), $f32('FF800000')]),
        0x1);
    returns('ne_269', () => m.call('ne', [$f32('FF7FFFFF'), $f32('7F800000')]),
        0x1);
    returns('ne_270', () => m.call('ne', [$f32('7F7FFFFF'), $f32('FF800000')]),
        0x1);
    returns('ne_271', () => m.call('ne', [$f32('7F7FFFFF'), $f32('7F800000')]),
        0x1);
    returns('ne_272', () => m.call('ne', [$f32('FF7FFFFF'), $f32('FFC00000')]),
        0x1);
    returns('ne_273', () => m.call('ne', [$f32('FF7FFFFF'), $f32('FFA00000')]),
        0x1);
    returns('ne_274', () => m.call('ne', [$f32('FF7FFFFF'), $f32('7FC00000')]),
        0x1);
    returns('ne_275', () => m.call('ne', [$f32('FF7FFFFF'), $f32('7FA00000')]),
        0x1);
    returns('ne_276', () => m.call('ne', [$f32('7F7FFFFF'), $f32('FFC00000')]),
        0x1);
    returns('ne_277', () => m.call('ne', [$f32('7F7FFFFF'), $f32('FFA00000')]),
        0x1);
    returns('ne_278', () => m.call('ne', [$f32('7F7FFFFF'), $f32('7FC00000')]),
        0x1);
    returns('ne_279', () => m.call('ne', [$f32('7F7FFFFF'), $f32('7FA00000')]),
        0x1);
    returns('ne_280', () => m.call('ne', [$f32('FF800000'), $f32('80000000')]),
        0x1);
    returns('ne_281', () => m.call('ne', [$f32('FF800000'), $f32('0')]), 0x1);
    returns('ne_282', () => m.call('ne', [$f32('7F800000'), $f32('80000000')]),
        0x1);
    returns('ne_283', () => m.call('ne', [$f32('7F800000'), $f32('0')]), 0x1);
    returns('ne_284', () => m.call('ne', [$f32('FF800000'), $f32('80000001')]),
        0x1);
    returns('ne_285', () => m.call('ne', [$f32('FF800000'), $f32('1')]), 0x1);
    returns('ne_286', () => m.call('ne', [$f32('7F800000'), $f32('80000001')]),
        0x1);
    returns('ne_287', () => m.call('ne', [$f32('7F800000'), $f32('1')]), 0x1);
    returns('ne_288', () => m.call('ne', [$f32('FF800000'), $f32('80800000')]),
        0x1);
    returns(
        'ne_289', () => m.call('ne', [$f32('FF800000'), $f32('800000')]), 0x1);
    returns('ne_290', () => m.call('ne', [$f32('7F800000'), $f32('80800000')]),
        0x1);
    returns(
        'ne_291', () => m.call('ne', [$f32('7F800000'), $f32('800000')]), 0x1);
    returns('ne_292', () => m.call('ne', [$f32('FF800000'), $f32('BF000000')]),
        0x1);
    returns('ne_293', () => m.call('ne', [$f32('FF800000'), $f32('3F000000')]),
        0x1);
    returns('ne_294', () => m.call('ne', [$f32('7F800000'), $f32('BF000000')]),
        0x1);
    returns('ne_295', () => m.call('ne', [$f32('7F800000'), $f32('3F000000')]),
        0x1);
    returns('ne_296', () => m.call('ne', [$f32('FF800000'), $f32('BF800000')]),
        0x1);
    returns('ne_297', () => m.call('ne', [$f32('FF800000'), $f32('3F800000')]),
        0x1);
    returns('ne_298', () => m.call('ne', [$f32('7F800000'), $f32('BF800000')]),
        0x1);
    returns('ne_299', () => m.call('ne', [$f32('7F800000'), $f32('3F800000')]),
        0x1);
    returns('ne_300', () => m.call('ne', [$f32('FF800000'), $f32('C0C90FDB')]),
        0x1);
    returns('ne_301', () => m.call('ne', [$f32('FF800000'), $f32('40C90FDB')]),
        0x1);
    returns('ne_302', () => m.call('ne', [$f32('7F800000'), $f32('C0C90FDB')]),
        0x1);
    returns('ne_303', () => m.call('ne', [$f32('7F800000'), $f32('40C90FDB')]),
        0x1);
    returns('ne_304', () => m.call('ne', [$f32('FF800000'), $f32('FF7FFFFF')]),
        0x1);
    returns('ne_305', () => m.call('ne', [$f32('FF800000'), $f32('7F7FFFFF')]),
        0x1);
    returns('ne_306', () => m.call('ne', [$f32('7F800000'), $f32('FF7FFFFF')]),
        0x1);
    returns('ne_307', () => m.call('ne', [$f32('7F800000'), $f32('7F7FFFFF')]),
        0x1);
    returns(
        'ne_308', () => m.call('ne', [$f32('FF800000'), $f32('FF800000')]), 0);
    returns('ne_309', () => m.call('ne', [$f32('FF800000'), $f32('7F800000')]),
        0x1);
    returns('ne_310', () => m.call('ne', [$f32('7F800000'), $f32('FF800000')]),
        0x1);
    returns(
        'ne_311', () => m.call('ne', [$f32('7F800000'), $f32('7F800000')]), 0);
    returns('ne_312', () => m.call('ne', [$f32('FF800000'), $f32('FFC00000')]),
        0x1);
    returns('ne_313', () => m.call('ne', [$f32('FF800000'), $f32('FFA00000')]),
        0x1);
    returns('ne_314', () => m.call('ne', [$f32('FF800000'), $f32('7FC00000')]),
        0x1);
    returns('ne_315', () => m.call('ne', [$f32('FF800000'), $f32('7FA00000')]),
        0x1);
    returns('ne_316', () => m.call('ne', [$f32('7F800000'), $f32('FFC00000')]),
        0x1);
    returns('ne_317', () => m.call('ne', [$f32('7F800000'), $f32('FFA00000')]),
        0x1);
    returns('ne_318', () => m.call('ne', [$f32('7F800000'), $f32('7FC00000')]),
        0x1);
    returns('ne_319', () => m.call('ne', [$f32('7F800000'), $f32('7FA00000')]),
        0x1);
    returns('ne_320', () => m.call('ne', [$f32('FFC00000'), $f32('80000000')]),
        0x1);
    returns('ne_321', () => m.call('ne', [$f32('FFA00000'), $f32('80000000')]),
        0x1);
    returns('ne_322', () => m.call('ne', [$f32('FFC00000'), $f32('0')]), 0x1);
    returns('ne_323', () => m.call('ne', [$f32('FFA00000'), $f32('0')]), 0x1);
    returns('ne_324', () => m.call('ne', [$f32('7FC00000'), $f32('80000000')]),
        0x1);
    returns('ne_325', () => m.call('ne', [$f32('7FA00000'), $f32('80000000')]),
        0x1);
    returns('ne_326', () => m.call('ne', [$f32('7FC00000'), $f32('0')]), 0x1);
    returns('ne_327', () => m.call('ne', [$f32('7FA00000'), $f32('0')]), 0x1);
    returns('ne_328', () => m.call('ne', [$f32('FFC00000'), $f32('80000001')]),
        0x1);
    returns('ne_329', () => m.call('ne', [$f32('FFA00000'), $f32('80000001')]),
        0x1);
    returns('ne_330', () => m.call('ne', [$f32('FFC00000'), $f32('1')]), 0x1);
    returns('ne_331', () => m.call('ne', [$f32('FFA00000'), $f32('1')]), 0x1);
    returns('ne_332', () => m.call('ne', [$f32('7FC00000'), $f32('80000001')]),
        0x1);
    returns('ne_333', () => m.call('ne', [$f32('7FA00000'), $f32('80000001')]),
        0x1);
    returns('ne_334', () => m.call('ne', [$f32('7FC00000'), $f32('1')]), 0x1);
    returns('ne_335', () => m.call('ne', [$f32('7FA00000'), $f32('1')]), 0x1);
    returns('ne_336', () => m.call('ne', [$f32('FFC00000'), $f32('80800000')]),
        0x1);
    returns('ne_337', () => m.call('ne', [$f32('FFA00000'), $f32('80800000')]),
        0x1);
    returns(
        'ne_338', () => m.call('ne', [$f32('FFC00000'), $f32('800000')]), 0x1);
    returns(
        'ne_339', () => m.call('ne', [$f32('FFA00000'), $f32('800000')]), 0x1);
    returns('ne_340', () => m.call('ne', [$f32('7FC00000'), $f32('80800000')]),
        0x1);
    returns('ne_341', () => m.call('ne', [$f32('7FA00000'), $f32('80800000')]),
        0x1);
    returns(
        'ne_342', () => m.call('ne', [$f32('7FC00000'), $f32('800000')]), 0x1);
    returns(
        'ne_343', () => m.call('ne', [$f32('7FA00000'), $f32('800000')]), 0x1);
    returns('ne_344', () => m.call('ne', [$f32('FFC00000'), $f32('BF000000')]),
        0x1);
    returns('ne_345', () => m.call('ne', [$f32('FFA00000'), $f32('BF000000')]),
        0x1);
    returns('ne_346', () => m.call('ne', [$f32('FFC00000'), $f32('3F000000')]),
        0x1);
    returns('ne_347', () => m.call('ne', [$f32('FFA00000'), $f32('3F000000')]),
        0x1);
    returns('ne_348', () => m.call('ne', [$f32('7FC00000'), $f32('BF000000')]),
        0x1);
    returns('ne_349', () => m.call('ne', [$f32('7FA00000'), $f32('BF000000')]),
        0x1);
    returns('ne_350', () => m.call('ne', [$f32('7FC00000'), $f32('3F000000')]),
        0x1);
    returns('ne_351', () => m.call('ne', [$f32('7FA00000'), $f32('3F000000')]),
        0x1);
    returns('ne_352', () => m.call('ne', [$f32('FFC00000'), $f32('BF800000')]),
        0x1);
    returns('ne_353', () => m.call('ne', [$f32('FFA00000'), $f32('BF800000')]),
        0x1);
    returns('ne_354', () => m.call('ne', [$f32('FFC00000'), $f32('3F800000')]),
        0x1);
    returns('ne_355', () => m.call('ne', [$f32('FFA00000'), $f32('3F800000')]),
        0x1);
    returns('ne_356', () => m.call('ne', [$f32('7FC00000'), $f32('BF800000')]),
        0x1);
    returns('ne_357', () => m.call('ne', [$f32('7FA00000'), $f32('BF800000')]),
        0x1);
    returns('ne_358', () => m.call('ne', [$f32('7FC00000'), $f32('3F800000')]),
        0x1);
    returns('ne_359', () => m.call('ne', [$f32('7FA00000'), $f32('3F800000')]),
        0x1);
    returns('ne_360', () => m.call('ne', [$f32('FFC00000'), $f32('C0C90FDB')]),
        0x1);
    returns('ne_361', () => m.call('ne', [$f32('FFA00000'), $f32('C0C90FDB')]),
        0x1);
    returns('ne_362', () => m.call('ne', [$f32('FFC00000'), $f32('40C90FDB')]),
        0x1);
    returns('ne_363', () => m.call('ne', [$f32('FFA00000'), $f32('40C90FDB')]),
        0x1);
    returns('ne_364', () => m.call('ne', [$f32('7FC00000'), $f32('C0C90FDB')]),
        0x1);
    returns('ne_365', () => m.call('ne', [$f32('7FA00000'), $f32('C0C90FDB')]),
        0x1);
    returns('ne_366', () => m.call('ne', [$f32('7FC00000'), $f32('40C90FDB')]),
        0x1);
    returns('ne_367', () => m.call('ne', [$f32('7FA00000'), $f32('40C90FDB')]),
        0x1);
    returns('ne_368', () => m.call('ne', [$f32('FFC00000'), $f32('FF7FFFFF')]),
        0x1);
    returns('ne_369', () => m.call('ne', [$f32('FFA00000'), $f32('FF7FFFFF')]),
        0x1);
    returns('ne_370', () => m.call('ne', [$f32('FFC00000'), $f32('7F7FFFFF')]),
        0x1);
    returns('ne_371', () => m.call('ne', [$f32('FFA00000'), $f32('7F7FFFFF')]),
        0x1);
    returns('ne_372', () => m.call('ne', [$f32('7FC00000'), $f32('FF7FFFFF')]),
        0x1);
    returns('ne_373', () => m.call('ne', [$f32('7FA00000'), $f32('FF7FFFFF')]),
        0x1);
    returns('ne_374', () => m.call('ne', [$f32('7FC00000'), $f32('7F7FFFFF')]),
        0x1);
    returns('ne_375', () => m.call('ne', [$f32('7FA00000'), $f32('7F7FFFFF')]),
        0x1);
    returns('ne_376', () => m.call('ne', [$f32('FFC00000'), $f32('FF800000')]),
        0x1);
    returns('ne_377', () => m.call('ne', [$f32('FFA00000'), $f32('FF800000')]),
        0x1);
    returns('ne_378', () => m.call('ne', [$f32('FFC00000'), $f32('7F800000')]),
        0x1);
    returns('ne_379', () => m.call('ne', [$f32('FFA00000'), $f32('7F800000')]),
        0x1);
    returns('ne_380', () => m.call('ne', [$f32('7FC00000'), $f32('FF800000')]),
        0x1);
    returns('ne_381', () => m.call('ne', [$f32('7FA00000'), $f32('FF800000')]),
        0x1);
    returns('ne_382', () => m.call('ne', [$f32('7FC00000'), $f32('7F800000')]),
        0x1);
    returns('ne_383', () => m.call('ne', [$f32('7FA00000'), $f32('7F800000')]),
        0x1);
    returns('ne_384', () => m.call('ne', [$f32('FFC00000'), $f32('FFC00000')]),
        0x1);
    returns('ne_385', () => m.call('ne', [$f32('FFA00000'), $f32('FFC00000')]),
        0x1);
    returns('ne_386', () => m.call('ne', [$f32('FFC00000'), $f32('FFA00000')]),
        0x1);
    returns('ne_387', () => m.call('ne', [$f32('FFA00000'), $f32('FFA00000')]),
        0x1);
    returns('ne_388', () => m.call('ne', [$f32('FFC00000'), $f32('7FC00000')]),
        0x1);
    returns('ne_389', () => m.call('ne', [$f32('FFA00000'), $f32('7FC00000')]),
        0x1);
    returns('ne_390', () => m.call('ne', [$f32('FFC00000'), $f32('7FA00000')]),
        0x1);
    returns('ne_391', () => m.call('ne', [$f32('FFA00000'), $f32('7FA00000')]),
        0x1);
    returns('ne_392', () => m.call('ne', [$f32('7FC00000'), $f32('FFC00000')]),
        0x1);
    returns('ne_393', () => m.call('ne', [$f32('7FA00000'), $f32('FFC00000')]),
        0x1);
    returns('ne_394', () => m.call('ne', [$f32('7FC00000'), $f32('FFA00000')]),
        0x1);
    returns('ne_395', () => m.call('ne', [$f32('7FA00000'), $f32('FFA00000')]),
        0x1);
    returns('ne_396', () => m.call('ne', [$f32('7FC00000'), $f32('7FC00000')]),
        0x1);
    returns('ne_397', () => m.call('ne', [$f32('7FA00000'), $f32('7FC00000')]),
        0x1);
    returns('ne_398', () => m.call('ne', [$f32('7FC00000'), $f32('7FA00000')]),
        0x1);
    returns('ne_399', () => m.call('ne', [$f32('7FA00000'), $f32('7FA00000')]),
        0x1);
    returns(
        'lt_0', () => m.call('lt', [$f32('80000000'), $f32('80000000')]), 0);
    returns('lt_1', () => m.call('lt', [$f32('80000000'), $f32('0')]), 0);
    returns('lt_2', () => m.call('lt', [$f32('0'), $f32('80000000')]), 0);
    returns('lt_3', () => m.call('lt', [$f32('0'), $f32('0')]), 0);
    returns(
        'lt_4', () => m.call('lt', [$f32('80000000'), $f32('80000001')]), 0);
    returns('lt_5', () => m.call('lt', [$f32('80000000'), $f32('1')]), 0x1);
    returns('lt_6', () => m.call('lt', [$f32('0'), $f32('80000001')]), 0);
    returns('lt_7', () => m.call('lt', [$f32('0'), $f32('1')]), 0x1);
    returns(
        'lt_8', () => m.call('lt', [$f32('80000000'), $f32('80800000')]), 0);
    returns(
        'lt_9', () => m.call('lt', [$f32('80000000'), $f32('800000')]), 0x1);
    returns('lt_10', () => m.call('lt', [$f32('0'), $f32('80800000')]), 0);
    returns('lt_11', () => m.call('lt', [$f32('0'), $f32('800000')]), 0x1);
    returns(
        'lt_12', () => m.call('lt', [$f32('80000000'), $f32('BF000000')]), 0);
    returns(
        'lt_13', () => m.call('lt', [$f32('80000000'), $f32('3F000000')]), 0x1);
    returns('lt_14', () => m.call('lt', [$f32('0'), $f32('BF000000')]), 0);
    returns('lt_15', () => m.call('lt', [$f32('0'), $f32('3F000000')]), 0x1);
    returns(
        'lt_16', () => m.call('lt', [$f32('80000000'), $f32('BF800000')]), 0);
    returns(
        'lt_17', () => m.call('lt', [$f32('80000000'), $f32('3F800000')]), 0x1);
    returns('lt_18', () => m.call('lt', [$f32('0'), $f32('BF800000')]), 0);
    returns('lt_19', () => m.call('lt', [$f32('0'), $f32('3F800000')]), 0x1);
    returns(
        'lt_20', () => m.call('lt', [$f32('80000000'), $f32('C0C90FDB')]), 0);
    returns(
        'lt_21', () => m.call('lt', [$f32('80000000'), $f32('40C90FDB')]), 0x1);
    returns('lt_22', () => m.call('lt', [$f32('0'), $f32('C0C90FDB')]), 0);
    returns('lt_23', () => m.call('lt', [$f32('0'), $f32('40C90FDB')]), 0x1);
    returns(
        'lt_24', () => m.call('lt', [$f32('80000000'), $f32('FF7FFFFF')]), 0);
    returns(
        'lt_25', () => m.call('lt', [$f32('80000000'), $f32('7F7FFFFF')]), 0x1);
    returns('lt_26', () => m.call('lt', [$f32('0'), $f32('FF7FFFFF')]), 0);
    returns('lt_27', () => m.call('lt', [$f32('0'), $f32('7F7FFFFF')]), 0x1);
    returns(
        'lt_28', () => m.call('lt', [$f32('80000000'), $f32('FF800000')]), 0);
    returns(
        'lt_29', () => m.call('lt', [$f32('80000000'), $f32('7F800000')]), 0x1);
    returns('lt_30', () => m.call('lt', [$f32('0'), $f32('FF800000')]), 0);
    returns('lt_31', () => m.call('lt', [$f32('0'), $f32('7F800000')]), 0x1);
    returns(
        'lt_32', () => m.call('lt', [$f32('80000000'), $f32('FFC00000')]), 0);
    returns(
        'lt_33', () => m.call('lt', [$f32('80000000'), $f32('FFA00000')]), 0);
    returns(
        'lt_34', () => m.call('lt', [$f32('80000000'), $f32('7FC00000')]), 0);
    returns(
        'lt_35', () => m.call('lt', [$f32('80000000'), $f32('7FA00000')]), 0);
    returns('lt_36', () => m.call('lt', [$f32('0'), $f32('FFC00000')]), 0);
    returns('lt_37', () => m.call('lt', [$f32('0'), $f32('FFA00000')]), 0);
    returns('lt_38', () => m.call('lt', [$f32('0'), $f32('7FC00000')]), 0);
    returns('lt_39', () => m.call('lt', [$f32('0'), $f32('7FA00000')]), 0);
    returns(
        'lt_40', () => m.call('lt', [$f32('80000001'), $f32('80000000')]), 0x1);
    returns('lt_41', () => m.call('lt', [$f32('80000001'), $f32('0')]), 0x1);
    returns('lt_42', () => m.call('lt', [$f32('1'), $f32('80000000')]), 0);
    returns('lt_43', () => m.call('lt', [$f32('1'), $f32('0')]), 0);
    returns(
        'lt_44', () => m.call('lt', [$f32('80000001'), $f32('80000001')]), 0);
    returns('lt_45', () => m.call('lt', [$f32('80000001'), $f32('1')]), 0x1);
    returns('lt_46', () => m.call('lt', [$f32('1'), $f32('80000001')]), 0);
    returns('lt_47', () => m.call('lt', [$f32('1'), $f32('1')]), 0);
    returns(
        'lt_48', () => m.call('lt', [$f32('80000001'), $f32('80800000')]), 0);
    returns(
        'lt_49', () => m.call('lt', [$f32('80000001'), $f32('800000')]), 0x1);
    returns('lt_50', () => m.call('lt', [$f32('1'), $f32('80800000')]), 0);
    returns('lt_51', () => m.call('lt', [$f32('1'), $f32('800000')]), 0x1);
    returns(
        'lt_52', () => m.call('lt', [$f32('80000001'), $f32('BF000000')]), 0);
    returns(
        'lt_53', () => m.call('lt', [$f32('80000001'), $f32('3F000000')]), 0x1);
    returns('lt_54', () => m.call('lt', [$f32('1'), $f32('BF000000')]), 0);
    returns('lt_55', () => m.call('lt', [$f32('1'), $f32('3F000000')]), 0x1);
    returns(
        'lt_56', () => m.call('lt', [$f32('80000001'), $f32('BF800000')]), 0);
    returns(
        'lt_57', () => m.call('lt', [$f32('80000001'), $f32('3F800000')]), 0x1);
    returns('lt_58', () => m.call('lt', [$f32('1'), $f32('BF800000')]), 0);
    returns('lt_59', () => m.call('lt', [$f32('1'), $f32('3F800000')]), 0x1);
    returns(
        'lt_60', () => m.call('lt', [$f32('80000001'), $f32('C0C90FDB')]), 0);
    returns(
        'lt_61', () => m.call('lt', [$f32('80000001'), $f32('40C90FDB')]), 0x1);
    returns('lt_62', () => m.call('lt', [$f32('1'), $f32('C0C90FDB')]), 0);
    returns('lt_63', () => m.call('lt', [$f32('1'), $f32('40C90FDB')]), 0x1);
    returns(
        'lt_64', () => m.call('lt', [$f32('80000001'), $f32('FF7FFFFF')]), 0);
    returns(
        'lt_65', () => m.call('lt', [$f32('80000001'), $f32('7F7FFFFF')]), 0x1);
    returns('lt_66', () => m.call('lt', [$f32('1'), $f32('FF7FFFFF')]), 0);
    returns('lt_67', () => m.call('lt', [$f32('1'), $f32('7F7FFFFF')]), 0x1);
    returns(
        'lt_68', () => m.call('lt', [$f32('80000001'), $f32('FF800000')]), 0);
    returns(
        'lt_69', () => m.call('lt', [$f32('80000001'), $f32('7F800000')]), 0x1);
    returns('lt_70', () => m.call('lt', [$f32('1'), $f32('FF800000')]), 0);
    returns('lt_71', () => m.call('lt', [$f32('1'), $f32('7F800000')]), 0x1);
    returns(
        'lt_72', () => m.call('lt', [$f32('80000001'), $f32('FFC00000')]), 0);
    returns(
        'lt_73', () => m.call('lt', [$f32('80000001'), $f32('FFA00000')]), 0);
    returns(
        'lt_74', () => m.call('lt', [$f32('80000001'), $f32('7FC00000')]), 0);
    returns(
        'lt_75', () => m.call('lt', [$f32('80000001'), $f32('7FA00000')]), 0);
    returns('lt_76', () => m.call('lt', [$f32('1'), $f32('FFC00000')]), 0);
    returns('lt_77', () => m.call('lt', [$f32('1'), $f32('FFA00000')]), 0);
    returns('lt_78', () => m.call('lt', [$f32('1'), $f32('7FC00000')]), 0);
    returns('lt_79', () => m.call('lt', [$f32('1'), $f32('7FA00000')]), 0);
    returns(
        'lt_80', () => m.call('lt', [$f32('80800000'), $f32('80000000')]), 0x1);
    returns('lt_81', () => m.call('lt', [$f32('80800000'), $f32('0')]), 0x1);
    returns('lt_82', () => m.call('lt', [$f32('800000'), $f32('80000000')]), 0);
    returns('lt_83', () => m.call('lt', [$f32('800000'), $f32('0')]), 0);
    returns(
        'lt_84', () => m.call('lt', [$f32('80800000'), $f32('80000001')]), 0x1);
    returns('lt_85', () => m.call('lt', [$f32('80800000'), $f32('1')]), 0x1);
    returns('lt_86', () => m.call('lt', [$f32('800000'), $f32('80000001')]), 0);
    returns('lt_87', () => m.call('lt', [$f32('800000'), $f32('1')]), 0);
    returns(
        'lt_88', () => m.call('lt', [$f32('80800000'), $f32('80800000')]), 0);
    returns(
        'lt_89', () => m.call('lt', [$f32('80800000'), $f32('800000')]), 0x1);
    returns('lt_90', () => m.call('lt', [$f32('800000'), $f32('80800000')]), 0);
    returns('lt_91', () => m.call('lt', [$f32('800000'), $f32('800000')]), 0);
    returns(
        'lt_92', () => m.call('lt', [$f32('80800000'), $f32('BF000000')]), 0);
    returns(
        'lt_93', () => m.call('lt', [$f32('80800000'), $f32('3F000000')]), 0x1);
    returns('lt_94', () => m.call('lt', [$f32('800000'), $f32('BF000000')]), 0);
    returns(
        'lt_95', () => m.call('lt', [$f32('800000'), $f32('3F000000')]), 0x1);
    returns(
        'lt_96', () => m.call('lt', [$f32('80800000'), $f32('BF800000')]), 0);
    returns(
        'lt_97', () => m.call('lt', [$f32('80800000'), $f32('3F800000')]), 0x1);
    returns('lt_98', () => m.call('lt', [$f32('800000'), $f32('BF800000')]), 0);
    returns(
        'lt_99', () => m.call('lt', [$f32('800000'), $f32('3F800000')]), 0x1);
    returns(
        'lt_100', () => m.call('lt', [$f32('80800000'), $f32('C0C90FDB')]), 0);
    returns('lt_101', () => m.call('lt', [$f32('80800000'), $f32('40C90FDB')]),
        0x1);
    returns(
        'lt_102', () => m.call('lt', [$f32('800000'), $f32('C0C90FDB')]), 0);
    returns(
        'lt_103', () => m.call('lt', [$f32('800000'), $f32('40C90FDB')]), 0x1);
    returns(
        'lt_104', () => m.call('lt', [$f32('80800000'), $f32('FF7FFFFF')]), 0);
    returns('lt_105', () => m.call('lt', [$f32('80800000'), $f32('7F7FFFFF')]),
        0x1);
    returns(
        'lt_106', () => m.call('lt', [$f32('800000'), $f32('FF7FFFFF')]), 0);
    returns(
        'lt_107', () => m.call('lt', [$f32('800000'), $f32('7F7FFFFF')]), 0x1);
    returns(
        'lt_108', () => m.call('lt', [$f32('80800000'), $f32('FF800000')]), 0);
    returns('lt_109', () => m.call('lt', [$f32('80800000'), $f32('7F800000')]),
        0x1);
    returns(
        'lt_110', () => m.call('lt', [$f32('800000'), $f32('FF800000')]), 0);
    returns(
        'lt_111', () => m.call('lt', [$f32('800000'), $f32('7F800000')]), 0x1);
    returns(
        'lt_112', () => m.call('lt', [$f32('80800000'), $f32('FFC00000')]), 0);
    returns(
        'lt_113', () => m.call('lt', [$f32('80800000'), $f32('FFA00000')]), 0);
    returns(
        'lt_114', () => m.call('lt', [$f32('80800000'), $f32('7FC00000')]), 0);
    returns(
        'lt_115', () => m.call('lt', [$f32('80800000'), $f32('7FA00000')]), 0);
    returns(
        'lt_116', () => m.call('lt', [$f32('800000'), $f32('FFC00000')]), 0);
    returns(
        'lt_117', () => m.call('lt', [$f32('800000'), $f32('FFA00000')]), 0);
    returns(
        'lt_118', () => m.call('lt', [$f32('800000'), $f32('7FC00000')]), 0);
    returns(
        'lt_119', () => m.call('lt', [$f32('800000'), $f32('7FA00000')]), 0);
    returns('lt_120', () => m.call('lt', [$f32('BF000000'), $f32('80000000')]),
        0x1);
    returns('lt_121', () => m.call('lt', [$f32('BF000000'), $f32('0')]), 0x1);
    returns(
        'lt_122', () => m.call('lt', [$f32('3F000000'), $f32('80000000')]), 0);
    returns('lt_123', () => m.call('lt', [$f32('3F000000'), $f32('0')]), 0);
    returns('lt_124', () => m.call('lt', [$f32('BF000000'), $f32('80000001')]),
        0x1);
    returns('lt_125', () => m.call('lt', [$f32('BF000000'), $f32('1')]), 0x1);
    returns(
        'lt_126', () => m.call('lt', [$f32('3F000000'), $f32('80000001')]), 0);
    returns('lt_127', () => m.call('lt', [$f32('3F000000'), $f32('1')]), 0);
    returns('lt_128', () => m.call('lt', [$f32('BF000000'), $f32('80800000')]),
        0x1);
    returns(
        'lt_129', () => m.call('lt', [$f32('BF000000'), $f32('800000')]), 0x1);
    returns(
        'lt_130', () => m.call('lt', [$f32('3F000000'), $f32('80800000')]), 0);
    returns(
        'lt_131', () => m.call('lt', [$f32('3F000000'), $f32('800000')]), 0);
    returns(
        'lt_132', () => m.call('lt', [$f32('BF000000'), $f32('BF000000')]), 0);
    returns('lt_133', () => m.call('lt', [$f32('BF000000'), $f32('3F000000')]),
        0x1);
    returns(
        'lt_134', () => m.call('lt', [$f32('3F000000'), $f32('BF000000')]), 0);
    returns(
        'lt_135', () => m.call('lt', [$f32('3F000000'), $f32('3F000000')]), 0);
    returns(
        'lt_136', () => m.call('lt', [$f32('BF000000'), $f32('BF800000')]), 0);
    returns('lt_137', () => m.call('lt', [$f32('BF000000'), $f32('3F800000')]),
        0x1);
    returns(
        'lt_138', () => m.call('lt', [$f32('3F000000'), $f32('BF800000')]), 0);
    returns('lt_139', () => m.call('lt', [$f32('3F000000'), $f32('3F800000')]),
        0x1);
    returns(
        'lt_140', () => m.call('lt', [$f32('BF000000'), $f32('C0C90FDB')]), 0);
    returns('lt_141', () => m.call('lt', [$f32('BF000000'), $f32('40C90FDB')]),
        0x1);
    returns(
        'lt_142', () => m.call('lt', [$f32('3F000000'), $f32('C0C90FDB')]), 0);
    returns('lt_143', () => m.call('lt', [$f32('3F000000'), $f32('40C90FDB')]),
        0x1);
    returns(
        'lt_144', () => m.call('lt', [$f32('BF000000'), $f32('FF7FFFFF')]), 0);
    returns('lt_145', () => m.call('lt', [$f32('BF000000'), $f32('7F7FFFFF')]),
        0x1);
    returns(
        'lt_146', () => m.call('lt', [$f32('3F000000'), $f32('FF7FFFFF')]), 0);
    returns('lt_147', () => m.call('lt', [$f32('3F000000'), $f32('7F7FFFFF')]),
        0x1);
    returns(
        'lt_148', () => m.call('lt', [$f32('BF000000'), $f32('FF800000')]), 0);
    returns('lt_149', () => m.call('lt', [$f32('BF000000'), $f32('7F800000')]),
        0x1);
    returns(
        'lt_150', () => m.call('lt', [$f32('3F000000'), $f32('FF800000')]), 0);
    returns('lt_151', () => m.call('lt', [$f32('3F000000'), $f32('7F800000')]),
        0x1);
    returns(
        'lt_152', () => m.call('lt', [$f32('BF000000'), $f32('FFC00000')]), 0);
    returns(
        'lt_153', () => m.call('lt', [$f32('BF000000'), $f32('FFA00000')]), 0);
    returns(
        'lt_154', () => m.call('lt', [$f32('BF000000'), $f32('7FC00000')]), 0);
    returns(
        'lt_155', () => m.call('lt', [$f32('BF000000'), $f32('7FA00000')]), 0);
    returns(
        'lt_156', () => m.call('lt', [$f32('3F000000'), $f32('FFC00000')]), 0);
    returns(
        'lt_157', () => m.call('lt', [$f32('3F000000'), $f32('FFA00000')]), 0);
    returns(
        'lt_158', () => m.call('lt', [$f32('3F000000'), $f32('7FC00000')]), 0);
    returns(
        'lt_159', () => m.call('lt', [$f32('3F000000'), $f32('7FA00000')]), 0);
    returns('lt_160', () => m.call('lt', [$f32('BF800000'), $f32('80000000')]),
        0x1);
    returns('lt_161', () => m.call('lt', [$f32('BF800000'), $f32('0')]), 0x1);
    returns(
        'lt_162', () => m.call('lt', [$f32('3F800000'), $f32('80000000')]), 0);
    returns('lt_163', () => m.call('lt', [$f32('3F800000'), $f32('0')]), 0);
    returns('lt_164', () => m.call('lt', [$f32('BF800000'), $f32('80000001')]),
        0x1);
    returns('lt_165', () => m.call('lt', [$f32('BF800000'), $f32('1')]), 0x1);
    returns(
        'lt_166', () => m.call('lt', [$f32('3F800000'), $f32('80000001')]), 0);
    returns('lt_167', () => m.call('lt', [$f32('3F800000'), $f32('1')]), 0);
    returns('lt_168', () => m.call('lt', [$f32('BF800000'), $f32('80800000')]),
        0x1);
    returns(
        'lt_169', () => m.call('lt', [$f32('BF800000'), $f32('800000')]), 0x1);
    returns(
        'lt_170', () => m.call('lt', [$f32('3F800000'), $f32('80800000')]), 0);
    returns(
        'lt_171', () => m.call('lt', [$f32('3F800000'), $f32('800000')]), 0);
    returns('lt_172', () => m.call('lt', [$f32('BF800000'), $f32('BF000000')]),
        0x1);
    returns('lt_173', () => m.call('lt', [$f32('BF800000'), $f32('3F000000')]),
        0x1);
    returns(
        'lt_174', () => m.call('lt', [$f32('3F800000'), $f32('BF000000')]), 0);
    returns(
        'lt_175', () => m.call('lt', [$f32('3F800000'), $f32('3F000000')]), 0);
    returns(
        'lt_176', () => m.call('lt', [$f32('BF800000'), $f32('BF800000')]), 0);
    returns('lt_177', () => m.call('lt', [$f32('BF800000'), $f32('3F800000')]),
        0x1);
    returns(
        'lt_178', () => m.call('lt', [$f32('3F800000'), $f32('BF800000')]), 0);
    returns(
        'lt_179', () => m.call('lt', [$f32('3F800000'), $f32('3F800000')]), 0);
    returns(
        'lt_180', () => m.call('lt', [$f32('BF800000'), $f32('C0C90FDB')]), 0);
    returns('lt_181', () => m.call('lt', [$f32('BF800000'), $f32('40C90FDB')]),
        0x1);
    returns(
        'lt_182', () => m.call('lt', [$f32('3F800000'), $f32('C0C90FDB')]), 0);
    returns('lt_183', () => m.call('lt', [$f32('3F800000'), $f32('40C90FDB')]),
        0x1);
    returns(
        'lt_184', () => m.call('lt', [$f32('BF800000'), $f32('FF7FFFFF')]), 0);
    returns('lt_185', () => m.call('lt', [$f32('BF800000'), $f32('7F7FFFFF')]),
        0x1);
    returns(
        'lt_186', () => m.call('lt', [$f32('3F800000'), $f32('FF7FFFFF')]), 0);
    returns('lt_187', () => m.call('lt', [$f32('3F800000'), $f32('7F7FFFFF')]),
        0x1);
    returns(
        'lt_188', () => m.call('lt', [$f32('BF800000'), $f32('FF800000')]), 0);
    returns('lt_189', () => m.call('lt', [$f32('BF800000'), $f32('7F800000')]),
        0x1);
    returns(
        'lt_190', () => m.call('lt', [$f32('3F800000'), $f32('FF800000')]), 0);
    returns('lt_191', () => m.call('lt', [$f32('3F800000'), $f32('7F800000')]),
        0x1);
    returns(
        'lt_192', () => m.call('lt', [$f32('BF800000'), $f32('FFC00000')]), 0);
    returns(
        'lt_193', () => m.call('lt', [$f32('BF800000'), $f32('FFA00000')]), 0);
    returns(
        'lt_194', () => m.call('lt', [$f32('BF800000'), $f32('7FC00000')]), 0);
    returns(
        'lt_195', () => m.call('lt', [$f32('BF800000'), $f32('7FA00000')]), 0);
    returns(
        'lt_196', () => m.call('lt', [$f32('3F800000'), $f32('FFC00000')]), 0);
    returns(
        'lt_197', () => m.call('lt', [$f32('3F800000'), $f32('FFA00000')]), 0);
    returns(
        'lt_198', () => m.call('lt', [$f32('3F800000'), $f32('7FC00000')]), 0);
    returns(
        'lt_199', () => m.call('lt', [$f32('3F800000'), $f32('7FA00000')]), 0);
    returns('lt_200', () => m.call('lt', [$f32('C0C90FDB'), $f32('80000000')]),
        0x1);
    returns('lt_201', () => m.call('lt', [$f32('C0C90FDB'), $f32('0')]), 0x1);
    returns(
        'lt_202', () => m.call('lt', [$f32('40C90FDB'), $f32('80000000')]), 0);
    returns('lt_203', () => m.call('lt', [$f32('40C90FDB'), $f32('0')]), 0);
    returns('lt_204', () => m.call('lt', [$f32('C0C90FDB'), $f32('80000001')]),
        0x1);
    returns('lt_205', () => m.call('lt', [$f32('C0C90FDB'), $f32('1')]), 0x1);
    returns(
        'lt_206', () => m.call('lt', [$f32('40C90FDB'), $f32('80000001')]), 0);
    returns('lt_207', () => m.call('lt', [$f32('40C90FDB'), $f32('1')]), 0);
    returns('lt_208', () => m.call('lt', [$f32('C0C90FDB'), $f32('80800000')]),
        0x1);
    returns(
        'lt_209', () => m.call('lt', [$f32('C0C90FDB'), $f32('800000')]), 0x1);
    returns(
        'lt_210', () => m.call('lt', [$f32('40C90FDB'), $f32('80800000')]), 0);
    returns(
        'lt_211', () => m.call('lt', [$f32('40C90FDB'), $f32('800000')]), 0);
    returns('lt_212', () => m.call('lt', [$f32('C0C90FDB'), $f32('BF000000')]),
        0x1);
    returns('lt_213', () => m.call('lt', [$f32('C0C90FDB'), $f32('3F000000')]),
        0x1);
    returns(
        'lt_214', () => m.call('lt', [$f32('40C90FDB'), $f32('BF000000')]), 0);
    returns(
        'lt_215', () => m.call('lt', [$f32('40C90FDB'), $f32('3F000000')]), 0);
    returns('lt_216', () => m.call('lt', [$f32('C0C90FDB'), $f32('BF800000')]),
        0x1);
    returns('lt_217', () => m.call('lt', [$f32('C0C90FDB'), $f32('3F800000')]),
        0x1);
    returns(
        'lt_218', () => m.call('lt', [$f32('40C90FDB'), $f32('BF800000')]), 0);
    returns(
        'lt_219', () => m.call('lt', [$f32('40C90FDB'), $f32('3F800000')]), 0);
    returns(
        'lt_220', () => m.call('lt', [$f32('C0C90FDB'), $f32('C0C90FDB')]), 0);
    returns('lt_221', () => m.call('lt', [$f32('C0C90FDB'), $f32('40C90FDB')]),
        0x1);
    returns(
        'lt_222', () => m.call('lt', [$f32('40C90FDB'), $f32('C0C90FDB')]), 0);
    returns(
        'lt_223', () => m.call('lt', [$f32('40C90FDB'), $f32('40C90FDB')]), 0);
    returns(
        'lt_224', () => m.call('lt', [$f32('C0C90FDB'), $f32('FF7FFFFF')]), 0);
    returns('lt_225', () => m.call('lt', [$f32('C0C90FDB'), $f32('7F7FFFFF')]),
        0x1);
    returns(
        'lt_226', () => m.call('lt', [$f32('40C90FDB'), $f32('FF7FFFFF')]), 0);
    returns('lt_227', () => m.call('lt', [$f32('40C90FDB'), $f32('7F7FFFFF')]),
        0x1);
    returns(
        'lt_228', () => m.call('lt', [$f32('C0C90FDB'), $f32('FF800000')]), 0);
    returns('lt_229', () => m.call('lt', [$f32('C0C90FDB'), $f32('7F800000')]),
        0x1);
    returns(
        'lt_230', () => m.call('lt', [$f32('40C90FDB'), $f32('FF800000')]), 0);
    returns('lt_231', () => m.call('lt', [$f32('40C90FDB'), $f32('7F800000')]),
        0x1);
    returns(
        'lt_232', () => m.call('lt', [$f32('C0C90FDB'), $f32('FFC00000')]), 0);
    returns(
        'lt_233', () => m.call('lt', [$f32('C0C90FDB'), $f32('FFA00000')]), 0);
    returns(
        'lt_234', () => m.call('lt', [$f32('C0C90FDB'), $f32('7FC00000')]), 0);
    returns(
        'lt_235', () => m.call('lt', [$f32('C0C90FDB'), $f32('7FA00000')]), 0);
    returns(
        'lt_236', () => m.call('lt', [$f32('40C90FDB'), $f32('FFC00000')]), 0);
    returns(
        'lt_237', () => m.call('lt', [$f32('40C90FDB'), $f32('FFA00000')]), 0);
    returns(
        'lt_238', () => m.call('lt', [$f32('40C90FDB'), $f32('7FC00000')]), 0);
    returns(
        'lt_239', () => m.call('lt', [$f32('40C90FDB'), $f32('7FA00000')]), 0);
    returns('lt_240', () => m.call('lt', [$f32('FF7FFFFF'), $f32('80000000')]),
        0x1);
    returns('lt_241', () => m.call('lt', [$f32('FF7FFFFF'), $f32('0')]), 0x1);
    returns(
        'lt_242', () => m.call('lt', [$f32('7F7FFFFF'), $f32('80000000')]), 0);
    returns('lt_243', () => m.call('lt', [$f32('7F7FFFFF'), $f32('0')]), 0);
    returns('lt_244', () => m.call('lt', [$f32('FF7FFFFF'), $f32('80000001')]),
        0x1);
    returns('lt_245', () => m.call('lt', [$f32('FF7FFFFF'), $f32('1')]), 0x1);
    returns(
        'lt_246', () => m.call('lt', [$f32('7F7FFFFF'), $f32('80000001')]), 0);
    returns('lt_247', () => m.call('lt', [$f32('7F7FFFFF'), $f32('1')]), 0);
    returns('lt_248', () => m.call('lt', [$f32('FF7FFFFF'), $f32('80800000')]),
        0x1);
    returns(
        'lt_249', () => m.call('lt', [$f32('FF7FFFFF'), $f32('800000')]), 0x1);
    returns(
        'lt_250', () => m.call('lt', [$f32('7F7FFFFF'), $f32('80800000')]), 0);
    returns(
        'lt_251', () => m.call('lt', [$f32('7F7FFFFF'), $f32('800000')]), 0);
    returns('lt_252', () => m.call('lt', [$f32('FF7FFFFF'), $f32('BF000000')]),
        0x1);
    returns('lt_253', () => m.call('lt', [$f32('FF7FFFFF'), $f32('3F000000')]),
        0x1);
    returns(
        'lt_254', () => m.call('lt', [$f32('7F7FFFFF'), $f32('BF000000')]), 0);
    returns(
        'lt_255', () => m.call('lt', [$f32('7F7FFFFF'), $f32('3F000000')]), 0);
    returns('lt_256', () => m.call('lt', [$f32('FF7FFFFF'), $f32('BF800000')]),
        0x1);
    returns('lt_257', () => m.call('lt', [$f32('FF7FFFFF'), $f32('3F800000')]),
        0x1);
    returns(
        'lt_258', () => m.call('lt', [$f32('7F7FFFFF'), $f32('BF800000')]), 0);
    returns(
        'lt_259', () => m.call('lt', [$f32('7F7FFFFF'), $f32('3F800000')]), 0);
    returns('lt_260', () => m.call('lt', [$f32('FF7FFFFF'), $f32('C0C90FDB')]),
        0x1);
    returns('lt_261', () => m.call('lt', [$f32('FF7FFFFF'), $f32('40C90FDB')]),
        0x1);
    returns(
        'lt_262', () => m.call('lt', [$f32('7F7FFFFF'), $f32('C0C90FDB')]), 0);
    returns(
        'lt_263', () => m.call('lt', [$f32('7F7FFFFF'), $f32('40C90FDB')]), 0);
    returns(
        'lt_264', () => m.call('lt', [$f32('FF7FFFFF'), $f32('FF7FFFFF')]), 0);
    returns('lt_265', () => m.call('lt', [$f32('FF7FFFFF'), $f32('7F7FFFFF')]),
        0x1);
    returns(
        'lt_266', () => m.call('lt', [$f32('7F7FFFFF'), $f32('FF7FFFFF')]), 0);
    returns(
        'lt_267', () => m.call('lt', [$f32('7F7FFFFF'), $f32('7F7FFFFF')]), 0);
    returns(
        'lt_268', () => m.call('lt', [$f32('FF7FFFFF'), $f32('FF800000')]), 0);
    returns('lt_269', () => m.call('lt', [$f32('FF7FFFFF'), $f32('7F800000')]),
        0x1);
    returns(
        'lt_270', () => m.call('lt', [$f32('7F7FFFFF'), $f32('FF800000')]), 0);
    returns('lt_271', () => m.call('lt', [$f32('7F7FFFFF'), $f32('7F800000')]),
        0x1);
    returns(
        'lt_272', () => m.call('lt', [$f32('FF7FFFFF'), $f32('FFC00000')]), 0);
    returns(
        'lt_273', () => m.call('lt', [$f32('FF7FFFFF'), $f32('FFA00000')]), 0);
    returns(
        'lt_274', () => m.call('lt', [$f32('FF7FFFFF'), $f32('7FC00000')]), 0);
    returns(
        'lt_275', () => m.call('lt', [$f32('FF7FFFFF'), $f32('7FA00000')]), 0);
    returns(
        'lt_276', () => m.call('lt', [$f32('7F7FFFFF'), $f32('FFC00000')]), 0);
    returns(
        'lt_277', () => m.call('lt', [$f32('7F7FFFFF'), $f32('FFA00000')]), 0);
    returns(
        'lt_278', () => m.call('lt', [$f32('7F7FFFFF'), $f32('7FC00000')]), 0);
    returns(
        'lt_279', () => m.call('lt', [$f32('7F7FFFFF'), $f32('7FA00000')]), 0);
    returns('lt_280', () => m.call('lt', [$f32('FF800000'), $f32('80000000')]),
        0x1);
    returns('lt_281', () => m.call('lt', [$f32('FF800000'), $f32('0')]), 0x1);
    returns(
        'lt_282', () => m.call('lt', [$f32('7F800000'), $f32('80000000')]), 0);
    returns('lt_283', () => m.call('lt', [$f32('7F800000'), $f32('0')]), 0);
    returns('lt_284', () => m.call('lt', [$f32('FF800000'), $f32('80000001')]),
        0x1);
    returns('lt_285', () => m.call('lt', [$f32('FF800000'), $f32('1')]), 0x1);
    returns(
        'lt_286', () => m.call('lt', [$f32('7F800000'), $f32('80000001')]), 0);
    returns('lt_287', () => m.call('lt', [$f32('7F800000'), $f32('1')]), 0);
    returns('lt_288', () => m.call('lt', [$f32('FF800000'), $f32('80800000')]),
        0x1);
    returns(
        'lt_289', () => m.call('lt', [$f32('FF800000'), $f32('800000')]), 0x1);
    returns(
        'lt_290', () => m.call('lt', [$f32('7F800000'), $f32('80800000')]), 0);
    returns(
        'lt_291', () => m.call('lt', [$f32('7F800000'), $f32('800000')]), 0);
    returns('lt_292', () => m.call('lt', [$f32('FF800000'), $f32('BF000000')]),
        0x1);
    returns('lt_293', () => m.call('lt', [$f32('FF800000'), $f32('3F000000')]),
        0x1);
    returns(
        'lt_294', () => m.call('lt', [$f32('7F800000'), $f32('BF000000')]), 0);
    returns(
        'lt_295', () => m.call('lt', [$f32('7F800000'), $f32('3F000000')]), 0);
    returns('lt_296', () => m.call('lt', [$f32('FF800000'), $f32('BF800000')]),
        0x1);
    returns('lt_297', () => m.call('lt', [$f32('FF800000'), $f32('3F800000')]),
        0x1);
    returns(
        'lt_298', () => m.call('lt', [$f32('7F800000'), $f32('BF800000')]), 0);
    returns(
        'lt_299', () => m.call('lt', [$f32('7F800000'), $f32('3F800000')]), 0);
    returns('lt_300', () => m.call('lt', [$f32('FF800000'), $f32('C0C90FDB')]),
        0x1);
    returns('lt_301', () => m.call('lt', [$f32('FF800000'), $f32('40C90FDB')]),
        0x1);
    returns(
        'lt_302', () => m.call('lt', [$f32('7F800000'), $f32('C0C90FDB')]), 0);
    returns(
        'lt_303', () => m.call('lt', [$f32('7F800000'), $f32('40C90FDB')]), 0);
    returns('lt_304', () => m.call('lt', [$f32('FF800000'), $f32('FF7FFFFF')]),
        0x1);
    returns('lt_305', () => m.call('lt', [$f32('FF800000'), $f32('7F7FFFFF')]),
        0x1);
    returns(
        'lt_306', () => m.call('lt', [$f32('7F800000'), $f32('FF7FFFFF')]), 0);
    returns(
        'lt_307', () => m.call('lt', [$f32('7F800000'), $f32('7F7FFFFF')]), 0);
    returns(
        'lt_308', () => m.call('lt', [$f32('FF800000'), $f32('FF800000')]), 0);
    returns('lt_309', () => m.call('lt', [$f32('FF800000'), $f32('7F800000')]),
        0x1);
    returns(
        'lt_310', () => m.call('lt', [$f32('7F800000'), $f32('FF800000')]), 0);
    returns(
        'lt_311', () => m.call('lt', [$f32('7F800000'), $f32('7F800000')]), 0);
    returns(
        'lt_312', () => m.call('lt', [$f32('FF800000'), $f32('FFC00000')]), 0);
    returns(
        'lt_313', () => m.call('lt', [$f32('FF800000'), $f32('FFA00000')]), 0);
    returns(
        'lt_314', () => m.call('lt', [$f32('FF800000'), $f32('7FC00000')]), 0);
    returns(
        'lt_315', () => m.call('lt', [$f32('FF800000'), $f32('7FA00000')]), 0);
    returns(
        'lt_316', () => m.call('lt', [$f32('7F800000'), $f32('FFC00000')]), 0);
    returns(
        'lt_317', () => m.call('lt', [$f32('7F800000'), $f32('FFA00000')]), 0);
    returns(
        'lt_318', () => m.call('lt', [$f32('7F800000'), $f32('7FC00000')]), 0);
    returns(
        'lt_319', () => m.call('lt', [$f32('7F800000'), $f32('7FA00000')]), 0);
    returns(
        'lt_320', () => m.call('lt', [$f32('FFC00000'), $f32('80000000')]), 0);
    returns(
        'lt_321', () => m.call('lt', [$f32('FFA00000'), $f32('80000000')]), 0);
    returns('lt_322', () => m.call('lt', [$f32('FFC00000'), $f32('0')]), 0);
    returns('lt_323', () => m.call('lt', [$f32('FFA00000'), $f32('0')]), 0);
    returns(
        'lt_324', () => m.call('lt', [$f32('7FC00000'), $f32('80000000')]), 0);
    returns(
        'lt_325', () => m.call('lt', [$f32('7FA00000'), $f32('80000000')]), 0);
    returns('lt_326', () => m.call('lt', [$f32('7FC00000'), $f32('0')]), 0);
    returns('lt_327', () => m.call('lt', [$f32('7FA00000'), $f32('0')]), 0);
    returns(
        'lt_328', () => m.call('lt', [$f32('FFC00000'), $f32('80000001')]), 0);
    returns(
        'lt_329', () => m.call('lt', [$f32('FFA00000'), $f32('80000001')]), 0);
    returns('lt_330', () => m.call('lt', [$f32('FFC00000'), $f32('1')]), 0);
    returns('lt_331', () => m.call('lt', [$f32('FFA00000'), $f32('1')]), 0);
    returns(
        'lt_332', () => m.call('lt', [$f32('7FC00000'), $f32('80000001')]), 0);
    returns(
        'lt_333', () => m.call('lt', [$f32('7FA00000'), $f32('80000001')]), 0);
    returns('lt_334', () => m.call('lt', [$f32('7FC00000'), $f32('1')]), 0);
    returns('lt_335', () => m.call('lt', [$f32('7FA00000'), $f32('1')]), 0);
    returns(
        'lt_336', () => m.call('lt', [$f32('FFC00000'), $f32('80800000')]), 0);
    returns(
        'lt_337', () => m.call('lt', [$f32('FFA00000'), $f32('80800000')]), 0);
    returns(
        'lt_338', () => m.call('lt', [$f32('FFC00000'), $f32('800000')]), 0);
    returns(
        'lt_339', () => m.call('lt', [$f32('FFA00000'), $f32('800000')]), 0);
    returns(
        'lt_340', () => m.call('lt', [$f32('7FC00000'), $f32('80800000')]), 0);
    returns(
        'lt_341', () => m.call('lt', [$f32('7FA00000'), $f32('80800000')]), 0);
    returns(
        'lt_342', () => m.call('lt', [$f32('7FC00000'), $f32('800000')]), 0);
    returns(
        'lt_343', () => m.call('lt', [$f32('7FA00000'), $f32('800000')]), 0);
    returns(
        'lt_344', () => m.call('lt', [$f32('FFC00000'), $f32('BF000000')]), 0);
    returns(
        'lt_345', () => m.call('lt', [$f32('FFA00000'), $f32('BF000000')]), 0);
    returns(
        'lt_346', () => m.call('lt', [$f32('FFC00000'), $f32('3F000000')]), 0);
    returns(
        'lt_347', () => m.call('lt', [$f32('FFA00000'), $f32('3F000000')]), 0);
    returns(
        'lt_348', () => m.call('lt', [$f32('7FC00000'), $f32('BF000000')]), 0);
    returns(
        'lt_349', () => m.call('lt', [$f32('7FA00000'), $f32('BF000000')]), 0);
    returns(
        'lt_350', () => m.call('lt', [$f32('7FC00000'), $f32('3F000000')]), 0);
    returns(
        'lt_351', () => m.call('lt', [$f32('7FA00000'), $f32('3F000000')]), 0);
    returns(
        'lt_352', () => m.call('lt', [$f32('FFC00000'), $f32('BF800000')]), 0);
    returns(
        'lt_353', () => m.call('lt', [$f32('FFA00000'), $f32('BF800000')]), 0);
    returns(
        'lt_354', () => m.call('lt', [$f32('FFC00000'), $f32('3F800000')]), 0);
    returns(
        'lt_355', () => m.call('lt', [$f32('FFA00000'), $f32('3F800000')]), 0);
    returns(
        'lt_356', () => m.call('lt', [$f32('7FC00000'), $f32('BF800000')]), 0);
    returns(
        'lt_357', () => m.call('lt', [$f32('7FA00000'), $f32('BF800000')]), 0);
    returns(
        'lt_358', () => m.call('lt', [$f32('7FC00000'), $f32('3F800000')]), 0);
    returns(
        'lt_359', () => m.call('lt', [$f32('7FA00000'), $f32('3F800000')]), 0);
    returns(
        'lt_360', () => m.call('lt', [$f32('FFC00000'), $f32('C0C90FDB')]), 0);
    returns(
        'lt_361', () => m.call('lt', [$f32('FFA00000'), $f32('C0C90FDB')]), 0);
    returns(
        'lt_362', () => m.call('lt', [$f32('FFC00000'), $f32('40C90FDB')]), 0);
    returns(
        'lt_363', () => m.call('lt', [$f32('FFA00000'), $f32('40C90FDB')]), 0);
    returns(
        'lt_364', () => m.call('lt', [$f32('7FC00000'), $f32('C0C90FDB')]), 0);
    returns(
        'lt_365', () => m.call('lt', [$f32('7FA00000'), $f32('C0C90FDB')]), 0);
    returns(
        'lt_366', () => m.call('lt', [$f32('7FC00000'), $f32('40C90FDB')]), 0);
    returns(
        'lt_367', () => m.call('lt', [$f32('7FA00000'), $f32('40C90FDB')]), 0);
    returns(
        'lt_368', () => m.call('lt', [$f32('FFC00000'), $f32('FF7FFFFF')]), 0);
    returns(
        'lt_369', () => m.call('lt', [$f32('FFA00000'), $f32('FF7FFFFF')]), 0);
    returns(
        'lt_370', () => m.call('lt', [$f32('FFC00000'), $f32('7F7FFFFF')]), 0);
    returns(
        'lt_371', () => m.call('lt', [$f32('FFA00000'), $f32('7F7FFFFF')]), 0);
    returns(
        'lt_372', () => m.call('lt', [$f32('7FC00000'), $f32('FF7FFFFF')]), 0);
    returns(
        'lt_373', () => m.call('lt', [$f32('7FA00000'), $f32('FF7FFFFF')]), 0);
    returns(
        'lt_374', () => m.call('lt', [$f32('7FC00000'), $f32('7F7FFFFF')]), 0);
    returns(
        'lt_375', () => m.call('lt', [$f32('7FA00000'), $f32('7F7FFFFF')]), 0);
    returns(
        'lt_376', () => m.call('lt', [$f32('FFC00000'), $f32('FF800000')]), 0);
    returns(
        'lt_377', () => m.call('lt', [$f32('FFA00000'), $f32('FF800000')]), 0);
    returns(
        'lt_378', () => m.call('lt', [$f32('FFC00000'), $f32('7F800000')]), 0);
    returns(
        'lt_379', () => m.call('lt', [$f32('FFA00000'), $f32('7F800000')]), 0);
    returns(
        'lt_380', () => m.call('lt', [$f32('7FC00000'), $f32('FF800000')]), 0);
    returns(
        'lt_381', () => m.call('lt', [$f32('7FA00000'), $f32('FF800000')]), 0);
    returns(
        'lt_382', () => m.call('lt', [$f32('7FC00000'), $f32('7F800000')]), 0);
    returns(
        'lt_383', () => m.call('lt', [$f32('7FA00000'), $f32('7F800000')]), 0);
    returns(
        'lt_384', () => m.call('lt', [$f32('FFC00000'), $f32('FFC00000')]), 0);
    returns(
        'lt_385', () => m.call('lt', [$f32('FFA00000'), $f32('FFC00000')]), 0);
    returns(
        'lt_386', () => m.call('lt', [$f32('FFC00000'), $f32('FFA00000')]), 0);
    returns(
        'lt_387', () => m.call('lt', [$f32('FFA00000'), $f32('FFA00000')]), 0);
    returns(
        'lt_388', () => m.call('lt', [$f32('FFC00000'), $f32('7FC00000')]), 0);
    returns(
        'lt_389', () => m.call('lt', [$f32('FFA00000'), $f32('7FC00000')]), 0);
    returns(
        'lt_390', () => m.call('lt', [$f32('FFC00000'), $f32('7FA00000')]), 0);
    returns(
        'lt_391', () => m.call('lt', [$f32('FFA00000'), $f32('7FA00000')]), 0);
    returns(
        'lt_392', () => m.call('lt', [$f32('7FC00000'), $f32('FFC00000')]), 0);
    returns(
        'lt_393', () => m.call('lt', [$f32('7FA00000'), $f32('FFC00000')]), 0);
    returns(
        'lt_394', () => m.call('lt', [$f32('7FC00000'), $f32('FFA00000')]), 0);
    returns(
        'lt_395', () => m.call('lt', [$f32('7FA00000'), $f32('FFA00000')]), 0);
    returns(
        'lt_396', () => m.call('lt', [$f32('7FC00000'), $f32('7FC00000')]), 0);
    returns(
        'lt_397', () => m.call('lt', [$f32('7FA00000'), $f32('7FC00000')]), 0);
    returns(
        'lt_398', () => m.call('lt', [$f32('7FC00000'), $f32('7FA00000')]), 0);
    returns(
        'lt_399', () => m.call('lt', [$f32('7FA00000'), $f32('7FA00000')]), 0);
    returns(
        'le_0', () => m.call('le', [$f32('80000000'), $f32('80000000')]), 0x1);
    returns('le_1', () => m.call('le', [$f32('80000000'), $f32('0')]), 0x1);
    returns('le_2', () => m.call('le', [$f32('0'), $f32('80000000')]), 0x1);
    returns('le_3', () => m.call('le', [$f32('0'), $f32('0')]), 0x1);
    returns(
        'le_4', () => m.call('le', [$f32('80000000'), $f32('80000001')]), 0);
    returns('le_5', () => m.call('le', [$f32('80000000'), $f32('1')]), 0x1);
    returns('le_6', () => m.call('le', [$f32('0'), $f32('80000001')]), 0);
    returns('le_7', () => m.call('le', [$f32('0'), $f32('1')]), 0x1);
    returns(
        'le_8', () => m.call('le', [$f32('80000000'), $f32('80800000')]), 0);
    returns(
        'le_9', () => m.call('le', [$f32('80000000'), $f32('800000')]), 0x1);
    returns('le_10', () => m.call('le', [$f32('0'), $f32('80800000')]), 0);
    returns('le_11', () => m.call('le', [$f32('0'), $f32('800000')]), 0x1);
    returns(
        'le_12', () => m.call('le', [$f32('80000000'), $f32('BF000000')]), 0);
    returns(
        'le_13', () => m.call('le', [$f32('80000000'), $f32('3F000000')]), 0x1);
    returns('le_14', () => m.call('le', [$f32('0'), $f32('BF000000')]), 0);
    returns('le_15', () => m.call('le', [$f32('0'), $f32('3F000000')]), 0x1);
    returns(
        'le_16', () => m.call('le', [$f32('80000000'), $f32('BF800000')]), 0);
    returns(
        'le_17', () => m.call('le', [$f32('80000000'), $f32('3F800000')]), 0x1);
    returns('le_18', () => m.call('le', [$f32('0'), $f32('BF800000')]), 0);
    returns('le_19', () => m.call('le', [$f32('0'), $f32('3F800000')]), 0x1);
    returns(
        'le_20', () => m.call('le', [$f32('80000000'), $f32('C0C90FDB')]), 0);
    returns(
        'le_21', () => m.call('le', [$f32('80000000'), $f32('40C90FDB')]), 0x1);
    returns('le_22', () => m.call('le', [$f32('0'), $f32('C0C90FDB')]), 0);
    returns('le_23', () => m.call('le', [$f32('0'), $f32('40C90FDB')]), 0x1);
    returns(
        'le_24', () => m.call('le', [$f32('80000000'), $f32('FF7FFFFF')]), 0);
    returns(
        'le_25', () => m.call('le', [$f32('80000000'), $f32('7F7FFFFF')]), 0x1);
    returns('le_26', () => m.call('le', [$f32('0'), $f32('FF7FFFFF')]), 0);
    returns('le_27', () => m.call('le', [$f32('0'), $f32('7F7FFFFF')]), 0x1);
    returns(
        'le_28', () => m.call('le', [$f32('80000000'), $f32('FF800000')]), 0);
    returns(
        'le_29', () => m.call('le', [$f32('80000000'), $f32('7F800000')]), 0x1);
    returns('le_30', () => m.call('le', [$f32('0'), $f32('FF800000')]), 0);
    returns('le_31', () => m.call('le', [$f32('0'), $f32('7F800000')]), 0x1);
    returns(
        'le_32', () => m.call('le', [$f32('80000000'), $f32('FFC00000')]), 0);
    returns(
        'le_33', () => m.call('le', [$f32('80000000'), $f32('FFA00000')]), 0);
    returns(
        'le_34', () => m.call('le', [$f32('80000000'), $f32('7FC00000')]), 0);
    returns(
        'le_35', () => m.call('le', [$f32('80000000'), $f32('7FA00000')]), 0);
    returns('le_36', () => m.call('le', [$f32('0'), $f32('FFC00000')]), 0);
    returns('le_37', () => m.call('le', [$f32('0'), $f32('FFA00000')]), 0);
    returns('le_38', () => m.call('le', [$f32('0'), $f32('7FC00000')]), 0);
    returns('le_39', () => m.call('le', [$f32('0'), $f32('7FA00000')]), 0);
    returns(
        'le_40', () => m.call('le', [$f32('80000001'), $f32('80000000')]), 0x1);
    returns('le_41', () => m.call('le', [$f32('80000001'), $f32('0')]), 0x1);
    returns('le_42', () => m.call('le', [$f32('1'), $f32('80000000')]), 0);
    returns('le_43', () => m.call('le', [$f32('1'), $f32('0')]), 0);
    returns(
        'le_44', () => m.call('le', [$f32('80000001'), $f32('80000001')]), 0x1);
    returns('le_45', () => m.call('le', [$f32('80000001'), $f32('1')]), 0x1);
    returns('le_46', () => m.call('le', [$f32('1'), $f32('80000001')]), 0);
    returns('le_47', () => m.call('le', [$f32('1'), $f32('1')]), 0x1);
    returns(
        'le_48', () => m.call('le', [$f32('80000001'), $f32('80800000')]), 0);
    returns(
        'le_49', () => m.call('le', [$f32('80000001'), $f32('800000')]), 0x1);
    returns('le_50', () => m.call('le', [$f32('1'), $f32('80800000')]), 0);
    returns('le_51', () => m.call('le', [$f32('1'), $f32('800000')]), 0x1);
    returns(
        'le_52', () => m.call('le', [$f32('80000001'), $f32('BF000000')]), 0);
    returns(
        'le_53', () => m.call('le', [$f32('80000001'), $f32('3F000000')]), 0x1);
    returns('le_54', () => m.call('le', [$f32('1'), $f32('BF000000')]), 0);
    returns('le_55', () => m.call('le', [$f32('1'), $f32('3F000000')]), 0x1);
    returns(
        'le_56', () => m.call('le', [$f32('80000001'), $f32('BF800000')]), 0);
    returns(
        'le_57', () => m.call('le', [$f32('80000001'), $f32('3F800000')]), 0x1);
    returns('le_58', () => m.call('le', [$f32('1'), $f32('BF800000')]), 0);
    returns('le_59', () => m.call('le', [$f32('1'), $f32('3F800000')]), 0x1);
    returns(
        'le_60', () => m.call('le', [$f32('80000001'), $f32('C0C90FDB')]), 0);
    returns(
        'le_61', () => m.call('le', [$f32('80000001'), $f32('40C90FDB')]), 0x1);
    returns('le_62', () => m.call('le', [$f32('1'), $f32('C0C90FDB')]), 0);
    returns('le_63', () => m.call('le', [$f32('1'), $f32('40C90FDB')]), 0x1);
    returns(
        'le_64', () => m.call('le', [$f32('80000001'), $f32('FF7FFFFF')]), 0);
    returns(
        'le_65', () => m.call('le', [$f32('80000001'), $f32('7F7FFFFF')]), 0x1);
    returns('le_66', () => m.call('le', [$f32('1'), $f32('FF7FFFFF')]), 0);
    returns('le_67', () => m.call('le', [$f32('1'), $f32('7F7FFFFF')]), 0x1);
    returns(
        'le_68', () => m.call('le', [$f32('80000001'), $f32('FF800000')]), 0);
    returns(
        'le_69', () => m.call('le', [$f32('80000001'), $f32('7F800000')]), 0x1);
    returns('le_70', () => m.call('le', [$f32('1'), $f32('FF800000')]), 0);
    returns('le_71', () => m.call('le', [$f32('1'), $f32('7F800000')]), 0x1);
    returns(
        'le_72', () => m.call('le', [$f32('80000001'), $f32('FFC00000')]), 0);
    returns(
        'le_73', () => m.call('le', [$f32('80000001'), $f32('FFA00000')]), 0);
    returns(
        'le_74', () => m.call('le', [$f32('80000001'), $f32('7FC00000')]), 0);
    returns(
        'le_75', () => m.call('le', [$f32('80000001'), $f32('7FA00000')]), 0);
    returns('le_76', () => m.call('le', [$f32('1'), $f32('FFC00000')]), 0);
    returns('le_77', () => m.call('le', [$f32('1'), $f32('FFA00000')]), 0);
    returns('le_78', () => m.call('le', [$f32('1'), $f32('7FC00000')]), 0);
    returns('le_79', () => m.call('le', [$f32('1'), $f32('7FA00000')]), 0);
    returns(
        'le_80', () => m.call('le', [$f32('80800000'), $f32('80000000')]), 0x1);
    returns('le_81', () => m.call('le', [$f32('80800000'), $f32('0')]), 0x1);
    returns('le_82', () => m.call('le', [$f32('800000'), $f32('80000000')]), 0);
    returns('le_83', () => m.call('le', [$f32('800000'), $f32('0')]), 0);
    returns(
        'le_84', () => m.call('le', [$f32('80800000'), $f32('80000001')]), 0x1);
    returns('le_85', () => m.call('le', [$f32('80800000'), $f32('1')]), 0x1);
    returns('le_86', () => m.call('le', [$f32('800000'), $f32('80000001')]), 0);
    returns('le_87', () => m.call('le', [$f32('800000'), $f32('1')]), 0);
    returns(
        'le_88', () => m.call('le', [$f32('80800000'), $f32('80800000')]), 0x1);
    returns(
        'le_89', () => m.call('le', [$f32('80800000'), $f32('800000')]), 0x1);
    returns('le_90', () => m.call('le', [$f32('800000'), $f32('80800000')]), 0);
    returns('le_91', () => m.call('le', [$f32('800000'), $f32('800000')]), 0x1);
    returns(
        'le_92', () => m.call('le', [$f32('80800000'), $f32('BF000000')]), 0);
    returns(
        'le_93', () => m.call('le', [$f32('80800000'), $f32('3F000000')]), 0x1);
    returns('le_94', () => m.call('le', [$f32('800000'), $f32('BF000000')]), 0);
    returns(
        'le_95', () => m.call('le', [$f32('800000'), $f32('3F000000')]), 0x1);
    returns(
        'le_96', () => m.call('le', [$f32('80800000'), $f32('BF800000')]), 0);
    returns(
        'le_97', () => m.call('le', [$f32('80800000'), $f32('3F800000')]), 0x1);
    returns('le_98', () => m.call('le', [$f32('800000'), $f32('BF800000')]), 0);
    returns(
        'le_99', () => m.call('le', [$f32('800000'), $f32('3F800000')]), 0x1);
    returns(
        'le_100', () => m.call('le', [$f32('80800000'), $f32('C0C90FDB')]), 0);
    returns('le_101', () => m.call('le', [$f32('80800000'), $f32('40C90FDB')]),
        0x1);
    returns(
        'le_102', () => m.call('le', [$f32('800000'), $f32('C0C90FDB')]), 0);
    returns(
        'le_103', () => m.call('le', [$f32('800000'), $f32('40C90FDB')]), 0x1);
    returns(
        'le_104', () => m.call('le', [$f32('80800000'), $f32('FF7FFFFF')]), 0);
    returns('le_105', () => m.call('le', [$f32('80800000'), $f32('7F7FFFFF')]),
        0x1);
    returns(
        'le_106', () => m.call('le', [$f32('800000'), $f32('FF7FFFFF')]), 0);
    returns(
        'le_107', () => m.call('le', [$f32('800000'), $f32('7F7FFFFF')]), 0x1);
    returns(
        'le_108', () => m.call('le', [$f32('80800000'), $f32('FF800000')]), 0);
    returns('le_109', () => m.call('le', [$f32('80800000'), $f32('7F800000')]),
        0x1);
    returns(
        'le_110', () => m.call('le', [$f32('800000'), $f32('FF800000')]), 0);
    returns(
        'le_111', () => m.call('le', [$f32('800000'), $f32('7F800000')]), 0x1);
    returns(
        'le_112', () => m.call('le', [$f32('80800000'), $f32('FFC00000')]), 0);
    returns(
        'le_113', () => m.call('le', [$f32('80800000'), $f32('FFA00000')]), 0);
    returns(
        'le_114', () => m.call('le', [$f32('80800000'), $f32('7FC00000')]), 0);
    returns(
        'le_115', () => m.call('le', [$f32('80800000'), $f32('7FA00000')]), 0);
    returns(
        'le_116', () => m.call('le', [$f32('800000'), $f32('FFC00000')]), 0);
    returns(
        'le_117', () => m.call('le', [$f32('800000'), $f32('FFA00000')]), 0);
    returns(
        'le_118', () => m.call('le', [$f32('800000'), $f32('7FC00000')]), 0);
    returns(
        'le_119', () => m.call('le', [$f32('800000'), $f32('7FA00000')]), 0);
    returns('le_120', () => m.call('le', [$f32('BF000000'), $f32('80000000')]),
        0x1);
    returns('le_121', () => m.call('le', [$f32('BF000000'), $f32('0')]), 0x1);
    returns(
        'le_122', () => m.call('le', [$f32('3F000000'), $f32('80000000')]), 0);
    returns('le_123', () => m.call('le', [$f32('3F000000'), $f32('0')]), 0);
    returns('le_124', () => m.call('le', [$f32('BF000000'), $f32('80000001')]),
        0x1);
    returns('le_125', () => m.call('le', [$f32('BF000000'), $f32('1')]), 0x1);
    returns(
        'le_126', () => m.call('le', [$f32('3F000000'), $f32('80000001')]), 0);
    returns('le_127', () => m.call('le', [$f32('3F000000'), $f32('1')]), 0);
    returns('le_128', () => m.call('le', [$f32('BF000000'), $f32('80800000')]),
        0x1);
    returns(
        'le_129', () => m.call('le', [$f32('BF000000'), $f32('800000')]), 0x1);
    returns(
        'le_130', () => m.call('le', [$f32('3F000000'), $f32('80800000')]), 0);
    returns(
        'le_131', () => m.call('le', [$f32('3F000000'), $f32('800000')]), 0);
    returns('le_132', () => m.call('le', [$f32('BF000000'), $f32('BF000000')]),
        0x1);
    returns('le_133', () => m.call('le', [$f32('BF000000'), $f32('3F000000')]),
        0x1);
    returns(
        'le_134', () => m.call('le', [$f32('3F000000'), $f32('BF000000')]), 0);
    returns('le_135', () => m.call('le', [$f32('3F000000'), $f32('3F000000')]),
        0x1);
    returns(
        'le_136', () => m.call('le', [$f32('BF000000'), $f32('BF800000')]), 0);
    returns('le_137', () => m.call('le', [$f32('BF000000'), $f32('3F800000')]),
        0x1);
    returns(
        'le_138', () => m.call('le', [$f32('3F000000'), $f32('BF800000')]), 0);
    returns('le_139', () => m.call('le', [$f32('3F000000'), $f32('3F800000')]),
        0x1);
    returns(
        'le_140', () => m.call('le', [$f32('BF000000'), $f32('C0C90FDB')]), 0);
    returns('le_141', () => m.call('le', [$f32('BF000000'), $f32('40C90FDB')]),
        0x1);
    returns(
        'le_142', () => m.call('le', [$f32('3F000000'), $f32('C0C90FDB')]), 0);
    returns('le_143', () => m.call('le', [$f32('3F000000'), $f32('40C90FDB')]),
        0x1);
    returns(
        'le_144', () => m.call('le', [$f32('BF000000'), $f32('FF7FFFFF')]), 0);
    returns('le_145', () => m.call('le', [$f32('BF000000'), $f32('7F7FFFFF')]),
        0x1);
    returns(
        'le_146', () => m.call('le', [$f32('3F000000'), $f32('FF7FFFFF')]), 0);
    returns('le_147', () => m.call('le', [$f32('3F000000'), $f32('7F7FFFFF')]),
        0x1);
    returns(
        'le_148', () => m.call('le', [$f32('BF000000'), $f32('FF800000')]), 0);
    returns('le_149', () => m.call('le', [$f32('BF000000'), $f32('7F800000')]),
        0x1);
    returns(
        'le_150', () => m.call('le', [$f32('3F000000'), $f32('FF800000')]), 0);
    returns('le_151', () => m.call('le', [$f32('3F000000'), $f32('7F800000')]),
        0x1);
    returns(
        'le_152', () => m.call('le', [$f32('BF000000'), $f32('FFC00000')]), 0);
    returns(
        'le_153', () => m.call('le', [$f32('BF000000'), $f32('FFA00000')]), 0);
    returns(
        'le_154', () => m.call('le', [$f32('BF000000'), $f32('7FC00000')]), 0);
    returns(
        'le_155', () => m.call('le', [$f32('BF000000'), $f32('7FA00000')]), 0);
    returns(
        'le_156', () => m.call('le', [$f32('3F000000'), $f32('FFC00000')]), 0);
    returns(
        'le_157', () => m.call('le', [$f32('3F000000'), $f32('FFA00000')]), 0);
    returns(
        'le_158', () => m.call('le', [$f32('3F000000'), $f32('7FC00000')]), 0);
    returns(
        'le_159', () => m.call('le', [$f32('3F000000'), $f32('7FA00000')]), 0);
    returns('le_160', () => m.call('le', [$f32('BF800000'), $f32('80000000')]),
        0x1);
    returns('le_161', () => m.call('le', [$f32('BF800000'), $f32('0')]), 0x1);
    returns(
        'le_162', () => m.call('le', [$f32('3F800000'), $f32('80000000')]), 0);
    returns('le_163', () => m.call('le', [$f32('3F800000'), $f32('0')]), 0);
    returns('le_164', () => m.call('le', [$f32('BF800000'), $f32('80000001')]),
        0x1);
    returns('le_165', () => m.call('le', [$f32('BF800000'), $f32('1')]), 0x1);
    returns(
        'le_166', () => m.call('le', [$f32('3F800000'), $f32('80000001')]), 0);
    returns('le_167', () => m.call('le', [$f32('3F800000'), $f32('1')]), 0);
    returns('le_168', () => m.call('le', [$f32('BF800000'), $f32('80800000')]),
        0x1);
    returns(
        'le_169', () => m.call('le', [$f32('BF800000'), $f32('800000')]), 0x1);
    returns(
        'le_170', () => m.call('le', [$f32('3F800000'), $f32('80800000')]), 0);
    returns(
        'le_171', () => m.call('le', [$f32('3F800000'), $f32('800000')]), 0);
    returns('le_172', () => m.call('le', [$f32('BF800000'), $f32('BF000000')]),
        0x1);
    returns('le_173', () => m.call('le', [$f32('BF800000'), $f32('3F000000')]),
        0x1);
    returns(
        'le_174', () => m.call('le', [$f32('3F800000'), $f32('BF000000')]), 0);
    returns(
        'le_175', () => m.call('le', [$f32('3F800000'), $f32('3F000000')]), 0);
    returns('le_176', () => m.call('le', [$f32('BF800000'), $f32('BF800000')]),
        0x1);
    returns('le_177', () => m.call('le', [$f32('BF800000'), $f32('3F800000')]),
        0x1);
    returns(
        'le_178', () => m.call('le', [$f32('3F800000'), $f32('BF800000')]), 0);
    returns('le_179', () => m.call('le', [$f32('3F800000'), $f32('3F800000')]),
        0x1);
    returns(
        'le_180', () => m.call('le', [$f32('BF800000'), $f32('C0C90FDB')]), 0);
    returns('le_181', () => m.call('le', [$f32('BF800000'), $f32('40C90FDB')]),
        0x1);
    returns(
        'le_182', () => m.call('le', [$f32('3F800000'), $f32('C0C90FDB')]), 0);
    returns('le_183', () => m.call('le', [$f32('3F800000'), $f32('40C90FDB')]),
        0x1);
    returns(
        'le_184', () => m.call('le', [$f32('BF800000'), $f32('FF7FFFFF')]), 0);
    returns('le_185', () => m.call('le', [$f32('BF800000'), $f32('7F7FFFFF')]),
        0x1);
    returns(
        'le_186', () => m.call('le', [$f32('3F800000'), $f32('FF7FFFFF')]), 0);
    returns('le_187', () => m.call('le', [$f32('3F800000'), $f32('7F7FFFFF')]),
        0x1);
    returns(
        'le_188', () => m.call('le', [$f32('BF800000'), $f32('FF800000')]), 0);
    returns('le_189', () => m.call('le', [$f32('BF800000'), $f32('7F800000')]),
        0x1);
    returns(
        'le_190', () => m.call('le', [$f32('3F800000'), $f32('FF800000')]), 0);
    returns('le_191', () => m.call('le', [$f32('3F800000'), $f32('7F800000')]),
        0x1);
    returns(
        'le_192', () => m.call('le', [$f32('BF800000'), $f32('FFC00000')]), 0);
    returns(
        'le_193', () => m.call('le', [$f32('BF800000'), $f32('FFA00000')]), 0);
    returns(
        'le_194', () => m.call('le', [$f32('BF800000'), $f32('7FC00000')]), 0);
    returns(
        'le_195', () => m.call('le', [$f32('BF800000'), $f32('7FA00000')]), 0);
    returns(
        'le_196', () => m.call('le', [$f32('3F800000'), $f32('FFC00000')]), 0);
    returns(
        'le_197', () => m.call('le', [$f32('3F800000'), $f32('FFA00000')]), 0);
    returns(
        'le_198', () => m.call('le', [$f32('3F800000'), $f32('7FC00000')]), 0);
    returns(
        'le_199', () => m.call('le', [$f32('3F800000'), $f32('7FA00000')]), 0);
    returns('le_200', () => m.call('le', [$f32('C0C90FDB'), $f32('80000000')]),
        0x1);
    returns('le_201', () => m.call('le', [$f32('C0C90FDB'), $f32('0')]), 0x1);
    returns(
        'le_202', () => m.call('le', [$f32('40C90FDB'), $f32('80000000')]), 0);
    returns('le_203', () => m.call('le', [$f32('40C90FDB'), $f32('0')]), 0);
    returns('le_204', () => m.call('le', [$f32('C0C90FDB'), $f32('80000001')]),
        0x1);
    returns('le_205', () => m.call('le', [$f32('C0C90FDB'), $f32('1')]), 0x1);
    returns(
        'le_206', () => m.call('le', [$f32('40C90FDB'), $f32('80000001')]), 0);
    returns('le_207', () => m.call('le', [$f32('40C90FDB'), $f32('1')]), 0);
    returns('le_208', () => m.call('le', [$f32('C0C90FDB'), $f32('80800000')]),
        0x1);
    returns(
        'le_209', () => m.call('le', [$f32('C0C90FDB'), $f32('800000')]), 0x1);
    returns(
        'le_210', () => m.call('le', [$f32('40C90FDB'), $f32('80800000')]), 0);
    returns(
        'le_211', () => m.call('le', [$f32('40C90FDB'), $f32('800000')]), 0);
    returns('le_212', () => m.call('le', [$f32('C0C90FDB'), $f32('BF000000')]),
        0x1);
    returns('le_213', () => m.call('le', [$f32('C0C90FDB'), $f32('3F000000')]),
        0x1);
    returns(
        'le_214', () => m.call('le', [$f32('40C90FDB'), $f32('BF000000')]), 0);
    returns(
        'le_215', () => m.call('le', [$f32('40C90FDB'), $f32('3F000000')]), 0);
    returns('le_216', () => m.call('le', [$f32('C0C90FDB'), $f32('BF800000')]),
        0x1);
    returns('le_217', () => m.call('le', [$f32('C0C90FDB'), $f32('3F800000')]),
        0x1);
    returns(
        'le_218', () => m.call('le', [$f32('40C90FDB'), $f32('BF800000')]), 0);
    returns(
        'le_219', () => m.call('le', [$f32('40C90FDB'), $f32('3F800000')]), 0);
    returns('le_220', () => m.call('le', [$f32('C0C90FDB'), $f32('C0C90FDB')]),
        0x1);
    returns('le_221', () => m.call('le', [$f32('C0C90FDB'), $f32('40C90FDB')]),
        0x1);
    returns(
        'le_222', () => m.call('le', [$f32('40C90FDB'), $f32('C0C90FDB')]), 0);
    returns('le_223', () => m.call('le', [$f32('40C90FDB'), $f32('40C90FDB')]),
        0x1);
    returns(
        'le_224', () => m.call('le', [$f32('C0C90FDB'), $f32('FF7FFFFF')]), 0);
    returns('le_225', () => m.call('le', [$f32('C0C90FDB'), $f32('7F7FFFFF')]),
        0x1);
    returns(
        'le_226', () => m.call('le', [$f32('40C90FDB'), $f32('FF7FFFFF')]), 0);
    returns('le_227', () => m.call('le', [$f32('40C90FDB'), $f32('7F7FFFFF')]),
        0x1);
    returns(
        'le_228', () => m.call('le', [$f32('C0C90FDB'), $f32('FF800000')]), 0);
    returns('le_229', () => m.call('le', [$f32('C0C90FDB'), $f32('7F800000')]),
        0x1);
    returns(
        'le_230', () => m.call('le', [$f32('40C90FDB'), $f32('FF800000')]), 0);
    returns('le_231', () => m.call('le', [$f32('40C90FDB'), $f32('7F800000')]),
        0x1);
    returns(
        'le_232', () => m.call('le', [$f32('C0C90FDB'), $f32('FFC00000')]), 0);
    returns(
        'le_233', () => m.call('le', [$f32('C0C90FDB'), $f32('FFA00000')]), 0);
    returns(
        'le_234', () => m.call('le', [$f32('C0C90FDB'), $f32('7FC00000')]), 0);
    returns(
        'le_235', () => m.call('le', [$f32('C0C90FDB'), $f32('7FA00000')]), 0);
    returns(
        'le_236', () => m.call('le', [$f32('40C90FDB'), $f32('FFC00000')]), 0);
    returns(
        'le_237', () => m.call('le', [$f32('40C90FDB'), $f32('FFA00000')]), 0);
    returns(
        'le_238', () => m.call('le', [$f32('40C90FDB'), $f32('7FC00000')]), 0);
    returns(
        'le_239', () => m.call('le', [$f32('40C90FDB'), $f32('7FA00000')]), 0);
    returns('le_240', () => m.call('le', [$f32('FF7FFFFF'), $f32('80000000')]),
        0x1);
    returns('le_241', () => m.call('le', [$f32('FF7FFFFF'), $f32('0')]), 0x1);
    returns(
        'le_242', () => m.call('le', [$f32('7F7FFFFF'), $f32('80000000')]), 0);
    returns('le_243', () => m.call('le', [$f32('7F7FFFFF'), $f32('0')]), 0);
    returns('le_244', () => m.call('le', [$f32('FF7FFFFF'), $f32('80000001')]),
        0x1);
    returns('le_245', () => m.call('le', [$f32('FF7FFFFF'), $f32('1')]), 0x1);
    returns(
        'le_246', () => m.call('le', [$f32('7F7FFFFF'), $f32('80000001')]), 0);
    returns('le_247', () => m.call('le', [$f32('7F7FFFFF'), $f32('1')]), 0);
    returns('le_248', () => m.call('le', [$f32('FF7FFFFF'), $f32('80800000')]),
        0x1);
    returns(
        'le_249', () => m.call('le', [$f32('FF7FFFFF'), $f32('800000')]), 0x1);
    returns(
        'le_250', () => m.call('le', [$f32('7F7FFFFF'), $f32('80800000')]), 0);
    returns(
        'le_251', () => m.call('le', [$f32('7F7FFFFF'), $f32('800000')]), 0);
    returns('le_252', () => m.call('le', [$f32('FF7FFFFF'), $f32('BF000000')]),
        0x1);
    returns('le_253', () => m.call('le', [$f32('FF7FFFFF'), $f32('3F000000')]),
        0x1);
    returns(
        'le_254', () => m.call('le', [$f32('7F7FFFFF'), $f32('BF000000')]), 0);
    returns(
        'le_255', () => m.call('le', [$f32('7F7FFFFF'), $f32('3F000000')]), 0);
    returns('le_256', () => m.call('le', [$f32('FF7FFFFF'), $f32('BF800000')]),
        0x1);
    returns('le_257', () => m.call('le', [$f32('FF7FFFFF'), $f32('3F800000')]),
        0x1);
    returns(
        'le_258', () => m.call('le', [$f32('7F7FFFFF'), $f32('BF800000')]), 0);
    returns(
        'le_259', () => m.call('le', [$f32('7F7FFFFF'), $f32('3F800000')]), 0);
    returns('le_260', () => m.call('le', [$f32('FF7FFFFF'), $f32('C0C90FDB')]),
        0x1);
    returns('le_261', () => m.call('le', [$f32('FF7FFFFF'), $f32('40C90FDB')]),
        0x1);
    returns(
        'le_262', () => m.call('le', [$f32('7F7FFFFF'), $f32('C0C90FDB')]), 0);
    returns(
        'le_263', () => m.call('le', [$f32('7F7FFFFF'), $f32('40C90FDB')]), 0);
    returns('le_264', () => m.call('le', [$f32('FF7FFFFF'), $f32('FF7FFFFF')]),
        0x1);
    returns('le_265', () => m.call('le', [$f32('FF7FFFFF'), $f32('7F7FFFFF')]),
        0x1);
    returns(
        'le_266', () => m.call('le', [$f32('7F7FFFFF'), $f32('FF7FFFFF')]), 0);
    returns('le_267', () => m.call('le', [$f32('7F7FFFFF'), $f32('7F7FFFFF')]),
        0x1);
    returns(
        'le_268', () => m.call('le', [$f32('FF7FFFFF'), $f32('FF800000')]), 0);
    returns('le_269', () => m.call('le', [$f32('FF7FFFFF'), $f32('7F800000')]),
        0x1);
    returns(
        'le_270', () => m.call('le', [$f32('7F7FFFFF'), $f32('FF800000')]), 0);
    returns('le_271', () => m.call('le', [$f32('7F7FFFFF'), $f32('7F800000')]),
        0x1);
    returns(
        'le_272', () => m.call('le', [$f32('FF7FFFFF'), $f32('FFC00000')]), 0);
    returns(
        'le_273', () => m.call('le', [$f32('FF7FFFFF'), $f32('FFA00000')]), 0);
    returns(
        'le_274', () => m.call('le', [$f32('FF7FFFFF'), $f32('7FC00000')]), 0);
    returns(
        'le_275', () => m.call('le', [$f32('FF7FFFFF'), $f32('7FA00000')]), 0);
    returns(
        'le_276', () => m.call('le', [$f32('7F7FFFFF'), $f32('FFC00000')]), 0);
    returns(
        'le_277', () => m.call('le', [$f32('7F7FFFFF'), $f32('FFA00000')]), 0);
    returns(
        'le_278', () => m.call('le', [$f32('7F7FFFFF'), $f32('7FC00000')]), 0);
    returns(
        'le_279', () => m.call('le', [$f32('7F7FFFFF'), $f32('7FA00000')]), 0);
    returns('le_280', () => m.call('le', [$f32('FF800000'), $f32('80000000')]),
        0x1);
    returns('le_281', () => m.call('le', [$f32('FF800000'), $f32('0')]), 0x1);
    returns(
        'le_282', () => m.call('le', [$f32('7F800000'), $f32('80000000')]), 0);
    returns('le_283', () => m.call('le', [$f32('7F800000'), $f32('0')]), 0);
    returns('le_284', () => m.call('le', [$f32('FF800000'), $f32('80000001')]),
        0x1);
    returns('le_285', () => m.call('le', [$f32('FF800000'), $f32('1')]), 0x1);
    returns(
        'le_286', () => m.call('le', [$f32('7F800000'), $f32('80000001')]), 0);
    returns('le_287', () => m.call('le', [$f32('7F800000'), $f32('1')]), 0);
    returns('le_288', () => m.call('le', [$f32('FF800000'), $f32('80800000')]),
        0x1);
    returns(
        'le_289', () => m.call('le', [$f32('FF800000'), $f32('800000')]), 0x1);
    returns(
        'le_290', () => m.call('le', [$f32('7F800000'), $f32('80800000')]), 0);
    returns(
        'le_291', () => m.call('le', [$f32('7F800000'), $f32('800000')]), 0);
    returns('le_292', () => m.call('le', [$f32('FF800000'), $f32('BF000000')]),
        0x1);
    returns('le_293', () => m.call('le', [$f32('FF800000'), $f32('3F000000')]),
        0x1);
    returns(
        'le_294', () => m.call('le', [$f32('7F800000'), $f32('BF000000')]), 0);
    returns(
        'le_295', () => m.call('le', [$f32('7F800000'), $f32('3F000000')]), 0);
    returns('le_296', () => m.call('le', [$f32('FF800000'), $f32('BF800000')]),
        0x1);
    returns('le_297', () => m.call('le', [$f32('FF800000'), $f32('3F800000')]),
        0x1);
    returns(
        'le_298', () => m.call('le', [$f32('7F800000'), $f32('BF800000')]), 0);
    returns(
        'le_299', () => m.call('le', [$f32('7F800000'), $f32('3F800000')]), 0);
    returns('le_300', () => m.call('le', [$f32('FF800000'), $f32('C0C90FDB')]),
        0x1);
    returns('le_301', () => m.call('le', [$f32('FF800000'), $f32('40C90FDB')]),
        0x1);
    returns(
        'le_302', () => m.call('le', [$f32('7F800000'), $f32('C0C90FDB')]), 0);
    returns(
        'le_303', () => m.call('le', [$f32('7F800000'), $f32('40C90FDB')]), 0);
    returns('le_304', () => m.call('le', [$f32('FF800000'), $f32('FF7FFFFF')]),
        0x1);
    returns('le_305', () => m.call('le', [$f32('FF800000'), $f32('7F7FFFFF')]),
        0x1);
    returns(
        'le_306', () => m.call('le', [$f32('7F800000'), $f32('FF7FFFFF')]), 0);
    returns(
        'le_307', () => m.call('le', [$f32('7F800000'), $f32('7F7FFFFF')]), 0);
    returns('le_308', () => m.call('le', [$f32('FF800000'), $f32('FF800000')]),
        0x1);
    returns('le_309', () => m.call('le', [$f32('FF800000'), $f32('7F800000')]),
        0x1);
    returns(
        'le_310', () => m.call('le', [$f32('7F800000'), $f32('FF800000')]), 0);
    returns('le_311', () => m.call('le', [$f32('7F800000'), $f32('7F800000')]),
        0x1);
    returns(
        'le_312', () => m.call('le', [$f32('FF800000'), $f32('FFC00000')]), 0);
    returns(
        'le_313', () => m.call('le', [$f32('FF800000'), $f32('FFA00000')]), 0);
    returns(
        'le_314', () => m.call('le', [$f32('FF800000'), $f32('7FC00000')]), 0);
    returns(
        'le_315', () => m.call('le', [$f32('FF800000'), $f32('7FA00000')]), 0);
    returns(
        'le_316', () => m.call('le', [$f32('7F800000'), $f32('FFC00000')]), 0);
    returns(
        'le_317', () => m.call('le', [$f32('7F800000'), $f32('FFA00000')]), 0);
    returns(
        'le_318', () => m.call('le', [$f32('7F800000'), $f32('7FC00000')]), 0);
    returns(
        'le_319', () => m.call('le', [$f32('7F800000'), $f32('7FA00000')]), 0);
    returns(
        'le_320', () => m.call('le', [$f32('FFC00000'), $f32('80000000')]), 0);
    returns(
        'le_321', () => m.call('le', [$f32('FFA00000'), $f32('80000000')]), 0);
    returns('le_322', () => m.call('le', [$f32('FFC00000'), $f32('0')]), 0);
    returns('le_323', () => m.call('le', [$f32('FFA00000'), $f32('0')]), 0);
    returns(
        'le_324', () => m.call('le', [$f32('7FC00000'), $f32('80000000')]), 0);
    returns(
        'le_325', () => m.call('le', [$f32('7FA00000'), $f32('80000000')]), 0);
    returns('le_326', () => m.call('le', [$f32('7FC00000'), $f32('0')]), 0);
    returns('le_327', () => m.call('le', [$f32('7FA00000'), $f32('0')]), 0);
    returns(
        'le_328', () => m.call('le', [$f32('FFC00000'), $f32('80000001')]), 0);
    returns(
        'le_329', () => m.call('le', [$f32('FFA00000'), $f32('80000001')]), 0);
    returns('le_330', () => m.call('le', [$f32('FFC00000'), $f32('1')]), 0);
    returns('le_331', () => m.call('le', [$f32('FFA00000'), $f32('1')]), 0);
    returns(
        'le_332', () => m.call('le', [$f32('7FC00000'), $f32('80000001')]), 0);
    returns(
        'le_333', () => m.call('le', [$f32('7FA00000'), $f32('80000001')]), 0);
    returns('le_334', () => m.call('le', [$f32('7FC00000'), $f32('1')]), 0);
    returns('le_335', () => m.call('le', [$f32('7FA00000'), $f32('1')]), 0);
    returns(
        'le_336', () => m.call('le', [$f32('FFC00000'), $f32('80800000')]), 0);
    returns(
        'le_337', () => m.call('le', [$f32('FFA00000'), $f32('80800000')]), 0);
    returns(
        'le_338', () => m.call('le', [$f32('FFC00000'), $f32('800000')]), 0);
    returns(
        'le_339', () => m.call('le', [$f32('FFA00000'), $f32('800000')]), 0);
    returns(
        'le_340', () => m.call('le', [$f32('7FC00000'), $f32('80800000')]), 0);
    returns(
        'le_341', () => m.call('le', [$f32('7FA00000'), $f32('80800000')]), 0);
    returns(
        'le_342', () => m.call('le', [$f32('7FC00000'), $f32('800000')]), 0);
    returns(
        'le_343', () => m.call('le', [$f32('7FA00000'), $f32('800000')]), 0);
    returns(
        'le_344', () => m.call('le', [$f32('FFC00000'), $f32('BF000000')]), 0);
    returns(
        'le_345', () => m.call('le', [$f32('FFA00000'), $f32('BF000000')]), 0);
    returns(
        'le_346', () => m.call('le', [$f32('FFC00000'), $f32('3F000000')]), 0);
    returns(
        'le_347', () => m.call('le', [$f32('FFA00000'), $f32('3F000000')]), 0);
    returns(
        'le_348', () => m.call('le', [$f32('7FC00000'), $f32('BF000000')]), 0);
    returns(
        'le_349', () => m.call('le', [$f32('7FA00000'), $f32('BF000000')]), 0);
    returns(
        'le_350', () => m.call('le', [$f32('7FC00000'), $f32('3F000000')]), 0);
    returns(
        'le_351', () => m.call('le', [$f32('7FA00000'), $f32('3F000000')]), 0);
    returns(
        'le_352', () => m.call('le', [$f32('FFC00000'), $f32('BF800000')]), 0);
    returns(
        'le_353', () => m.call('le', [$f32('FFA00000'), $f32('BF800000')]), 0);
    returns(
        'le_354', () => m.call('le', [$f32('FFC00000'), $f32('3F800000')]), 0);
    returns(
        'le_355', () => m.call('le', [$f32('FFA00000'), $f32('3F800000')]), 0);
    returns(
        'le_356', () => m.call('le', [$f32('7FC00000'), $f32('BF800000')]), 0);
    returns(
        'le_357', () => m.call('le', [$f32('7FA00000'), $f32('BF800000')]), 0);
    returns(
        'le_358', () => m.call('le', [$f32('7FC00000'), $f32('3F800000')]), 0);
    returns(
        'le_359', () => m.call('le', [$f32('7FA00000'), $f32('3F800000')]), 0);
    returns(
        'le_360', () => m.call('le', [$f32('FFC00000'), $f32('C0C90FDB')]), 0);
    returns(
        'le_361', () => m.call('le', [$f32('FFA00000'), $f32('C0C90FDB')]), 0);
    returns(
        'le_362', () => m.call('le', [$f32('FFC00000'), $f32('40C90FDB')]), 0);
    returns(
        'le_363', () => m.call('le', [$f32('FFA00000'), $f32('40C90FDB')]), 0);
    returns(
        'le_364', () => m.call('le', [$f32('7FC00000'), $f32('C0C90FDB')]), 0);
    returns(
        'le_365', () => m.call('le', [$f32('7FA00000'), $f32('C0C90FDB')]), 0);
    returns(
        'le_366', () => m.call('le', [$f32('7FC00000'), $f32('40C90FDB')]), 0);
    returns(
        'le_367', () => m.call('le', [$f32('7FA00000'), $f32('40C90FDB')]), 0);
    returns(
        'le_368', () => m.call('le', [$f32('FFC00000'), $f32('FF7FFFFF')]), 0);
    returns(
        'le_369', () => m.call('le', [$f32('FFA00000'), $f32('FF7FFFFF')]), 0);
    returns(
        'le_370', () => m.call('le', [$f32('FFC00000'), $f32('7F7FFFFF')]), 0);
    returns(
        'le_371', () => m.call('le', [$f32('FFA00000'), $f32('7F7FFFFF')]), 0);
    returns(
        'le_372', () => m.call('le', [$f32('7FC00000'), $f32('FF7FFFFF')]), 0);
    returns(
        'le_373', () => m.call('le', [$f32('7FA00000'), $f32('FF7FFFFF')]), 0);
    returns(
        'le_374', () => m.call('le', [$f32('7FC00000'), $f32('7F7FFFFF')]), 0);
    returns(
        'le_375', () => m.call('le', [$f32('7FA00000'), $f32('7F7FFFFF')]), 0);
    returns(
        'le_376', () => m.call('le', [$f32('FFC00000'), $f32('FF800000')]), 0);
    returns(
        'le_377', () => m.call('le', [$f32('FFA00000'), $f32('FF800000')]), 0);
    returns(
        'le_378', () => m.call('le', [$f32('FFC00000'), $f32('7F800000')]), 0);
    returns(
        'le_379', () => m.call('le', [$f32('FFA00000'), $f32('7F800000')]), 0);
    returns(
        'le_380', () => m.call('le', [$f32('7FC00000'), $f32('FF800000')]), 0);
    returns(
        'le_381', () => m.call('le', [$f32('7FA00000'), $f32('FF800000')]), 0);
    returns(
        'le_382', () => m.call('le', [$f32('7FC00000'), $f32('7F800000')]), 0);
    returns(
        'le_383', () => m.call('le', [$f32('7FA00000'), $f32('7F800000')]), 0);
    returns(
        'le_384', () => m.call('le', [$f32('FFC00000'), $f32('FFC00000')]), 0);
    returns(
        'le_385', () => m.call('le', [$f32('FFA00000'), $f32('FFC00000')]), 0);
    returns(
        'le_386', () => m.call('le', [$f32('FFC00000'), $f32('FFA00000')]), 0);
    returns(
        'le_387', () => m.call('le', [$f32('FFA00000'), $f32('FFA00000')]), 0);
    returns(
        'le_388', () => m.call('le', [$f32('FFC00000'), $f32('7FC00000')]), 0);
    returns(
        'le_389', () => m.call('le', [$f32('FFA00000'), $f32('7FC00000')]), 0);
    returns(
        'le_390', () => m.call('le', [$f32('FFC00000'), $f32('7FA00000')]), 0);
    returns(
        'le_391', () => m.call('le', [$f32('FFA00000'), $f32('7FA00000')]), 0);
    returns(
        'le_392', () => m.call('le', [$f32('7FC00000'), $f32('FFC00000')]), 0);
    returns(
        'le_393', () => m.call('le', [$f32('7FA00000'), $f32('FFC00000')]), 0);
    returns(
        'le_394', () => m.call('le', [$f32('7FC00000'), $f32('FFA00000')]), 0);
    returns(
        'le_395', () => m.call('le', [$f32('7FA00000'), $f32('FFA00000')]), 0);
    returns(
        'le_396', () => m.call('le', [$f32('7FC00000'), $f32('7FC00000')]), 0);
    returns(
        'le_397', () => m.call('le', [$f32('7FA00000'), $f32('7FC00000')]), 0);
    returns(
        'le_398', () => m.call('le', [$f32('7FC00000'), $f32('7FA00000')]), 0);
    returns(
        'le_399', () => m.call('le', [$f32('7FA00000'), $f32('7FA00000')]), 0);
    returns(
        'gt_0', () => m.call('gt', [$f32('80000000'), $f32('80000000')]), 0);
    returns('gt_1', () => m.call('gt', [$f32('80000000'), $f32('0')]), 0);
    returns('gt_2', () => m.call('gt', [$f32('0'), $f32('80000000')]), 0);
    returns('gt_3', () => m.call('gt', [$f32('0'), $f32('0')]), 0);
    returns(
        'gt_4', () => m.call('gt', [$f32('80000000'), $f32('80000001')]), 0x1);
    returns('gt_5', () => m.call('gt', [$f32('80000000'), $f32('1')]), 0);
    returns('gt_6', () => m.call('gt', [$f32('0'), $f32('80000001')]), 0x1);
    returns('gt_7', () => m.call('gt', [$f32('0'), $f32('1')]), 0);
    returns(
        'gt_8', () => m.call('gt', [$f32('80000000'), $f32('80800000')]), 0x1);
    returns('gt_9', () => m.call('gt', [$f32('80000000'), $f32('800000')]), 0);
    returns('gt_10', () => m.call('gt', [$f32('0'), $f32('80800000')]), 0x1);
    returns('gt_11', () => m.call('gt', [$f32('0'), $f32('800000')]), 0);
    returns(
        'gt_12', () => m.call('gt', [$f32('80000000'), $f32('BF000000')]), 0x1);
    returns(
        'gt_13', () => m.call('gt', [$f32('80000000'), $f32('3F000000')]), 0);
    returns('gt_14', () => m.call('gt', [$f32('0'), $f32('BF000000')]), 0x1);
    returns('gt_15', () => m.call('gt', [$f32('0'), $f32('3F000000')]), 0);
    returns(
        'gt_16', () => m.call('gt', [$f32('80000000'), $f32('BF800000')]), 0x1);
    returns(
        'gt_17', () => m.call('gt', [$f32('80000000'), $f32('3F800000')]), 0);
    returns('gt_18', () => m.call('gt', [$f32('0'), $f32('BF800000')]), 0x1);
    returns('gt_19', () => m.call('gt', [$f32('0'), $f32('3F800000')]), 0);
    returns(
        'gt_20', () => m.call('gt', [$f32('80000000'), $f32('C0C90FDB')]), 0x1);
    returns(
        'gt_21', () => m.call('gt', [$f32('80000000'), $f32('40C90FDB')]), 0);
    returns('gt_22', () => m.call('gt', [$f32('0'), $f32('C0C90FDB')]), 0x1);
    returns('gt_23', () => m.call('gt', [$f32('0'), $f32('40C90FDB')]), 0);
    returns(
        'gt_24', () => m.call('gt', [$f32('80000000'), $f32('FF7FFFFF')]), 0x1);
    returns(
        'gt_25', () => m.call('gt', [$f32('80000000'), $f32('7F7FFFFF')]), 0);
    returns('gt_26', () => m.call('gt', [$f32('0'), $f32('FF7FFFFF')]), 0x1);
    returns('gt_27', () => m.call('gt', [$f32('0'), $f32('7F7FFFFF')]), 0);
    returns(
        'gt_28', () => m.call('gt', [$f32('80000000'), $f32('FF800000')]), 0x1);
    returns(
        'gt_29', () => m.call('gt', [$f32('80000000'), $f32('7F800000')]), 0);
    returns('gt_30', () => m.call('gt', [$f32('0'), $f32('FF800000')]), 0x1);
    returns('gt_31', () => m.call('gt', [$f32('0'), $f32('7F800000')]), 0);
    returns(
        'gt_32', () => m.call('gt', [$f32('80000000'), $f32('FFC00000')]), 0);
    returns(
        'gt_33', () => m.call('gt', [$f32('80000000'), $f32('FFA00000')]), 0);
    returns(
        'gt_34', () => m.call('gt', [$f32('80000000'), $f32('7FC00000')]), 0);
    returns(
        'gt_35', () => m.call('gt', [$f32('80000000'), $f32('7FA00000')]), 0);
    returns('gt_36', () => m.call('gt', [$f32('0'), $f32('FFC00000')]), 0);
    returns('gt_37', () => m.call('gt', [$f32('0'), $f32('FFA00000')]), 0);
    returns('gt_38', () => m.call('gt', [$f32('0'), $f32('7FC00000')]), 0);
    returns('gt_39', () => m.call('gt', [$f32('0'), $f32('7FA00000')]), 0);
    returns(
        'gt_40', () => m.call('gt', [$f32('80000001'), $f32('80000000')]), 0);
    returns('gt_41', () => m.call('gt', [$f32('80000001'), $f32('0')]), 0);
    returns('gt_42', () => m.call('gt', [$f32('1'), $f32('80000000')]), 0x1);
    returns('gt_43', () => m.call('gt', [$f32('1'), $f32('0')]), 0x1);
    returns(
        'gt_44', () => m.call('gt', [$f32('80000001'), $f32('80000001')]), 0);
    returns('gt_45', () => m.call('gt', [$f32('80000001'), $f32('1')]), 0);
    returns('gt_46', () => m.call('gt', [$f32('1'), $f32('80000001')]), 0x1);
    returns('gt_47', () => m.call('gt', [$f32('1'), $f32('1')]), 0);
    returns(
        'gt_48', () => m.call('gt', [$f32('80000001'), $f32('80800000')]), 0x1);
    returns('gt_49', () => m.call('gt', [$f32('80000001'), $f32('800000')]), 0);
    returns('gt_50', () => m.call('gt', [$f32('1'), $f32('80800000')]), 0x1);
    returns('gt_51', () => m.call('gt', [$f32('1'), $f32('800000')]), 0);
    returns(
        'gt_52', () => m.call('gt', [$f32('80000001'), $f32('BF000000')]), 0x1);
    returns(
        'gt_53', () => m.call('gt', [$f32('80000001'), $f32('3F000000')]), 0);
    returns('gt_54', () => m.call('gt', [$f32('1'), $f32('BF000000')]), 0x1);
    returns('gt_55', () => m.call('gt', [$f32('1'), $f32('3F000000')]), 0);
    returns(
        'gt_56', () => m.call('gt', [$f32('80000001'), $f32('BF800000')]), 0x1);
    returns(
        'gt_57', () => m.call('gt', [$f32('80000001'), $f32('3F800000')]), 0);
    returns('gt_58', () => m.call('gt', [$f32('1'), $f32('BF800000')]), 0x1);
    returns('gt_59', () => m.call('gt', [$f32('1'), $f32('3F800000')]), 0);
    returns(
        'gt_60', () => m.call('gt', [$f32('80000001'), $f32('C0C90FDB')]), 0x1);
    returns(
        'gt_61', () => m.call('gt', [$f32('80000001'), $f32('40C90FDB')]), 0);
    returns('gt_62', () => m.call('gt', [$f32('1'), $f32('C0C90FDB')]), 0x1);
    returns('gt_63', () => m.call('gt', [$f32('1'), $f32('40C90FDB')]), 0);
    returns(
        'gt_64', () => m.call('gt', [$f32('80000001'), $f32('FF7FFFFF')]), 0x1);
    returns(
        'gt_65', () => m.call('gt', [$f32('80000001'), $f32('7F7FFFFF')]), 0);
    returns('gt_66', () => m.call('gt', [$f32('1'), $f32('FF7FFFFF')]), 0x1);
    returns('gt_67', () => m.call('gt', [$f32('1'), $f32('7F7FFFFF')]), 0);
    returns(
        'gt_68', () => m.call('gt', [$f32('80000001'), $f32('FF800000')]), 0x1);
    returns(
        'gt_69', () => m.call('gt', [$f32('80000001'), $f32('7F800000')]), 0);
    returns('gt_70', () => m.call('gt', [$f32('1'), $f32('FF800000')]), 0x1);
    returns('gt_71', () => m.call('gt', [$f32('1'), $f32('7F800000')]), 0);
    returns(
        'gt_72', () => m.call('gt', [$f32('80000001'), $f32('FFC00000')]), 0);
    returns(
        'gt_73', () => m.call('gt', [$f32('80000001'), $f32('FFA00000')]), 0);
    returns(
        'gt_74', () => m.call('gt', [$f32('80000001'), $f32('7FC00000')]), 0);
    returns(
        'gt_75', () => m.call('gt', [$f32('80000001'), $f32('7FA00000')]), 0);
    returns('gt_76', () => m.call('gt', [$f32('1'), $f32('FFC00000')]), 0);
    returns('gt_77', () => m.call('gt', [$f32('1'), $f32('FFA00000')]), 0);
    returns('gt_78', () => m.call('gt', [$f32('1'), $f32('7FC00000')]), 0);
    returns('gt_79', () => m.call('gt', [$f32('1'), $f32('7FA00000')]), 0);
    returns(
        'gt_80', () => m.call('gt', [$f32('80800000'), $f32('80000000')]), 0);
    returns('gt_81', () => m.call('gt', [$f32('80800000'), $f32('0')]), 0);
    returns(
        'gt_82', () => m.call('gt', [$f32('800000'), $f32('80000000')]), 0x1);
    returns('gt_83', () => m.call('gt', [$f32('800000'), $f32('0')]), 0x1);
    returns(
        'gt_84', () => m.call('gt', [$f32('80800000'), $f32('80000001')]), 0);
    returns('gt_85', () => m.call('gt', [$f32('80800000'), $f32('1')]), 0);
    returns(
        'gt_86', () => m.call('gt', [$f32('800000'), $f32('80000001')]), 0x1);
    returns('gt_87', () => m.call('gt', [$f32('800000'), $f32('1')]), 0x1);
    returns(
        'gt_88', () => m.call('gt', [$f32('80800000'), $f32('80800000')]), 0);
    returns('gt_89', () => m.call('gt', [$f32('80800000'), $f32('800000')]), 0);
    returns(
        'gt_90', () => m.call('gt', [$f32('800000'), $f32('80800000')]), 0x1);
    returns('gt_91', () => m.call('gt', [$f32('800000'), $f32('800000')]), 0);
    returns(
        'gt_92', () => m.call('gt', [$f32('80800000'), $f32('BF000000')]), 0x1);
    returns(
        'gt_93', () => m.call('gt', [$f32('80800000'), $f32('3F000000')]), 0);
    returns(
        'gt_94', () => m.call('gt', [$f32('800000'), $f32('BF000000')]), 0x1);
    returns('gt_95', () => m.call('gt', [$f32('800000'), $f32('3F000000')]), 0);
    returns(
        'gt_96', () => m.call('gt', [$f32('80800000'), $f32('BF800000')]), 0x1);
    returns(
        'gt_97', () => m.call('gt', [$f32('80800000'), $f32('3F800000')]), 0);
    returns(
        'gt_98', () => m.call('gt', [$f32('800000'), $f32('BF800000')]), 0x1);
    returns('gt_99', () => m.call('gt', [$f32('800000'), $f32('3F800000')]), 0);
    returns('gt_100', () => m.call('gt', [$f32('80800000'), $f32('C0C90FDB')]),
        0x1);
    returns(
        'gt_101', () => m.call('gt', [$f32('80800000'), $f32('40C90FDB')]), 0);
    returns(
        'gt_102', () => m.call('gt', [$f32('800000'), $f32('C0C90FDB')]), 0x1);
    returns(
        'gt_103', () => m.call('gt', [$f32('800000'), $f32('40C90FDB')]), 0);
    returns('gt_104', () => m.call('gt', [$f32('80800000'), $f32('FF7FFFFF')]),
        0x1);
    returns(
        'gt_105', () => m.call('gt', [$f32('80800000'), $f32('7F7FFFFF')]), 0);
    returns(
        'gt_106', () => m.call('gt', [$f32('800000'), $f32('FF7FFFFF')]), 0x1);
    returns(
        'gt_107', () => m.call('gt', [$f32('800000'), $f32('7F7FFFFF')]), 0);
    returns('gt_108', () => m.call('gt', [$f32('80800000'), $f32('FF800000')]),
        0x1);
    returns(
        'gt_109', () => m.call('gt', [$f32('80800000'), $f32('7F800000')]), 0);
    returns(
        'gt_110', () => m.call('gt', [$f32('800000'), $f32('FF800000')]), 0x1);
    returns(
        'gt_111', () => m.call('gt', [$f32('800000'), $f32('7F800000')]), 0);
    returns(
        'gt_112', () => m.call('gt', [$f32('80800000'), $f32('FFC00000')]), 0);
    returns(
        'gt_113', () => m.call('gt', [$f32('80800000'), $f32('FFA00000')]), 0);
    returns(
        'gt_114', () => m.call('gt', [$f32('80800000'), $f32('7FC00000')]), 0);
    returns(
        'gt_115', () => m.call('gt', [$f32('80800000'), $f32('7FA00000')]), 0);
    returns(
        'gt_116', () => m.call('gt', [$f32('800000'), $f32('FFC00000')]), 0);
    returns(
        'gt_117', () => m.call('gt', [$f32('800000'), $f32('FFA00000')]), 0);
    returns(
        'gt_118', () => m.call('gt', [$f32('800000'), $f32('7FC00000')]), 0);
    returns(
        'gt_119', () => m.call('gt', [$f32('800000'), $f32('7FA00000')]), 0);
    returns(
        'gt_120', () => m.call('gt', [$f32('BF000000'), $f32('80000000')]), 0);
    returns('gt_121', () => m.call('gt', [$f32('BF000000'), $f32('0')]), 0);
    returns('gt_122', () => m.call('gt', [$f32('3F000000'), $f32('80000000')]),
        0x1);
    returns('gt_123', () => m.call('gt', [$f32('3F000000'), $f32('0')]), 0x1);
    returns(
        'gt_124', () => m.call('gt', [$f32('BF000000'), $f32('80000001')]), 0);
    returns('gt_125', () => m.call('gt', [$f32('BF000000'), $f32('1')]), 0);
    returns('gt_126', () => m.call('gt', [$f32('3F000000'), $f32('80000001')]),
        0x1);
    returns('gt_127', () => m.call('gt', [$f32('3F000000'), $f32('1')]), 0x1);
    returns(
        'gt_128', () => m.call('gt', [$f32('BF000000'), $f32('80800000')]), 0);
    returns(
        'gt_129', () => m.call('gt', [$f32('BF000000'), $f32('800000')]), 0);
    returns('gt_130', () => m.call('gt', [$f32('3F000000'), $f32('80800000')]),
        0x1);
    returns(
        'gt_131', () => m.call('gt', [$f32('3F000000'), $f32('800000')]), 0x1);
    returns(
        'gt_132', () => m.call('gt', [$f32('BF000000'), $f32('BF000000')]), 0);
    returns(
        'gt_133', () => m.call('gt', [$f32('BF000000'), $f32('3F000000')]), 0);
    returns('gt_134', () => m.call('gt', [$f32('3F000000'), $f32('BF000000')]),
        0x1);
    returns(
        'gt_135', () => m.call('gt', [$f32('3F000000'), $f32('3F000000')]), 0);
    returns('gt_136', () => m.call('gt', [$f32('BF000000'), $f32('BF800000')]),
        0x1);
    returns(
        'gt_137', () => m.call('gt', [$f32('BF000000'), $f32('3F800000')]), 0);
    returns('gt_138', () => m.call('gt', [$f32('3F000000'), $f32('BF800000')]),
        0x1);
    returns(
        'gt_139', () => m.call('gt', [$f32('3F000000'), $f32('3F800000')]), 0);
    returns('gt_140', () => m.call('gt', [$f32('BF000000'), $f32('C0C90FDB')]),
        0x1);
    returns(
        'gt_141', () => m.call('gt', [$f32('BF000000'), $f32('40C90FDB')]), 0);
    returns('gt_142', () => m.call('gt', [$f32('3F000000'), $f32('C0C90FDB')]),
        0x1);
    returns(
        'gt_143', () => m.call('gt', [$f32('3F000000'), $f32('40C90FDB')]), 0);
    returns('gt_144', () => m.call('gt', [$f32('BF000000'), $f32('FF7FFFFF')]),
        0x1);
    returns(
        'gt_145', () => m.call('gt', [$f32('BF000000'), $f32('7F7FFFFF')]), 0);
    returns('gt_146', () => m.call('gt', [$f32('3F000000'), $f32('FF7FFFFF')]),
        0x1);
    returns(
        'gt_147', () => m.call('gt', [$f32('3F000000'), $f32('7F7FFFFF')]), 0);
    returns('gt_148', () => m.call('gt', [$f32('BF000000'), $f32('FF800000')]),
        0x1);
    returns(
        'gt_149', () => m.call('gt', [$f32('BF000000'), $f32('7F800000')]), 0);
    returns('gt_150', () => m.call('gt', [$f32('3F000000'), $f32('FF800000')]),
        0x1);
    returns(
        'gt_151', () => m.call('gt', [$f32('3F000000'), $f32('7F800000')]), 0);
    returns(
        'gt_152', () => m.call('gt', [$f32('BF000000'), $f32('FFC00000')]), 0);
    returns(
        'gt_153', () => m.call('gt', [$f32('BF000000'), $f32('FFA00000')]), 0);
    returns(
        'gt_154', () => m.call('gt', [$f32('BF000000'), $f32('7FC00000')]), 0);
    returns(
        'gt_155', () => m.call('gt', [$f32('BF000000'), $f32('7FA00000')]), 0);
    returns(
        'gt_156', () => m.call('gt', [$f32('3F000000'), $f32('FFC00000')]), 0);
    returns(
        'gt_157', () => m.call('gt', [$f32('3F000000'), $f32('FFA00000')]), 0);
    returns(
        'gt_158', () => m.call('gt', [$f32('3F000000'), $f32('7FC00000')]), 0);
    returns(
        'gt_159', () => m.call('gt', [$f32('3F000000'), $f32('7FA00000')]), 0);
    returns(
        'gt_160', () => m.call('gt', [$f32('BF800000'), $f32('80000000')]), 0);
    returns('gt_161', () => m.call('gt', [$f32('BF800000'), $f32('0')]), 0);
    returns('gt_162', () => m.call('gt', [$f32('3F800000'), $f32('80000000')]),
        0x1);
    returns('gt_163', () => m.call('gt', [$f32('3F800000'), $f32('0')]), 0x1);
    returns(
        'gt_164', () => m.call('gt', [$f32('BF800000'), $f32('80000001')]), 0);
    returns('gt_165', () => m.call('gt', [$f32('BF800000'), $f32('1')]), 0);
    returns('gt_166', () => m.call('gt', [$f32('3F800000'), $f32('80000001')]),
        0x1);
    returns('gt_167', () => m.call('gt', [$f32('3F800000'), $f32('1')]), 0x1);
    returns(
        'gt_168', () => m.call('gt', [$f32('BF800000'), $f32('80800000')]), 0);
    returns(
        'gt_169', () => m.call('gt', [$f32('BF800000'), $f32('800000')]), 0);
    returns('gt_170', () => m.call('gt', [$f32('3F800000'), $f32('80800000')]),
        0x1);
    returns(
        'gt_171', () => m.call('gt', [$f32('3F800000'), $f32('800000')]), 0x1);
    returns(
        'gt_172', () => m.call('gt', [$f32('BF800000'), $f32('BF000000')]), 0);
    returns(
        'gt_173', () => m.call('gt', [$f32('BF800000'), $f32('3F000000')]), 0);
    returns('gt_174', () => m.call('gt', [$f32('3F800000'), $f32('BF000000')]),
        0x1);
    returns('gt_175', () => m.call('gt', [$f32('3F800000'), $f32('3F000000')]),
        0x1);
    returns(
        'gt_176', () => m.call('gt', [$f32('BF800000'), $f32('BF800000')]), 0);
    returns(
        'gt_177', () => m.call('gt', [$f32('BF800000'), $f32('3F800000')]), 0);
    returns('gt_178', () => m.call('gt', [$f32('3F800000'), $f32('BF800000')]),
        0x1);
    returns(
        'gt_179', () => m.call('gt', [$f32('3F800000'), $f32('3F800000')]), 0);
    returns('gt_180', () => m.call('gt', [$f32('BF800000'), $f32('C0C90FDB')]),
        0x1);
    returns(
        'gt_181', () => m.call('gt', [$f32('BF800000'), $f32('40C90FDB')]), 0);
    returns('gt_182', () => m.call('gt', [$f32('3F800000'), $f32('C0C90FDB')]),
        0x1);
    returns(
        'gt_183', () => m.call('gt', [$f32('3F800000'), $f32('40C90FDB')]), 0);
    returns('gt_184', () => m.call('gt', [$f32('BF800000'), $f32('FF7FFFFF')]),
        0x1);
    returns(
        'gt_185', () => m.call('gt', [$f32('BF800000'), $f32('7F7FFFFF')]), 0);
    returns('gt_186', () => m.call('gt', [$f32('3F800000'), $f32('FF7FFFFF')]),
        0x1);
    returns(
        'gt_187', () => m.call('gt', [$f32('3F800000'), $f32('7F7FFFFF')]), 0);
    returns('gt_188', () => m.call('gt', [$f32('BF800000'), $f32('FF800000')]),
        0x1);
    returns(
        'gt_189', () => m.call('gt', [$f32('BF800000'), $f32('7F800000')]), 0);
    returns('gt_190', () => m.call('gt', [$f32('3F800000'), $f32('FF800000')]),
        0x1);
    returns(
        'gt_191', () => m.call('gt', [$f32('3F800000'), $f32('7F800000')]), 0);
    returns(
        'gt_192', () => m.call('gt', [$f32('BF800000'), $f32('FFC00000')]), 0);
    returns(
        'gt_193', () => m.call('gt', [$f32('BF800000'), $f32('FFA00000')]), 0);
    returns(
        'gt_194', () => m.call('gt', [$f32('BF800000'), $f32('7FC00000')]), 0);
    returns(
        'gt_195', () => m.call('gt', [$f32('BF800000'), $f32('7FA00000')]), 0);
    returns(
        'gt_196', () => m.call('gt', [$f32('3F800000'), $f32('FFC00000')]), 0);
    returns(
        'gt_197', () => m.call('gt', [$f32('3F800000'), $f32('FFA00000')]), 0);
    returns(
        'gt_198', () => m.call('gt', [$f32('3F800000'), $f32('7FC00000')]), 0);
    returns(
        'gt_199', () => m.call('gt', [$f32('3F800000'), $f32('7FA00000')]), 0);
    returns(
        'gt_200', () => m.call('gt', [$f32('C0C90FDB'), $f32('80000000')]), 0);
    returns('gt_201', () => m.call('gt', [$f32('C0C90FDB'), $f32('0')]), 0);
    returns('gt_202', () => m.call('gt', [$f32('40C90FDB'), $f32('80000000')]),
        0x1);
    returns('gt_203', () => m.call('gt', [$f32('40C90FDB'), $f32('0')]), 0x1);
    returns(
        'gt_204', () => m.call('gt', [$f32('C0C90FDB'), $f32('80000001')]), 0);
    returns('gt_205', () => m.call('gt', [$f32('C0C90FDB'), $f32('1')]), 0);
    returns('gt_206', () => m.call('gt', [$f32('40C90FDB'), $f32('80000001')]),
        0x1);
    returns('gt_207', () => m.call('gt', [$f32('40C90FDB'), $f32('1')]), 0x1);
    returns(
        'gt_208', () => m.call('gt', [$f32('C0C90FDB'), $f32('80800000')]), 0);
    returns(
        'gt_209', () => m.call('gt', [$f32('C0C90FDB'), $f32('800000')]), 0);
    returns('gt_210', () => m.call('gt', [$f32('40C90FDB'), $f32('80800000')]),
        0x1);
    returns(
        'gt_211', () => m.call('gt', [$f32('40C90FDB'), $f32('800000')]), 0x1);
    returns(
        'gt_212', () => m.call('gt', [$f32('C0C90FDB'), $f32('BF000000')]), 0);
    returns(
        'gt_213', () => m.call('gt', [$f32('C0C90FDB'), $f32('3F000000')]), 0);
    returns('gt_214', () => m.call('gt', [$f32('40C90FDB'), $f32('BF000000')]),
        0x1);
    returns('gt_215', () => m.call('gt', [$f32('40C90FDB'), $f32('3F000000')]),
        0x1);
    returns(
        'gt_216', () => m.call('gt', [$f32('C0C90FDB'), $f32('BF800000')]), 0);
    returns(
        'gt_217', () => m.call('gt', [$f32('C0C90FDB'), $f32('3F800000')]), 0);
    returns('gt_218', () => m.call('gt', [$f32('40C90FDB'), $f32('BF800000')]),
        0x1);
    returns('gt_219', () => m.call('gt', [$f32('40C90FDB'), $f32('3F800000')]),
        0x1);
    returns(
        'gt_220', () => m.call('gt', [$f32('C0C90FDB'), $f32('C0C90FDB')]), 0);
    returns(
        'gt_221', () => m.call('gt', [$f32('C0C90FDB'), $f32('40C90FDB')]), 0);
    returns('gt_222', () => m.call('gt', [$f32('40C90FDB'), $f32('C0C90FDB')]),
        0x1);
    returns(
        'gt_223', () => m.call('gt', [$f32('40C90FDB'), $f32('40C90FDB')]), 0);
    returns('gt_224', () => m.call('gt', [$f32('C0C90FDB'), $f32('FF7FFFFF')]),
        0x1);
    returns(
        'gt_225', () => m.call('gt', [$f32('C0C90FDB'), $f32('7F7FFFFF')]), 0);
    returns('gt_226', () => m.call('gt', [$f32('40C90FDB'), $f32('FF7FFFFF')]),
        0x1);
    returns(
        'gt_227', () => m.call('gt', [$f32('40C90FDB'), $f32('7F7FFFFF')]), 0);
    returns('gt_228', () => m.call('gt', [$f32('C0C90FDB'), $f32('FF800000')]),
        0x1);
    returns(
        'gt_229', () => m.call('gt', [$f32('C0C90FDB'), $f32('7F800000')]), 0);
    returns('gt_230', () => m.call('gt', [$f32('40C90FDB'), $f32('FF800000')]),
        0x1);
    returns(
        'gt_231', () => m.call('gt', [$f32('40C90FDB'), $f32('7F800000')]), 0);
    returns(
        'gt_232', () => m.call('gt', [$f32('C0C90FDB'), $f32('FFC00000')]), 0);
    returns(
        'gt_233', () => m.call('gt', [$f32('C0C90FDB'), $f32('FFA00000')]), 0);
    returns(
        'gt_234', () => m.call('gt', [$f32('C0C90FDB'), $f32('7FC00000')]), 0);
    returns(
        'gt_235', () => m.call('gt', [$f32('C0C90FDB'), $f32('7FA00000')]), 0);
    returns(
        'gt_236', () => m.call('gt', [$f32('40C90FDB'), $f32('FFC00000')]), 0);
    returns(
        'gt_237', () => m.call('gt', [$f32('40C90FDB'), $f32('FFA00000')]), 0);
    returns(
        'gt_238', () => m.call('gt', [$f32('40C90FDB'), $f32('7FC00000')]), 0);
    returns(
        'gt_239', () => m.call('gt', [$f32('40C90FDB'), $f32('7FA00000')]), 0);
    returns(
        'gt_240', () => m.call('gt', [$f32('FF7FFFFF'), $f32('80000000')]), 0);
    returns('gt_241', () => m.call('gt', [$f32('FF7FFFFF'), $f32('0')]), 0);
    returns('gt_242', () => m.call('gt', [$f32('7F7FFFFF'), $f32('80000000')]),
        0x1);
    returns('gt_243', () => m.call('gt', [$f32('7F7FFFFF'), $f32('0')]), 0x1);
    returns(
        'gt_244', () => m.call('gt', [$f32('FF7FFFFF'), $f32('80000001')]), 0);
    returns('gt_245', () => m.call('gt', [$f32('FF7FFFFF'), $f32('1')]), 0);
    returns('gt_246', () => m.call('gt', [$f32('7F7FFFFF'), $f32('80000001')]),
        0x1);
    returns('gt_247', () => m.call('gt', [$f32('7F7FFFFF'), $f32('1')]), 0x1);
    returns(
        'gt_248', () => m.call('gt', [$f32('FF7FFFFF'), $f32('80800000')]), 0);
    returns(
        'gt_249', () => m.call('gt', [$f32('FF7FFFFF'), $f32('800000')]), 0);
    returns('gt_250', () => m.call('gt', [$f32('7F7FFFFF'), $f32('80800000')]),
        0x1);
    returns(
        'gt_251', () => m.call('gt', [$f32('7F7FFFFF'), $f32('800000')]), 0x1);
    returns(
        'gt_252', () => m.call('gt', [$f32('FF7FFFFF'), $f32('BF000000')]), 0);
    returns(
        'gt_253', () => m.call('gt', [$f32('FF7FFFFF'), $f32('3F000000')]), 0);
    returns('gt_254', () => m.call('gt', [$f32('7F7FFFFF'), $f32('BF000000')]),
        0x1);
    returns('gt_255', () => m.call('gt', [$f32('7F7FFFFF'), $f32('3F000000')]),
        0x1);
    returns(
        'gt_256', () => m.call('gt', [$f32('FF7FFFFF'), $f32('BF800000')]), 0);
    returns(
        'gt_257', () => m.call('gt', [$f32('FF7FFFFF'), $f32('3F800000')]), 0);
    returns('gt_258', () => m.call('gt', [$f32('7F7FFFFF'), $f32('BF800000')]),
        0x1);
    returns('gt_259', () => m.call('gt', [$f32('7F7FFFFF'), $f32('3F800000')]),
        0x1);
    returns(
        'gt_260', () => m.call('gt', [$f32('FF7FFFFF'), $f32('C0C90FDB')]), 0);
    returns(
        'gt_261', () => m.call('gt', [$f32('FF7FFFFF'), $f32('40C90FDB')]), 0);
    returns('gt_262', () => m.call('gt', [$f32('7F7FFFFF'), $f32('C0C90FDB')]),
        0x1);
    returns('gt_263', () => m.call('gt', [$f32('7F7FFFFF'), $f32('40C90FDB')]),
        0x1);
    returns(
        'gt_264', () => m.call('gt', [$f32('FF7FFFFF'), $f32('FF7FFFFF')]), 0);
    returns(
        'gt_265', () => m.call('gt', [$f32('FF7FFFFF'), $f32('7F7FFFFF')]), 0);
    returns('gt_266', () => m.call('gt', [$f32('7F7FFFFF'), $f32('FF7FFFFF')]),
        0x1);
    returns(
        'gt_267', () => m.call('gt', [$f32('7F7FFFFF'), $f32('7F7FFFFF')]), 0);
    returns('gt_268', () => m.call('gt', [$f32('FF7FFFFF'), $f32('FF800000')]),
        0x1);
    returns(
        'gt_269', () => m.call('gt', [$f32('FF7FFFFF'), $f32('7F800000')]), 0);
    returns('gt_270', () => m.call('gt', [$f32('7F7FFFFF'), $f32('FF800000')]),
        0x1);
    returns(
        'gt_271', () => m.call('gt', [$f32('7F7FFFFF'), $f32('7F800000')]), 0);
    returns(
        'gt_272', () => m.call('gt', [$f32('FF7FFFFF'), $f32('FFC00000')]), 0);
    returns(
        'gt_273', () => m.call('gt', [$f32('FF7FFFFF'), $f32('FFA00000')]), 0);
    returns(
        'gt_274', () => m.call('gt', [$f32('FF7FFFFF'), $f32('7FC00000')]), 0);
    returns(
        'gt_275', () => m.call('gt', [$f32('FF7FFFFF'), $f32('7FA00000')]), 0);
    returns(
        'gt_276', () => m.call('gt', [$f32('7F7FFFFF'), $f32('FFC00000')]), 0);
    returns(
        'gt_277', () => m.call('gt', [$f32('7F7FFFFF'), $f32('FFA00000')]), 0);
    returns(
        'gt_278', () => m.call('gt', [$f32('7F7FFFFF'), $f32('7FC00000')]), 0);
    returns(
        'gt_279', () => m.call('gt', [$f32('7F7FFFFF'), $f32('7FA00000')]), 0);
    returns(
        'gt_280', () => m.call('gt', [$f32('FF800000'), $f32('80000000')]), 0);
    returns('gt_281', () => m.call('gt', [$f32('FF800000'), $f32('0')]), 0);
    returns('gt_282', () => m.call('gt', [$f32('7F800000'), $f32('80000000')]),
        0x1);
    returns('gt_283', () => m.call('gt', [$f32('7F800000'), $f32('0')]), 0x1);
    returns(
        'gt_284', () => m.call('gt', [$f32('FF800000'), $f32('80000001')]), 0);
    returns('gt_285', () => m.call('gt', [$f32('FF800000'), $f32('1')]), 0);
    returns('gt_286', () => m.call('gt', [$f32('7F800000'), $f32('80000001')]),
        0x1);
    returns('gt_287', () => m.call('gt', [$f32('7F800000'), $f32('1')]), 0x1);
    returns(
        'gt_288', () => m.call('gt', [$f32('FF800000'), $f32('80800000')]), 0);
    returns(
        'gt_289', () => m.call('gt', [$f32('FF800000'), $f32('800000')]), 0);
    returns('gt_290', () => m.call('gt', [$f32('7F800000'), $f32('80800000')]),
        0x1);
    returns(
        'gt_291', () => m.call('gt', [$f32('7F800000'), $f32('800000')]), 0x1);
    returns(
        'gt_292', () => m.call('gt', [$f32('FF800000'), $f32('BF000000')]), 0);
    returns(
        'gt_293', () => m.call('gt', [$f32('FF800000'), $f32('3F000000')]), 0);
    returns('gt_294', () => m.call('gt', [$f32('7F800000'), $f32('BF000000')]),
        0x1);
    returns('gt_295', () => m.call('gt', [$f32('7F800000'), $f32('3F000000')]),
        0x1);
    returns(
        'gt_296', () => m.call('gt', [$f32('FF800000'), $f32('BF800000')]), 0);
    returns(
        'gt_297', () => m.call('gt', [$f32('FF800000'), $f32('3F800000')]), 0);
    returns('gt_298', () => m.call('gt', [$f32('7F800000'), $f32('BF800000')]),
        0x1);
    returns('gt_299', () => m.call('gt', [$f32('7F800000'), $f32('3F800000')]),
        0x1);
    returns(
        'gt_300', () => m.call('gt', [$f32('FF800000'), $f32('C0C90FDB')]), 0);
    returns(
        'gt_301', () => m.call('gt', [$f32('FF800000'), $f32('40C90FDB')]), 0);
    returns('gt_302', () => m.call('gt', [$f32('7F800000'), $f32('C0C90FDB')]),
        0x1);
    returns('gt_303', () => m.call('gt', [$f32('7F800000'), $f32('40C90FDB')]),
        0x1);
    returns(
        'gt_304', () => m.call('gt', [$f32('FF800000'), $f32('FF7FFFFF')]), 0);
    returns(
        'gt_305', () => m.call('gt', [$f32('FF800000'), $f32('7F7FFFFF')]), 0);
    returns('gt_306', () => m.call('gt', [$f32('7F800000'), $f32('FF7FFFFF')]),
        0x1);
    returns('gt_307', () => m.call('gt', [$f32('7F800000'), $f32('7F7FFFFF')]),
        0x1);
    returns(
        'gt_308', () => m.call('gt', [$f32('FF800000'), $f32('FF800000')]), 0);
    returns(
        'gt_309', () => m.call('gt', [$f32('FF800000'), $f32('7F800000')]), 0);
    returns('gt_310', () => m.call('gt', [$f32('7F800000'), $f32('FF800000')]),
        0x1);
    returns(
        'gt_311', () => m.call('gt', [$f32('7F800000'), $f32('7F800000')]), 0);
    returns(
        'gt_312', () => m.call('gt', [$f32('FF800000'), $f32('FFC00000')]), 0);
    returns(
        'gt_313', () => m.call('gt', [$f32('FF800000'), $f32('FFA00000')]), 0);
    returns(
        'gt_314', () => m.call('gt', [$f32('FF800000'), $f32('7FC00000')]), 0);
    returns(
        'gt_315', () => m.call('gt', [$f32('FF800000'), $f32('7FA00000')]), 0);
    returns(
        'gt_316', () => m.call('gt', [$f32('7F800000'), $f32('FFC00000')]), 0);
    returns(
        'gt_317', () => m.call('gt', [$f32('7F800000'), $f32('FFA00000')]), 0);
    returns(
        'gt_318', () => m.call('gt', [$f32('7F800000'), $f32('7FC00000')]), 0);
    returns(
        'gt_319', () => m.call('gt', [$f32('7F800000'), $f32('7FA00000')]), 0);
    returns(
        'gt_320', () => m.call('gt', [$f32('FFC00000'), $f32('80000000')]), 0);
    returns(
        'gt_321', () => m.call('gt', [$f32('FFA00000'), $f32('80000000')]), 0);
    returns('gt_322', () => m.call('gt', [$f32('FFC00000'), $f32('0')]), 0);
    returns('gt_323', () => m.call('gt', [$f32('FFA00000'), $f32('0')]), 0);
    returns(
        'gt_324', () => m.call('gt', [$f32('7FC00000'), $f32('80000000')]), 0);
    returns(
        'gt_325', () => m.call('gt', [$f32('7FA00000'), $f32('80000000')]), 0);
    returns('gt_326', () => m.call('gt', [$f32('7FC00000'), $f32('0')]), 0);
    returns('gt_327', () => m.call('gt', [$f32('7FA00000'), $f32('0')]), 0);
    returns(
        'gt_328', () => m.call('gt', [$f32('FFC00000'), $f32('80000001')]), 0);
    returns(
        'gt_329', () => m.call('gt', [$f32('FFA00000'), $f32('80000001')]), 0);
    returns('gt_330', () => m.call('gt', [$f32('FFC00000'), $f32('1')]), 0);
    returns('gt_331', () => m.call('gt', [$f32('FFA00000'), $f32('1')]), 0);
    returns(
        'gt_332', () => m.call('gt', [$f32('7FC00000'), $f32('80000001')]), 0);
    returns(
        'gt_333', () => m.call('gt', [$f32('7FA00000'), $f32('80000001')]), 0);
    returns('gt_334', () => m.call('gt', [$f32('7FC00000'), $f32('1')]), 0);
    returns('gt_335', () => m.call('gt', [$f32('7FA00000'), $f32('1')]), 0);
    returns(
        'gt_336', () => m.call('gt', [$f32('FFC00000'), $f32('80800000')]), 0);
    returns(
        'gt_337', () => m.call('gt', [$f32('FFA00000'), $f32('80800000')]), 0);
    returns(
        'gt_338', () => m.call('gt', [$f32('FFC00000'), $f32('800000')]), 0);
    returns(
        'gt_339', () => m.call('gt', [$f32('FFA00000'), $f32('800000')]), 0);
    returns(
        'gt_340', () => m.call('gt', [$f32('7FC00000'), $f32('80800000')]), 0);
    returns(
        'gt_341', () => m.call('gt', [$f32('7FA00000'), $f32('80800000')]), 0);
    returns(
        'gt_342', () => m.call('gt', [$f32('7FC00000'), $f32('800000')]), 0);
    returns(
        'gt_343', () => m.call('gt', [$f32('7FA00000'), $f32('800000')]), 0);
    returns(
        'gt_344', () => m.call('gt', [$f32('FFC00000'), $f32('BF000000')]), 0);
    returns(
        'gt_345', () => m.call('gt', [$f32('FFA00000'), $f32('BF000000')]), 0);
    returns(
        'gt_346', () => m.call('gt', [$f32('FFC00000'), $f32('3F000000')]), 0);
    returns(
        'gt_347', () => m.call('gt', [$f32('FFA00000'), $f32('3F000000')]), 0);
    returns(
        'gt_348', () => m.call('gt', [$f32('7FC00000'), $f32('BF000000')]), 0);
    returns(
        'gt_349', () => m.call('gt', [$f32('7FA00000'), $f32('BF000000')]), 0);
    returns(
        'gt_350', () => m.call('gt', [$f32('7FC00000'), $f32('3F000000')]), 0);
    returns(
        'gt_351', () => m.call('gt', [$f32('7FA00000'), $f32('3F000000')]), 0);
    returns(
        'gt_352', () => m.call('gt', [$f32('FFC00000'), $f32('BF800000')]), 0);
    returns(
        'gt_353', () => m.call('gt', [$f32('FFA00000'), $f32('BF800000')]), 0);
    returns(
        'gt_354', () => m.call('gt', [$f32('FFC00000'), $f32('3F800000')]), 0);
    returns(
        'gt_355', () => m.call('gt', [$f32('FFA00000'), $f32('3F800000')]), 0);
    returns(
        'gt_356', () => m.call('gt', [$f32('7FC00000'), $f32('BF800000')]), 0);
    returns(
        'gt_357', () => m.call('gt', [$f32('7FA00000'), $f32('BF800000')]), 0);
    returns(
        'gt_358', () => m.call('gt', [$f32('7FC00000'), $f32('3F800000')]), 0);
    returns(
        'gt_359', () => m.call('gt', [$f32('7FA00000'), $f32('3F800000')]), 0);
    returns(
        'gt_360', () => m.call('gt', [$f32('FFC00000'), $f32('C0C90FDB')]), 0);
    returns(
        'gt_361', () => m.call('gt', [$f32('FFA00000'), $f32('C0C90FDB')]), 0);
    returns(
        'gt_362', () => m.call('gt', [$f32('FFC00000'), $f32('40C90FDB')]), 0);
    returns(
        'gt_363', () => m.call('gt', [$f32('FFA00000'), $f32('40C90FDB')]), 0);
    returns(
        'gt_364', () => m.call('gt', [$f32('7FC00000'), $f32('C0C90FDB')]), 0);
    returns(
        'gt_365', () => m.call('gt', [$f32('7FA00000'), $f32('C0C90FDB')]), 0);
    returns(
        'gt_366', () => m.call('gt', [$f32('7FC00000'), $f32('40C90FDB')]), 0);
    returns(
        'gt_367', () => m.call('gt', [$f32('7FA00000'), $f32('40C90FDB')]), 0);
    returns(
        'gt_368', () => m.call('gt', [$f32('FFC00000'), $f32('FF7FFFFF')]), 0);
    returns(
        'gt_369', () => m.call('gt', [$f32('FFA00000'), $f32('FF7FFFFF')]), 0);
    returns(
        'gt_370', () => m.call('gt', [$f32('FFC00000'), $f32('7F7FFFFF')]), 0);
    returns(
        'gt_371', () => m.call('gt', [$f32('FFA00000'), $f32('7F7FFFFF')]), 0);
    returns(
        'gt_372', () => m.call('gt', [$f32('7FC00000'), $f32('FF7FFFFF')]), 0);
    returns(
        'gt_373', () => m.call('gt', [$f32('7FA00000'), $f32('FF7FFFFF')]), 0);
    returns(
        'gt_374', () => m.call('gt', [$f32('7FC00000'), $f32('7F7FFFFF')]), 0);
    returns(
        'gt_375', () => m.call('gt', [$f32('7FA00000'), $f32('7F7FFFFF')]), 0);
    returns(
        'gt_376', () => m.call('gt', [$f32('FFC00000'), $f32('FF800000')]), 0);
    returns(
        'gt_377', () => m.call('gt', [$f32('FFA00000'), $f32('FF800000')]), 0);
    returns(
        'gt_378', () => m.call('gt', [$f32('FFC00000'), $f32('7F800000')]), 0);
    returns(
        'gt_379', () => m.call('gt', [$f32('FFA00000'), $f32('7F800000')]), 0);
    returns(
        'gt_380', () => m.call('gt', [$f32('7FC00000'), $f32('FF800000')]), 0);
    returns(
        'gt_381', () => m.call('gt', [$f32('7FA00000'), $f32('FF800000')]), 0);
    returns(
        'gt_382', () => m.call('gt', [$f32('7FC00000'), $f32('7F800000')]), 0);
    returns(
        'gt_383', () => m.call('gt', [$f32('7FA00000'), $f32('7F800000')]), 0);
    returns(
        'gt_384', () => m.call('gt', [$f32('FFC00000'), $f32('FFC00000')]), 0);
    returns(
        'gt_385', () => m.call('gt', [$f32('FFA00000'), $f32('FFC00000')]), 0);
    returns(
        'gt_386', () => m.call('gt', [$f32('FFC00000'), $f32('FFA00000')]), 0);
    returns(
        'gt_387', () => m.call('gt', [$f32('FFA00000'), $f32('FFA00000')]), 0);
    returns(
        'gt_388', () => m.call('gt', [$f32('FFC00000'), $f32('7FC00000')]), 0);
    returns(
        'gt_389', () => m.call('gt', [$f32('FFA00000'), $f32('7FC00000')]), 0);
    returns(
        'gt_390', () => m.call('gt', [$f32('FFC00000'), $f32('7FA00000')]), 0);
    returns(
        'gt_391', () => m.call('gt', [$f32('FFA00000'), $f32('7FA00000')]), 0);
    returns(
        'gt_392', () => m.call('gt', [$f32('7FC00000'), $f32('FFC00000')]), 0);
    returns(
        'gt_393', () => m.call('gt', [$f32('7FA00000'), $f32('FFC00000')]), 0);
    returns(
        'gt_394', () => m.call('gt', [$f32('7FC00000'), $f32('FFA00000')]), 0);
    returns(
        'gt_395', () => m.call('gt', [$f32('7FA00000'), $f32('FFA00000')]), 0);
    returns(
        'gt_396', () => m.call('gt', [$f32('7FC00000'), $f32('7FC00000')]), 0);
    returns(
        'gt_397', () => m.call('gt', [$f32('7FA00000'), $f32('7FC00000')]), 0);
    returns(
        'gt_398', () => m.call('gt', [$f32('7FC00000'), $f32('7FA00000')]), 0);
    returns(
        'gt_399', () => m.call('gt', [$f32('7FA00000'), $f32('7FA00000')]), 0);
    returns(
        'ge_0', () => m.call('ge', [$f32('80000000'), $f32('80000000')]), 0x1);
    returns('ge_1', () => m.call('ge', [$f32('80000000'), $f32('0')]), 0x1);
    returns('ge_2', () => m.call('ge', [$f32('0'), $f32('80000000')]), 0x1);
    returns('ge_3', () => m.call('ge', [$f32('0'), $f32('0')]), 0x1);
    returns(
        'ge_4', () => m.call('ge', [$f32('80000000'), $f32('80000001')]), 0x1);
    returns('ge_5', () => m.call('ge', [$f32('80000000'), $f32('1')]), 0);
    returns('ge_6', () => m.call('ge', [$f32('0'), $f32('80000001')]), 0x1);
    returns('ge_7', () => m.call('ge', [$f32('0'), $f32('1')]), 0);
    returns(
        'ge_8', () => m.call('ge', [$f32('80000000'), $f32('80800000')]), 0x1);
    returns('ge_9', () => m.call('ge', [$f32('80000000'), $f32('800000')]), 0);
    returns('ge_10', () => m.call('ge', [$f32('0'), $f32('80800000')]), 0x1);
    returns('ge_11', () => m.call('ge', [$f32('0'), $f32('800000')]), 0);
    returns(
        'ge_12', () => m.call('ge', [$f32('80000000'), $f32('BF000000')]), 0x1);
    returns(
        'ge_13', () => m.call('ge', [$f32('80000000'), $f32('3F000000')]), 0);
    returns('ge_14', () => m.call('ge', [$f32('0'), $f32('BF000000')]), 0x1);
    returns('ge_15', () => m.call('ge', [$f32('0'), $f32('3F000000')]), 0);
    returns(
        'ge_16', () => m.call('ge', [$f32('80000000'), $f32('BF800000')]), 0x1);
    returns(
        'ge_17', () => m.call('ge', [$f32('80000000'), $f32('3F800000')]), 0);
    returns('ge_18', () => m.call('ge', [$f32('0'), $f32('BF800000')]), 0x1);
    returns('ge_19', () => m.call('ge', [$f32('0'), $f32('3F800000')]), 0);
    returns(
        'ge_20', () => m.call('ge', [$f32('80000000'), $f32('C0C90FDB')]), 0x1);
    returns(
        'ge_21', () => m.call('ge', [$f32('80000000'), $f32('40C90FDB')]), 0);
    returns('ge_22', () => m.call('ge', [$f32('0'), $f32('C0C90FDB')]), 0x1);
    returns('ge_23', () => m.call('ge', [$f32('0'), $f32('40C90FDB')]), 0);
    returns(
        'ge_24', () => m.call('ge', [$f32('80000000'), $f32('FF7FFFFF')]), 0x1);
    returns(
        'ge_25', () => m.call('ge', [$f32('80000000'), $f32('7F7FFFFF')]), 0);
    returns('ge_26', () => m.call('ge', [$f32('0'), $f32('FF7FFFFF')]), 0x1);
    returns('ge_27', () => m.call('ge', [$f32('0'), $f32('7F7FFFFF')]), 0);
    returns(
        'ge_28', () => m.call('ge', [$f32('80000000'), $f32('FF800000')]), 0x1);
    returns(
        'ge_29', () => m.call('ge', [$f32('80000000'), $f32('7F800000')]), 0);
    returns('ge_30', () => m.call('ge', [$f32('0'), $f32('FF800000')]), 0x1);
    returns('ge_31', () => m.call('ge', [$f32('0'), $f32('7F800000')]), 0);
    returns(
        'ge_32', () => m.call('ge', [$f32('80000000'), $f32('FFC00000')]), 0);
    returns(
        'ge_33', () => m.call('ge', [$f32('80000000'), $f32('FFA00000')]), 0);
    returns(
        'ge_34', () => m.call('ge', [$f32('80000000'), $f32('7FC00000')]), 0);
    returns(
        'ge_35', () => m.call('ge', [$f32('80000000'), $f32('7FA00000')]), 0);
    returns('ge_36', () => m.call('ge', [$f32('0'), $f32('FFC00000')]), 0);
    returns('ge_37', () => m.call('ge', [$f32('0'), $f32('FFA00000')]), 0);
    returns('ge_38', () => m.call('ge', [$f32('0'), $f32('7FC00000')]), 0);
    returns('ge_39', () => m.call('ge', [$f32('0'), $f32('7FA00000')]), 0);
    returns(
        'ge_40', () => m.call('ge', [$f32('80000001'), $f32('80000000')]), 0);
    returns('ge_41', () => m.call('ge', [$f32('80000001'), $f32('0')]), 0);
    returns('ge_42', () => m.call('ge', [$f32('1'), $f32('80000000')]), 0x1);
    returns('ge_43', () => m.call('ge', [$f32('1'), $f32('0')]), 0x1);
    returns(
        'ge_44', () => m.call('ge', [$f32('80000001'), $f32('80000001')]), 0x1);
    returns('ge_45', () => m.call('ge', [$f32('80000001'), $f32('1')]), 0);
    returns('ge_46', () => m.call('ge', [$f32('1'), $f32('80000001')]), 0x1);
    returns('ge_47', () => m.call('ge', [$f32('1'), $f32('1')]), 0x1);
    returns(
        'ge_48', () => m.call('ge', [$f32('80000001'), $f32('80800000')]), 0x1);
    returns('ge_49', () => m.call('ge', [$f32('80000001'), $f32('800000')]), 0);
    returns('ge_50', () => m.call('ge', [$f32('1'), $f32('80800000')]), 0x1);
    returns('ge_51', () => m.call('ge', [$f32('1'), $f32('800000')]), 0);
    returns(
        'ge_52', () => m.call('ge', [$f32('80000001'), $f32('BF000000')]), 0x1);
    returns(
        'ge_53', () => m.call('ge', [$f32('80000001'), $f32('3F000000')]), 0);
    returns('ge_54', () => m.call('ge', [$f32('1'), $f32('BF000000')]), 0x1);
    returns('ge_55', () => m.call('ge', [$f32('1'), $f32('3F000000')]), 0);
    returns(
        'ge_56', () => m.call('ge', [$f32('80000001'), $f32('BF800000')]), 0x1);
    returns(
        'ge_57', () => m.call('ge', [$f32('80000001'), $f32('3F800000')]), 0);
    returns('ge_58', () => m.call('ge', [$f32('1'), $f32('BF800000')]), 0x1);
    returns('ge_59', () => m.call('ge', [$f32('1'), $f32('3F800000')]), 0);
    returns(
        'ge_60', () => m.call('ge', [$f32('80000001'), $f32('C0C90FDB')]), 0x1);
    returns(
        'ge_61', () => m.call('ge', [$f32('80000001'), $f32('40C90FDB')]), 0);
    returns('ge_62', () => m.call('ge', [$f32('1'), $f32('C0C90FDB')]), 0x1);
    returns('ge_63', () => m.call('ge', [$f32('1'), $f32('40C90FDB')]), 0);
    returns(
        'ge_64', () => m.call('ge', [$f32('80000001'), $f32('FF7FFFFF')]), 0x1);
    returns(
        'ge_65', () => m.call('ge', [$f32('80000001'), $f32('7F7FFFFF')]), 0);
    returns('ge_66', () => m.call('ge', [$f32('1'), $f32('FF7FFFFF')]), 0x1);
    returns('ge_67', () => m.call('ge', [$f32('1'), $f32('7F7FFFFF')]), 0);
    returns(
        'ge_68', () => m.call('ge', [$f32('80000001'), $f32('FF800000')]), 0x1);
    returns(
        'ge_69', () => m.call('ge', [$f32('80000001'), $f32('7F800000')]), 0);
    returns('ge_70', () => m.call('ge', [$f32('1'), $f32('FF800000')]), 0x1);
    returns('ge_71', () => m.call('ge', [$f32('1'), $f32('7F800000')]), 0);
    returns(
        'ge_72', () => m.call('ge', [$f32('80000001'), $f32('FFC00000')]), 0);
    returns(
        'ge_73', () => m.call('ge', [$f32('80000001'), $f32('FFA00000')]), 0);
    returns(
        'ge_74', () => m.call('ge', [$f32('80000001'), $f32('7FC00000')]), 0);
    returns(
        'ge_75', () => m.call('ge', [$f32('80000001'), $f32('7FA00000')]), 0);
    returns('ge_76', () => m.call('ge', [$f32('1'), $f32('FFC00000')]), 0);
    returns('ge_77', () => m.call('ge', [$f32('1'), $f32('FFA00000')]), 0);
    returns('ge_78', () => m.call('ge', [$f32('1'), $f32('7FC00000')]), 0);
    returns('ge_79', () => m.call('ge', [$f32('1'), $f32('7FA00000')]), 0);
    returns(
        'ge_80', () => m.call('ge', [$f32('80800000'), $f32('80000000')]), 0);
    returns('ge_81', () => m.call('ge', [$f32('80800000'), $f32('0')]), 0);
    returns(
        'ge_82', () => m.call('ge', [$f32('800000'), $f32('80000000')]), 0x1);
    returns('ge_83', () => m.call('ge', [$f32('800000'), $f32('0')]), 0x1);
    returns(
        'ge_84', () => m.call('ge', [$f32('80800000'), $f32('80000001')]), 0);
    returns('ge_85', () => m.call('ge', [$f32('80800000'), $f32('1')]), 0);
    returns(
        'ge_86', () => m.call('ge', [$f32('800000'), $f32('80000001')]), 0x1);
    returns('ge_87', () => m.call('ge', [$f32('800000'), $f32('1')]), 0x1);
    returns(
        'ge_88', () => m.call('ge', [$f32('80800000'), $f32('80800000')]), 0x1);
    returns('ge_89', () => m.call('ge', [$f32('80800000'), $f32('800000')]), 0);
    returns(
        'ge_90', () => m.call('ge', [$f32('800000'), $f32('80800000')]), 0x1);
    returns('ge_91', () => m.call('ge', [$f32('800000'), $f32('800000')]), 0x1);
    returns(
        'ge_92', () => m.call('ge', [$f32('80800000'), $f32('BF000000')]), 0x1);
    returns(
        'ge_93', () => m.call('ge', [$f32('80800000'), $f32('3F000000')]), 0);
    returns(
        'ge_94', () => m.call('ge', [$f32('800000'), $f32('BF000000')]), 0x1);
    returns('ge_95', () => m.call('ge', [$f32('800000'), $f32('3F000000')]), 0);
    returns(
        'ge_96', () => m.call('ge', [$f32('80800000'), $f32('BF800000')]), 0x1);
    returns(
        'ge_97', () => m.call('ge', [$f32('80800000'), $f32('3F800000')]), 0);
    returns(
        'ge_98', () => m.call('ge', [$f32('800000'), $f32('BF800000')]), 0x1);
    returns('ge_99', () => m.call('ge', [$f32('800000'), $f32('3F800000')]), 0);
    returns('ge_100', () => m.call('ge', [$f32('80800000'), $f32('C0C90FDB')]),
        0x1);
    returns(
        'ge_101', () => m.call('ge', [$f32('80800000'), $f32('40C90FDB')]), 0);
    returns(
        'ge_102', () => m.call('ge', [$f32('800000'), $f32('C0C90FDB')]), 0x1);
    returns(
        'ge_103', () => m.call('ge', [$f32('800000'), $f32('40C90FDB')]), 0);
    returns('ge_104', () => m.call('ge', [$f32('80800000'), $f32('FF7FFFFF')]),
        0x1);
    returns(
        'ge_105', () => m.call('ge', [$f32('80800000'), $f32('7F7FFFFF')]), 0);
    returns(
        'ge_106', () => m.call('ge', [$f32('800000'), $f32('FF7FFFFF')]), 0x1);
    returns(
        'ge_107', () => m.call('ge', [$f32('800000'), $f32('7F7FFFFF')]), 0);
    returns('ge_108', () => m.call('ge', [$f32('80800000'), $f32('FF800000')]),
        0x1);
    returns(
        'ge_109', () => m.call('ge', [$f32('80800000'), $f32('7F800000')]), 0);
    returns(
        'ge_110', () => m.call('ge', [$f32('800000'), $f32('FF800000')]), 0x1);
    returns(
        'ge_111', () => m.call('ge', [$f32('800000'), $f32('7F800000')]), 0);
    returns(
        'ge_112', () => m.call('ge', [$f32('80800000'), $f32('FFC00000')]), 0);
    returns(
        'ge_113', () => m.call('ge', [$f32('80800000'), $f32('FFA00000')]), 0);
    returns(
        'ge_114', () => m.call('ge', [$f32('80800000'), $f32('7FC00000')]), 0);
    returns(
        'ge_115', () => m.call('ge', [$f32('80800000'), $f32('7FA00000')]), 0);
    returns(
        'ge_116', () => m.call('ge', [$f32('800000'), $f32('FFC00000')]), 0);
    returns(
        'ge_117', () => m.call('ge', [$f32('800000'), $f32('FFA00000')]), 0);
    returns(
        'ge_118', () => m.call('ge', [$f32('800000'), $f32('7FC00000')]), 0);
    returns(
        'ge_119', () => m.call('ge', [$f32('800000'), $f32('7FA00000')]), 0);
    returns(
        'ge_120', () => m.call('ge', [$f32('BF000000'), $f32('80000000')]), 0);
    returns('ge_121', () => m.call('ge', [$f32('BF000000'), $f32('0')]), 0);
    returns('ge_122', () => m.call('ge', [$f32('3F000000'), $f32('80000000')]),
        0x1);
    returns('ge_123', () => m.call('ge', [$f32('3F000000'), $f32('0')]), 0x1);
    returns(
        'ge_124', () => m.call('ge', [$f32('BF000000'), $f32('80000001')]), 0);
    returns('ge_125', () => m.call('ge', [$f32('BF000000'), $f32('1')]), 0);
    returns('ge_126', () => m.call('ge', [$f32('3F000000'), $f32('80000001')]),
        0x1);
    returns('ge_127', () => m.call('ge', [$f32('3F000000'), $f32('1')]), 0x1);
    returns(
        'ge_128', () => m.call('ge', [$f32('BF000000'), $f32('80800000')]), 0);
    returns(
        'ge_129', () => m.call('ge', [$f32('BF000000'), $f32('800000')]), 0);
    returns('ge_130', () => m.call('ge', [$f32('3F000000'), $f32('80800000')]),
        0x1);
    returns(
        'ge_131', () => m.call('ge', [$f32('3F000000'), $f32('800000')]), 0x1);
    returns('ge_132', () => m.call('ge', [$f32('BF000000'), $f32('BF000000')]),
        0x1);
    returns(
        'ge_133', () => m.call('ge', [$f32('BF000000'), $f32('3F000000')]), 0);
    returns('ge_134', () => m.call('ge', [$f32('3F000000'), $f32('BF000000')]),
        0x1);
    returns('ge_135', () => m.call('ge', [$f32('3F000000'), $f32('3F000000')]),
        0x1);
    returns('ge_136', () => m.call('ge', [$f32('BF000000'), $f32('BF800000')]),
        0x1);
    returns(
        'ge_137', () => m.call('ge', [$f32('BF000000'), $f32('3F800000')]), 0);
    returns('ge_138', () => m.call('ge', [$f32('3F000000'), $f32('BF800000')]),
        0x1);
    returns(
        'ge_139', () => m.call('ge', [$f32('3F000000'), $f32('3F800000')]), 0);
    returns('ge_140', () => m.call('ge', [$f32('BF000000'), $f32('C0C90FDB')]),
        0x1);
    returns(
        'ge_141', () => m.call('ge', [$f32('BF000000'), $f32('40C90FDB')]), 0);
    returns('ge_142', () => m.call('ge', [$f32('3F000000'), $f32('C0C90FDB')]),
        0x1);
    returns(
        'ge_143', () => m.call('ge', [$f32('3F000000'), $f32('40C90FDB')]), 0);
    returns('ge_144', () => m.call('ge', [$f32('BF000000'), $f32('FF7FFFFF')]),
        0x1);
    returns(
        'ge_145', () => m.call('ge', [$f32('BF000000'), $f32('7F7FFFFF')]), 0);
    returns('ge_146', () => m.call('ge', [$f32('3F000000'), $f32('FF7FFFFF')]),
        0x1);
    returns(
        'ge_147', () => m.call('ge', [$f32('3F000000'), $f32('7F7FFFFF')]), 0);
    returns('ge_148', () => m.call('ge', [$f32('BF000000'), $f32('FF800000')]),
        0x1);
    returns(
        'ge_149', () => m.call('ge', [$f32('BF000000'), $f32('7F800000')]), 0);
    returns('ge_150', () => m.call('ge', [$f32('3F000000'), $f32('FF800000')]),
        0x1);
    returns(
        'ge_151', () => m.call('ge', [$f32('3F000000'), $f32('7F800000')]), 0);
    returns(
        'ge_152', () => m.call('ge', [$f32('BF000000'), $f32('FFC00000')]), 0);
    returns(
        'ge_153', () => m.call('ge', [$f32('BF000000'), $f32('FFA00000')]), 0);
    returns(
        'ge_154', () => m.call('ge', [$f32('BF000000'), $f32('7FC00000')]), 0);
    returns(
        'ge_155', () => m.call('ge', [$f32('BF000000'), $f32('7FA00000')]), 0);
    returns(
        'ge_156', () => m.call('ge', [$f32('3F000000'), $f32('FFC00000')]), 0);
    returns(
        'ge_157', () => m.call('ge', [$f32('3F000000'), $f32('FFA00000')]), 0);
    returns(
        'ge_158', () => m.call('ge', [$f32('3F000000'), $f32('7FC00000')]), 0);
    returns(
        'ge_159', () => m.call('ge', [$f32('3F000000'), $f32('7FA00000')]), 0);
    returns(
        'ge_160', () => m.call('ge', [$f32('BF800000'), $f32('80000000')]), 0);
    returns('ge_161', () => m.call('ge', [$f32('BF800000'), $f32('0')]), 0);
    returns('ge_162', () => m.call('ge', [$f32('3F800000'), $f32('80000000')]),
        0x1);
    returns('ge_163', () => m.call('ge', [$f32('3F800000'), $f32('0')]), 0x1);
    returns(
        'ge_164', () => m.call('ge', [$f32('BF800000'), $f32('80000001')]), 0);
    returns('ge_165', () => m.call('ge', [$f32('BF800000'), $f32('1')]), 0);
    returns('ge_166', () => m.call('ge', [$f32('3F800000'), $f32('80000001')]),
        0x1);
    returns('ge_167', () => m.call('ge', [$f32('3F800000'), $f32('1')]), 0x1);
    returns(
        'ge_168', () => m.call('ge', [$f32('BF800000'), $f32('80800000')]), 0);
    returns(
        'ge_169', () => m.call('ge', [$f32('BF800000'), $f32('800000')]), 0);
    returns('ge_170', () => m.call('ge', [$f32('3F800000'), $f32('80800000')]),
        0x1);
    returns(
        'ge_171', () => m.call('ge', [$f32('3F800000'), $f32('800000')]), 0x1);
    returns(
        'ge_172', () => m.call('ge', [$f32('BF800000'), $f32('BF000000')]), 0);
    returns(
        'ge_173', () => m.call('ge', [$f32('BF800000'), $f32('3F000000')]), 0);
    returns('ge_174', () => m.call('ge', [$f32('3F800000'), $f32('BF000000')]),
        0x1);
    returns('ge_175', () => m.call('ge', [$f32('3F800000'), $f32('3F000000')]),
        0x1);
    returns('ge_176', () => m.call('ge', [$f32('BF800000'), $f32('BF800000')]),
        0x1);
    returns(
        'ge_177', () => m.call('ge', [$f32('BF800000'), $f32('3F800000')]), 0);
    returns('ge_178', () => m.call('ge', [$f32('3F800000'), $f32('BF800000')]),
        0x1);
    returns('ge_179', () => m.call('ge', [$f32('3F800000'), $f32('3F800000')]),
        0x1);
    returns('ge_180', () => m.call('ge', [$f32('BF800000'), $f32('C0C90FDB')]),
        0x1);
    returns(
        'ge_181', () => m.call('ge', [$f32('BF800000'), $f32('40C90FDB')]), 0);
    returns('ge_182', () => m.call('ge', [$f32('3F800000'), $f32('C0C90FDB')]),
        0x1);
    returns(
        'ge_183', () => m.call('ge', [$f32('3F800000'), $f32('40C90FDB')]), 0);
    returns('ge_184', () => m.call('ge', [$f32('BF800000'), $f32('FF7FFFFF')]),
        0x1);
    returns(
        'ge_185', () => m.call('ge', [$f32('BF800000'), $f32('7F7FFFFF')]), 0);
    returns('ge_186', () => m.call('ge', [$f32('3F800000'), $f32('FF7FFFFF')]),
        0x1);
    returns(
        'ge_187', () => m.call('ge', [$f32('3F800000'), $f32('7F7FFFFF')]), 0);
    returns('ge_188', () => m.call('ge', [$f32('BF800000'), $f32('FF800000')]),
        0x1);
    returns(
        'ge_189', () => m.call('ge', [$f32('BF800000'), $f32('7F800000')]), 0);
    returns('ge_190', () => m.call('ge', [$f32('3F800000'), $f32('FF800000')]),
        0x1);
    returns(
        'ge_191', () => m.call('ge', [$f32('3F800000'), $f32('7F800000')]), 0);
    returns(
        'ge_192', () => m.call('ge', [$f32('BF800000'), $f32('FFC00000')]), 0);
    returns(
        'ge_193', () => m.call('ge', [$f32('BF800000'), $f32('FFA00000')]), 0);
    returns(
        'ge_194', () => m.call('ge', [$f32('BF800000'), $f32('7FC00000')]), 0);
    returns(
        'ge_195', () => m.call('ge', [$f32('BF800000'), $f32('7FA00000')]), 0);
    returns(
        'ge_196', () => m.call('ge', [$f32('3F800000'), $f32('FFC00000')]), 0);
    returns(
        'ge_197', () => m.call('ge', [$f32('3F800000'), $f32('FFA00000')]), 0);
    returns(
        'ge_198', () => m.call('ge', [$f32('3F800000'), $f32('7FC00000')]), 0);
    returns(
        'ge_199', () => m.call('ge', [$f32('3F800000'), $f32('7FA00000')]), 0);
    returns(
        'ge_200', () => m.call('ge', [$f32('C0C90FDB'), $f32('80000000')]), 0);
    returns('ge_201', () => m.call('ge', [$f32('C0C90FDB'), $f32('0')]), 0);
    returns('ge_202', () => m.call('ge', [$f32('40C90FDB'), $f32('80000000')]),
        0x1);
    returns('ge_203', () => m.call('ge', [$f32('40C90FDB'), $f32('0')]), 0x1);
    returns(
        'ge_204', () => m.call('ge', [$f32('C0C90FDB'), $f32('80000001')]), 0);
    returns('ge_205', () => m.call('ge', [$f32('C0C90FDB'), $f32('1')]), 0);
    returns('ge_206', () => m.call('ge', [$f32('40C90FDB'), $f32('80000001')]),
        0x1);
    returns('ge_207', () => m.call('ge', [$f32('40C90FDB'), $f32('1')]), 0x1);
    returns(
        'ge_208', () => m.call('ge', [$f32('C0C90FDB'), $f32('80800000')]), 0);
    returns(
        'ge_209', () => m.call('ge', [$f32('C0C90FDB'), $f32('800000')]), 0);
    returns('ge_210', () => m.call('ge', [$f32('40C90FDB'), $f32('80800000')]),
        0x1);
    returns(
        'ge_211', () => m.call('ge', [$f32('40C90FDB'), $f32('800000')]), 0x1);
    returns(
        'ge_212', () => m.call('ge', [$f32('C0C90FDB'), $f32('BF000000')]), 0);
    returns(
        'ge_213', () => m.call('ge', [$f32('C0C90FDB'), $f32('3F000000')]), 0);
    returns('ge_214', () => m.call('ge', [$f32('40C90FDB'), $f32('BF000000')]),
        0x1);
    returns('ge_215', () => m.call('ge', [$f32('40C90FDB'), $f32('3F000000')]),
        0x1);
    returns(
        'ge_216', () => m.call('ge', [$f32('C0C90FDB'), $f32('BF800000')]), 0);
    returns(
        'ge_217', () => m.call('ge', [$f32('C0C90FDB'), $f32('3F800000')]), 0);
    returns('ge_218', () => m.call('ge', [$f32('40C90FDB'), $f32('BF800000')]),
        0x1);
    returns('ge_219', () => m.call('ge', [$f32('40C90FDB'), $f32('3F800000')]),
        0x1);
    returns('ge_220', () => m.call('ge', [$f32('C0C90FDB'), $f32('C0C90FDB')]),
        0x1);
    returns(
        'ge_221', () => m.call('ge', [$f32('C0C90FDB'), $f32('40C90FDB')]), 0);
    returns('ge_222', () => m.call('ge', [$f32('40C90FDB'), $f32('C0C90FDB')]),
        0x1);
    returns('ge_223', () => m.call('ge', [$f32('40C90FDB'), $f32('40C90FDB')]),
        0x1);
    returns('ge_224', () => m.call('ge', [$f32('C0C90FDB'), $f32('FF7FFFFF')]),
        0x1);
    returns(
        'ge_225', () => m.call('ge', [$f32('C0C90FDB'), $f32('7F7FFFFF')]), 0);
    returns('ge_226', () => m.call('ge', [$f32('40C90FDB'), $f32('FF7FFFFF')]),
        0x1);
    returns(
        'ge_227', () => m.call('ge', [$f32('40C90FDB'), $f32('7F7FFFFF')]), 0);
    returns('ge_228', () => m.call('ge', [$f32('C0C90FDB'), $f32('FF800000')]),
        0x1);
    returns(
        'ge_229', () => m.call('ge', [$f32('C0C90FDB'), $f32('7F800000')]), 0);
    returns('ge_230', () => m.call('ge', [$f32('40C90FDB'), $f32('FF800000')]),
        0x1);
    returns(
        'ge_231', () => m.call('ge', [$f32('40C90FDB'), $f32('7F800000')]), 0);
    returns(
        'ge_232', () => m.call('ge', [$f32('C0C90FDB'), $f32('FFC00000')]), 0);
    returns(
        'ge_233', () => m.call('ge', [$f32('C0C90FDB'), $f32('FFA00000')]), 0);
    returns(
        'ge_234', () => m.call('ge', [$f32('C0C90FDB'), $f32('7FC00000')]), 0);
    returns(
        'ge_235', () => m.call('ge', [$f32('C0C90FDB'), $f32('7FA00000')]), 0);
    returns(
        'ge_236', () => m.call('ge', [$f32('40C90FDB'), $f32('FFC00000')]), 0);
    returns(
        'ge_237', () => m.call('ge', [$f32('40C90FDB'), $f32('FFA00000')]), 0);
    returns(
        'ge_238', () => m.call('ge', [$f32('40C90FDB'), $f32('7FC00000')]), 0);
    returns(
        'ge_239', () => m.call('ge', [$f32('40C90FDB'), $f32('7FA00000')]), 0);
    returns(
        'ge_240', () => m.call('ge', [$f32('FF7FFFFF'), $f32('80000000')]), 0);
    returns('ge_241', () => m.call('ge', [$f32('FF7FFFFF'), $f32('0')]), 0);
    returns('ge_242', () => m.call('ge', [$f32('7F7FFFFF'), $f32('80000000')]),
        0x1);
    returns('ge_243', () => m.call('ge', [$f32('7F7FFFFF'), $f32('0')]), 0x1);
    returns(
        'ge_244', () => m.call('ge', [$f32('FF7FFFFF'), $f32('80000001')]), 0);
    returns('ge_245', () => m.call('ge', [$f32('FF7FFFFF'), $f32('1')]), 0);
    returns('ge_246', () => m.call('ge', [$f32('7F7FFFFF'), $f32('80000001')]),
        0x1);
    returns('ge_247', () => m.call('ge', [$f32('7F7FFFFF'), $f32('1')]), 0x1);
    returns(
        'ge_248', () => m.call('ge', [$f32('FF7FFFFF'), $f32('80800000')]), 0);
    returns(
        'ge_249', () => m.call('ge', [$f32('FF7FFFFF'), $f32('800000')]), 0);
    returns('ge_250', () => m.call('ge', [$f32('7F7FFFFF'), $f32('80800000')]),
        0x1);
    returns(
        'ge_251', () => m.call('ge', [$f32('7F7FFFFF'), $f32('800000')]), 0x1);
    returns(
        'ge_252', () => m.call('ge', [$f32('FF7FFFFF'), $f32('BF000000')]), 0);
    returns(
        'ge_253', () => m.call('ge', [$f32('FF7FFFFF'), $f32('3F000000')]), 0);
    returns('ge_254', () => m.call('ge', [$f32('7F7FFFFF'), $f32('BF000000')]),
        0x1);
    returns('ge_255', () => m.call('ge', [$f32('7F7FFFFF'), $f32('3F000000')]),
        0x1);
    returns(
        'ge_256', () => m.call('ge', [$f32('FF7FFFFF'), $f32('BF800000')]), 0);
    returns(
        'ge_257', () => m.call('ge', [$f32('FF7FFFFF'), $f32('3F800000')]), 0);
    returns('ge_258', () => m.call('ge', [$f32('7F7FFFFF'), $f32('BF800000')]),
        0x1);
    returns('ge_259', () => m.call('ge', [$f32('7F7FFFFF'), $f32('3F800000')]),
        0x1);
    returns(
        'ge_260', () => m.call('ge', [$f32('FF7FFFFF'), $f32('C0C90FDB')]), 0);
    returns(
        'ge_261', () => m.call('ge', [$f32('FF7FFFFF'), $f32('40C90FDB')]), 0);
    returns('ge_262', () => m.call('ge', [$f32('7F7FFFFF'), $f32('C0C90FDB')]),
        0x1);
    returns('ge_263', () => m.call('ge', [$f32('7F7FFFFF'), $f32('40C90FDB')]),
        0x1);
    returns('ge_264', () => m.call('ge', [$f32('FF7FFFFF'), $f32('FF7FFFFF')]),
        0x1);
    returns(
        'ge_265', () => m.call('ge', [$f32('FF7FFFFF'), $f32('7F7FFFFF')]), 0);
    returns('ge_266', () => m.call('ge', [$f32('7F7FFFFF'), $f32('FF7FFFFF')]),
        0x1);
    returns('ge_267', () => m.call('ge', [$f32('7F7FFFFF'), $f32('7F7FFFFF')]),
        0x1);
    returns('ge_268', () => m.call('ge', [$f32('FF7FFFFF'), $f32('FF800000')]),
        0x1);
    returns(
        'ge_269', () => m.call('ge', [$f32('FF7FFFFF'), $f32('7F800000')]), 0);
    returns('ge_270', () => m.call('ge', [$f32('7F7FFFFF'), $f32('FF800000')]),
        0x1);
    returns(
        'ge_271', () => m.call('ge', [$f32('7F7FFFFF'), $f32('7F800000')]), 0);
    returns(
        'ge_272', () => m.call('ge', [$f32('FF7FFFFF'), $f32('FFC00000')]), 0);
    returns(
        'ge_273', () => m.call('ge', [$f32('FF7FFFFF'), $f32('FFA00000')]), 0);
    returns(
        'ge_274', () => m.call('ge', [$f32('FF7FFFFF'), $f32('7FC00000')]), 0);
    returns(
        'ge_275', () => m.call('ge', [$f32('FF7FFFFF'), $f32('7FA00000')]), 0);
    returns(
        'ge_276', () => m.call('ge', [$f32('7F7FFFFF'), $f32('FFC00000')]), 0);
    returns(
        'ge_277', () => m.call('ge', [$f32('7F7FFFFF'), $f32('FFA00000')]), 0);
    returns(
        'ge_278', () => m.call('ge', [$f32('7F7FFFFF'), $f32('7FC00000')]), 0);
    returns(
        'ge_279', () => m.call('ge', [$f32('7F7FFFFF'), $f32('7FA00000')]), 0);
    returns(
        'ge_280', () => m.call('ge', [$f32('FF800000'), $f32('80000000')]), 0);
    returns('ge_281', () => m.call('ge', [$f32('FF800000'), $f32('0')]), 0);
    returns('ge_282', () => m.call('ge', [$f32('7F800000'), $f32('80000000')]),
        0x1);
    returns('ge_283', () => m.call('ge', [$f32('7F800000'), $f32('0')]), 0x1);
    returns(
        'ge_284', () => m.call('ge', [$f32('FF800000'), $f32('80000001')]), 0);
    returns('ge_285', () => m.call('ge', [$f32('FF800000'), $f32('1')]), 0);
    returns('ge_286', () => m.call('ge', [$f32('7F800000'), $f32('80000001')]),
        0x1);
    returns('ge_287', () => m.call('ge', [$f32('7F800000'), $f32('1')]), 0x1);
    returns(
        'ge_288', () => m.call('ge', [$f32('FF800000'), $f32('80800000')]), 0);
    returns(
        'ge_289', () => m.call('ge', [$f32('FF800000'), $f32('800000')]), 0);
    returns('ge_290', () => m.call('ge', [$f32('7F800000'), $f32('80800000')]),
        0x1);
    returns(
        'ge_291', () => m.call('ge', [$f32('7F800000'), $f32('800000')]), 0x1);
    returns(
        'ge_292', () => m.call('ge', [$f32('FF800000'), $f32('BF000000')]), 0);
    returns(
        'ge_293', () => m.call('ge', [$f32('FF800000'), $f32('3F000000')]), 0);
    returns('ge_294', () => m.call('ge', [$f32('7F800000'), $f32('BF000000')]),
        0x1);
    returns('ge_295', () => m.call('ge', [$f32('7F800000'), $f32('3F000000')]),
        0x1);
    returns(
        'ge_296', () => m.call('ge', [$f32('FF800000'), $f32('BF800000')]), 0);
    returns(
        'ge_297', () => m.call('ge', [$f32('FF800000'), $f32('3F800000')]), 0);
    returns('ge_298', () => m.call('ge', [$f32('7F800000'), $f32('BF800000')]),
        0x1);
    returns('ge_299', () => m.call('ge', [$f32('7F800000'), $f32('3F800000')]),
        0x1);
    returns(
        'ge_300', () => m.call('ge', [$f32('FF800000'), $f32('C0C90FDB')]), 0);
    returns(
        'ge_301', () => m.call('ge', [$f32('FF800000'), $f32('40C90FDB')]), 0);
    returns('ge_302', () => m.call('ge', [$f32('7F800000'), $f32('C0C90FDB')]),
        0x1);
    returns('ge_303', () => m.call('ge', [$f32('7F800000'), $f32('40C90FDB')]),
        0x1);
    returns(
        'ge_304', () => m.call('ge', [$f32('FF800000'), $f32('FF7FFFFF')]), 0);
    returns(
        'ge_305', () => m.call('ge', [$f32('FF800000'), $f32('7F7FFFFF')]), 0);
    returns('ge_306', () => m.call('ge', [$f32('7F800000'), $f32('FF7FFFFF')]),
        0x1);
    returns('ge_307', () => m.call('ge', [$f32('7F800000'), $f32('7F7FFFFF')]),
        0x1);
    returns('ge_308', () => m.call('ge', [$f32('FF800000'), $f32('FF800000')]),
        0x1);
    returns(
        'ge_309', () => m.call('ge', [$f32('FF800000'), $f32('7F800000')]), 0);
    returns('ge_310', () => m.call('ge', [$f32('7F800000'), $f32('FF800000')]),
        0x1);
    returns('ge_311', () => m.call('ge', [$f32('7F800000'), $f32('7F800000')]),
        0x1);
    returns(
        'ge_312', () => m.call('ge', [$f32('FF800000'), $f32('FFC00000')]), 0);
    returns(
        'ge_313', () => m.call('ge', [$f32('FF800000'), $f32('FFA00000')]), 0);
    returns(
        'ge_314', () => m.call('ge', [$f32('FF800000'), $f32('7FC00000')]), 0);
    returns(
        'ge_315', () => m.call('ge', [$f32('FF800000'), $f32('7FA00000')]), 0);
    returns(
        'ge_316', () => m.call('ge', [$f32('7F800000'), $f32('FFC00000')]), 0);
    returns(
        'ge_317', () => m.call('ge', [$f32('7F800000'), $f32('FFA00000')]), 0);
    returns(
        'ge_318', () => m.call('ge', [$f32('7F800000'), $f32('7FC00000')]), 0);
    returns(
        'ge_319', () => m.call('ge', [$f32('7F800000'), $f32('7FA00000')]), 0);
    returns(
        'ge_320', () => m.call('ge', [$f32('FFC00000'), $f32('80000000')]), 0);
    returns(
        'ge_321', () => m.call('ge', [$f32('FFA00000'), $f32('80000000')]), 0);
    returns('ge_322', () => m.call('ge', [$f32('FFC00000'), $f32('0')]), 0);
    returns('ge_323', () => m.call('ge', [$f32('FFA00000'), $f32('0')]), 0);
    returns(
        'ge_324', () => m.call('ge', [$f32('7FC00000'), $f32('80000000')]), 0);
    returns(
        'ge_325', () => m.call('ge', [$f32('7FA00000'), $f32('80000000')]), 0);
    returns('ge_326', () => m.call('ge', [$f32('7FC00000'), $f32('0')]), 0);
    returns('ge_327', () => m.call('ge', [$f32('7FA00000'), $f32('0')]), 0);
    returns(
        'ge_328', () => m.call('ge', [$f32('FFC00000'), $f32('80000001')]), 0);
    returns(
        'ge_329', () => m.call('ge', [$f32('FFA00000'), $f32('80000001')]), 0);
    returns('ge_330', () => m.call('ge', [$f32('FFC00000'), $f32('1')]), 0);
    returns('ge_331', () => m.call('ge', [$f32('FFA00000'), $f32('1')]), 0);
    returns(
        'ge_332', () => m.call('ge', [$f32('7FC00000'), $f32('80000001')]), 0);
    returns(
        'ge_333', () => m.call('ge', [$f32('7FA00000'), $f32('80000001')]), 0);
    returns('ge_334', () => m.call('ge', [$f32('7FC00000'), $f32('1')]), 0);
    returns('ge_335', () => m.call('ge', [$f32('7FA00000'), $f32('1')]), 0);
    returns(
        'ge_336', () => m.call('ge', [$f32('FFC00000'), $f32('80800000')]), 0);
    returns(
        'ge_337', () => m.call('ge', [$f32('FFA00000'), $f32('80800000')]), 0);
    returns(
        'ge_338', () => m.call('ge', [$f32('FFC00000'), $f32('800000')]), 0);
    returns(
        'ge_339', () => m.call('ge', [$f32('FFA00000'), $f32('800000')]), 0);
    returns(
        'ge_340', () => m.call('ge', [$f32('7FC00000'), $f32('80800000')]), 0);
    returns(
        'ge_341', () => m.call('ge', [$f32('7FA00000'), $f32('80800000')]), 0);
    returns(
        'ge_342', () => m.call('ge', [$f32('7FC00000'), $f32('800000')]), 0);
    returns(
        'ge_343', () => m.call('ge', [$f32('7FA00000'), $f32('800000')]), 0);
    returns(
        'ge_344', () => m.call('ge', [$f32('FFC00000'), $f32('BF000000')]), 0);
    returns(
        'ge_345', () => m.call('ge', [$f32('FFA00000'), $f32('BF000000')]), 0);
    returns(
        'ge_346', () => m.call('ge', [$f32('FFC00000'), $f32('3F000000')]), 0);
    returns(
        'ge_347', () => m.call('ge', [$f32('FFA00000'), $f32('3F000000')]), 0);
    returns(
        'ge_348', () => m.call('ge', [$f32('7FC00000'), $f32('BF000000')]), 0);
    returns(
        'ge_349', () => m.call('ge', [$f32('7FA00000'), $f32('BF000000')]), 0);
    returns(
        'ge_350', () => m.call('ge', [$f32('7FC00000'), $f32('3F000000')]), 0);
    returns(
        'ge_351', () => m.call('ge', [$f32('7FA00000'), $f32('3F000000')]), 0);
    returns(
        'ge_352', () => m.call('ge', [$f32('FFC00000'), $f32('BF800000')]), 0);
    returns(
        'ge_353', () => m.call('ge', [$f32('FFA00000'), $f32('BF800000')]), 0);
    returns(
        'ge_354', () => m.call('ge', [$f32('FFC00000'), $f32('3F800000')]), 0);
    returns(
        'ge_355', () => m.call('ge', [$f32('FFA00000'), $f32('3F800000')]), 0);
    returns(
        'ge_356', () => m.call('ge', [$f32('7FC00000'), $f32('BF800000')]), 0);
    returns(
        'ge_357', () => m.call('ge', [$f32('7FA00000'), $f32('BF800000')]), 0);
    returns(
        'ge_358', () => m.call('ge', [$f32('7FC00000'), $f32('3F800000')]), 0);
    returns(
        'ge_359', () => m.call('ge', [$f32('7FA00000'), $f32('3F800000')]), 0);
    returns(
        'ge_360', () => m.call('ge', [$f32('FFC00000'), $f32('C0C90FDB')]), 0);
    returns(
        'ge_361', () => m.call('ge', [$f32('FFA00000'), $f32('C0C90FDB')]), 0);
    returns(
        'ge_362', () => m.call('ge', [$f32('FFC00000'), $f32('40C90FDB')]), 0);
    returns(
        'ge_363', () => m.call('ge', [$f32('FFA00000'), $f32('40C90FDB')]), 0);
    returns(
        'ge_364', () => m.call('ge', [$f32('7FC00000'), $f32('C0C90FDB')]), 0);
    returns(
        'ge_365', () => m.call('ge', [$f32('7FA00000'), $f32('C0C90FDB')]), 0);
    returns(
        'ge_366', () => m.call('ge', [$f32('7FC00000'), $f32('40C90FDB')]), 0);
    returns(
        'ge_367', () => m.call('ge', [$f32('7FA00000'), $f32('40C90FDB')]), 0);
    returns(
        'ge_368', () => m.call('ge', [$f32('FFC00000'), $f32('FF7FFFFF')]), 0);
    returns(
        'ge_369', () => m.call('ge', [$f32('FFA00000'), $f32('FF7FFFFF')]), 0);
    returns(
        'ge_370', () => m.call('ge', [$f32('FFC00000'), $f32('7F7FFFFF')]), 0);
    returns(
        'ge_371', () => m.call('ge', [$f32('FFA00000'), $f32('7F7FFFFF')]), 0);
    returns(
        'ge_372', () => m.call('ge', [$f32('7FC00000'), $f32('FF7FFFFF')]), 0);
    returns(
        'ge_373', () => m.call('ge', [$f32('7FA00000'), $f32('FF7FFFFF')]), 0);
    returns(
        'ge_374', () => m.call('ge', [$f32('7FC00000'), $f32('7F7FFFFF')]), 0);
    returns(
        'ge_375', () => m.call('ge', [$f32('7FA00000'), $f32('7F7FFFFF')]), 0);
    returns(
        'ge_376', () => m.call('ge', [$f32('FFC00000'), $f32('FF800000')]), 0);
    returns(
        'ge_377', () => m.call('ge', [$f32('FFA00000'), $f32('FF800000')]), 0);
    returns(
        'ge_378', () => m.call('ge', [$f32('FFC00000'), $f32('7F800000')]), 0);
    returns(
        'ge_379', () => m.call('ge', [$f32('FFA00000'), $f32('7F800000')]), 0);
    returns(
        'ge_380', () => m.call('ge', [$f32('7FC00000'), $f32('FF800000')]), 0);
    returns(
        'ge_381', () => m.call('ge', [$f32('7FA00000'), $f32('FF800000')]), 0);
    returns(
        'ge_382', () => m.call('ge', [$f32('7FC00000'), $f32('7F800000')]), 0);
    returns(
        'ge_383', () => m.call('ge', [$f32('7FA00000'), $f32('7F800000')]), 0);
    returns(
        'ge_384', () => m.call('ge', [$f32('FFC00000'), $f32('FFC00000')]), 0);
    returns(
        'ge_385', () => m.call('ge', [$f32('FFA00000'), $f32('FFC00000')]), 0);
    returns(
        'ge_386', () => m.call('ge', [$f32('FFC00000'), $f32('FFA00000')]), 0);
    returns(
        'ge_387', () => m.call('ge', [$f32('FFA00000'), $f32('FFA00000')]), 0);
    returns(
        'ge_388', () => m.call('ge', [$f32('FFC00000'), $f32('7FC00000')]), 0);
    returns(
        'ge_389', () => m.call('ge', [$f32('FFA00000'), $f32('7FC00000')]), 0);
    returns(
        'ge_390', () => m.call('ge', [$f32('FFC00000'), $f32('7FA00000')]), 0);
    returns(
        'ge_391', () => m.call('ge', [$f32('FFA00000'), $f32('7FA00000')]), 0);
    returns(
        'ge_392', () => m.call('ge', [$f32('7FC00000'), $f32('FFC00000')]), 0);
    returns(
        'ge_393', () => m.call('ge', [$f32('7FA00000'), $f32('FFC00000')]), 0);
    returns(
        'ge_394', () => m.call('ge', [$f32('7FC00000'), $f32('FFA00000')]), 0);
    returns(
        'ge_395', () => m.call('ge', [$f32('7FA00000'), $f32('FFA00000')]), 0);
    returns(
        'ge_396', () => m.call('ge', [$f32('7FC00000'), $f32('7FC00000')]), 0);
    returns(
        'ge_397', () => m.call('ge', [$f32('7FA00000'), $f32('7FC00000')]), 0);
    returns(
        'ge_398', () => m.call('ge', [$f32('7FC00000'), $f32('7FA00000')]), 0);
    returns(
        'ge_399', () => m.call('ge', [$f32('7FA00000'), $f32('7FA00000')]), 0);
  });
}
