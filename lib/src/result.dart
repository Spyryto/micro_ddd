enum ResultType { success, failure }

class Result<S, F> {
  final ResultType _type;
  final Map<ResultType, dynamic> _values = {};

  Result.success(S value) : _type = ResultType.success {
    _values[_type] = value;
  }

  Result.failure(F value) : _type = ResultType.failure {
    _values[_type] = value;
  }

  bool get isSuccess => _type == ResultType.success;
  bool get isFailure => _type == ResultType.failure;

  void match({required Function(S) success, required Function(F) failure}) {
    var value = _values[_type];
    isSuccess ? success(value) : failure(value);
  }

  T map<T>({required T Function(S) success, required T Function(F) failure}) {
    var value = _values[_type];
    return isSuccess ? success(value) : failure(value);
  }
}
