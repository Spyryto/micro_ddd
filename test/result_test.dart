import 'package:micro_ddd/src/result.dart';
import 'package:test/test.dart';

void main() {
  group('Result', () {
    test('matches success brach', () {
      Result<int, String> result;
      result = Result.success(75);
      result.match(success: (number) {
        expect(number, 75);
      }, failure: (message) {
        fail('Failure branch reached');
      });
    });
    test('matches failure brach', () {
      Result<int, String> result;
      result = Result.failure('fail message');
      result.match(success: (number) {
        fail('Success branch reached');
      }, failure: (message) {
        expect(message, 'fail message');
      });
    });

    test('map transforms success value', () {
      Result<int, String> result;
      result = Result.success(75);
      var string = result.map(
          success: (value) => value.toString(), failure: (value) => value);
      expect(string, '75');
    });
    test('map transforms failure value', () {
      Result<int, String> result;
      result = Result.failure('message');
      var string = result.map(
          success: (value) => value.toString(), failure: (value) => value);
      expect(string, 'message');
    });
  });
}
