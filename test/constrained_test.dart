import 'package:micro_ddd/src/constrained.dart';
import 'package:test/test.dart';

void main() {
  group('Constrained', () {
    test('has specific type', () {
      var pastDate = Constrained.where<DateTime>(
          date: DateTime.now(),
          constraint: (date) => !date.isAfter(DateTime.now()));

      expect(pastDate.isSuccess, true);
      pastDate.match(
          success: (date) => expect(date.value, isA<DateTime>()),
          failure: (error) => fail(error));
    });
  });
}
