/// Undefined domain type.
///
/// Placeholder for a type that is still unknown.
typedef Undefined = Exception;

/// Wrapper for a single value.
class Wrapper<T> {
  final T value;

  Wrapper(this.value);
}
