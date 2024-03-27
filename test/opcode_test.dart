import 'package:test/test.dart';
import 'package:wasmi/opcodes.dart';

void main() {
  group('Opcode', () {
    test('values match codes', () {
      // Ensure that the enum values are == to the hex codes.
      expect(Opcode.unreachable.index, 0x00);
      expect(Opcode.call.index, 0x10);
      expect(Opcode.localGet.index, 0x20);
      expect(Opcode.i64_load8_s.index, 0x30);
      expect(Opcode.memory_grow.index, 0x40);
      expect(Opcode.i64_eqz.index, 0x50);
      expect(Opcode.f32_ge.index, 0x60);
      expect(Opcode.i32_rem_u.index, 0x70);
      expect(Opcode.i64_div_u.index, 0x80);
      expect(Opcode.f32_nearest.index, 0x90);
      expect(Opcode.f64_add.index, 0xA0);
      expect(Opcode.i64_trunc_f64_s.index, 0xB0);
      expect(Opcode.i32_extend8_s.index, 0xC0);
      expect(Opcode.refNull.index, 0xD0);
      expect(Opcode.reserved_E0.index, 0xE0);
      expect(Opcode.reserved_F0.index, 0xF0);
      expect(Opcode.overflow.index, 0xFC);
      expect(Opcode.vector.index, 0xFD);
    });
  });

  group('OverflowOpcode', () {
    test('values match codes', () {
      expect(OverflowOpcode.i32_trunc_sat_f32_s.index, 0x00);
      expect(OverflowOpcode.table_grow.index, 0x0F);
      expect(OverflowOpcode.table_size.index, 0x10);
      expect(OverflowOpcode.table_fill.index, 0x11);
    });
  });
}
