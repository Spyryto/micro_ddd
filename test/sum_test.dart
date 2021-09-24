import 'package:micro_ddd/src/sum.dart';
import 'package:test/test.dart';

class Alpha<A, B> extends Sum2<A, B> {
  Alpha.int(A value) : super.a(value);
  Alpha.string(B value) : super.b(value);
}

class Quantity<A extends int, B extends double, C extends String>
    extends Sum3<A, B, C> {
  Quantity.unitQuantity(A value) : super.a(value);
  Quantity.kilogramQuantity(B value) : super.b(value);
  Quantity.otherQuantity(C value) : super.c(value);
}

void main() {
  group('Alpha', () {
    test('is a sum type of order 2', () {
      var a = Alpha.int(75);
      var aOutput = a.map((number) => 'number: $number', (s) => 'string: $s');

      expect(aOutput, equals('number: 75'));

      var b = Alpha.string('asdf');
      var bOutput = b.map((number) => 'number: $number', (s) => 'string: $s');

      expect(bOutput, equals('string: asdf'));
    });
  });
  group('Quantity', () {
    test('is a sum type of order 3', () {
      var u = Quantity.unitQuantity(5);
      var kg = Quantity.kilogramQuantity(5.6);
      var s = Quantity.otherQuantity('a handful');

      var format = <String Function(Object)>[
        (u) => "int: $u",
        (kg) => "kg: $kg",
        (s) => "$s",
      ];

      expect(u.map(format[0], format[1], format[2]), 'int: 5');
      expect(kg.map(format[0], format[1], format[2]), 'kg: 5.6');
      expect(s.map(format[0], format[1], format[2]), 'a handful');
    });
  });
}
