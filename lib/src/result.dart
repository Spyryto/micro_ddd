enum ResultType { success, failure }

class Result<S, F> {
  final ResultType _type;
  Map<ResultType, dynamic> values = {};

  Result.success(S value) : _type = ResultType.success {
    values[_type] = value;
  }

  Result.failure(F value) : _type = ResultType.failure {
    values[_type] = value;
  }

  bool get isSuccess => _type == ResultType.success;
  bool get isFailure => _type == ResultType.failure;

  void match({required Function(S) success, required Function(F) failure}) {
    var value = values[_type];
    isSuccess ? success(value) : failure(value);
  }

  T map<T>({required T Function(S) success, required T Function(F) failure}) {
    var value = values[_type];
    return isSuccess ? success(value) : failure(value);
  }
}
