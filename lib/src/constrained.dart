import 'package:micro_ddd/micro_ddd.dart';

class Constrained<T> {
  final T value;

  Constrained._(this.value);

  static Result<Constrained<T>, String> where<T>(
      {required T date, required bool Function(T) constraint}) {
    return constraint(date)
        ? Result.success(Constrained<T>._(date))
        : Result.failure('Value does not satisfy constraint');
  }
}
