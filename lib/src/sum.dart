typedef _Fn<T, U> = T Function(U value);

class _Unused {}

abstract class _SumBase {
  final int _case;
  final dynamic _value;

  _SumBase(int n, dynamic value)
      : _case = n,
        _value = value;
}

class Sum10<A, B, C, D, E, F, G, H, I, J> extends _SumBase {
  Sum10.a(A value) : super(0, value);
  Sum10.b(B value) : super(1, value);
  Sum10.c(C value) : super(2, value);
  Sum10.d(D value) : super(0, value);
  Sum10.e(E value) : super(1, value);
  Sum10.f(F value) : super(2, value);
  Sum10.g(G value) : super(0, value);
  Sum10.h(H value) : super(1, value);
  Sum10.i(I value) : super(2, value);
  Sum10.j(J value) : super(0, value);

  T _mapCase<T>([
    T Function(A)? a,
    T Function(B)? b,
    T Function(C)? c,
    T Function(D)? d,
    T Function(E)? e,
    T Function(F)? f,
    T Function(G)? g,
    T Function(H)? h,
    T Function(I)? i,
    T Function(J)? j,
  ]) {
    final map = {
      0: (x) => a!(x),
      1: (x) => b!(x),
      2: (x) => c!(x),
      3: (x) => d!(x),
      4: (x) => e!(x),
      5: (x) => f!(x),
      6: (x) => g!(x),
      7: (x) => h!(x),
      8: (x) => i!(x),
      9: (x) => j!(x)
    };

    return (map[_case]!)(_value);
  }
}

class Sum9<A, B, C, D, E, F, G, H, I>
    extends Sum10<A, B, C, D, E, F, G, H, I, _Unused> {
  Sum9.a(A value) : super.a(value);
  Sum9.b(B value) : super.b(value);
  Sum9.c(C value) : super.c(value);
  Sum9.d(D value) : super.d(value);
  Sum9.e(E value) : super.e(value);
  Sum9.f(F value) : super.f(value);
  Sum9.g(G value) : super.g(value);
  Sum9.h(H value) : super.h(value);
  Sum9.i(I value) : super.i(value);

  T map<T>(_Fn<T, A> a, _Fn<T, B> b, _Fn<T, C> c, _Fn<T, D> d, _Fn<T, E> e,
          _Fn<T, F> f, _Fn<T, G> g, _Fn<T, H> h, _Fn<T, I> i) =>
      super._mapCase<T>(a, b, c, d, e, f, g, h, i);
}

class Sum8<A, B, C, D, E, F, G, H>
    extends Sum10<A, B, C, D, E, F, G, H, _Unused, _Unused> {
  Sum8.a(A value) : super.a(value);
  Sum8.b(B value) : super.b(value);
  Sum8.c(C value) : super.c(value);
  Sum8.d(D value) : super.d(value);
  Sum8.e(E value) : super.e(value);
  Sum8.f(F value) : super.f(value);
  Sum8.g(G value) : super.g(value);
  Sum8.h(H value) : super.h(value);

  T map<T>(_Fn<T, A> a, _Fn<T, B> b, _Fn<T, C> c, _Fn<T, D> d, _Fn<T, E> e,
          _Fn<T, F> f, _Fn<T, G> g, _Fn<T, H> h) =>
      super._mapCase<T>(a, b, c, d, e, f, g, h);
}

class Sum7<A, B, C, D, E, F, G>
    extends Sum10<A, B, C, D, E, F, G, _Unused, _Unused, _Unused> {
  Sum7.a(A value) : super.a(value);
  Sum7.b(B value) : super.b(value);
  Sum7.c(C value) : super.c(value);
  Sum7.d(D value) : super.d(value);
  Sum7.e(E value) : super.e(value);
  Sum7.f(F value) : super.f(value);
  Sum7.g(G value) : super.g(value);

  T map<T>(_Fn<T, A> a, _Fn<T, B> b, _Fn<T, C> c, _Fn<T, D> d, _Fn<T, E> e,
          _Fn<T, F> f, _Fn<T, G> g) =>
      super._mapCase<T>(a, b, c, d, e, f, g);
}

class Sum6<A, B, C, D, E, F>
    extends Sum10<A, B, C, D, E, F, _Unused, _Unused, _Unused, _Unused> {
  Sum6.a(A value) : super.a(value);
  Sum6.b(B value) : super.b(value);
  Sum6.c(C value) : super.c(value);
  Sum6.d(D value) : super.d(value);
  Sum6.e(E value) : super.e(value);
  Sum6.f(F value) : super.f(value);

  T map<T>(_Fn<T, A> a, _Fn<T, B> b, _Fn<T, C> c, _Fn<T, D> d, _Fn<T, E> e,
          _Fn<T, F> f) =>
      super._mapCase<T>(a, b, c, d, e, f);
}

class Sum5<A, B, C, D, E>
    extends Sum10<A, B, C, D, E, _Unused, _Unused, _Unused, _Unused, _Unused> {
  Sum5.a(A value) : super.a(value);
  Sum5.b(B value) : super.b(value);
  Sum5.c(C value) : super.c(value);
  Sum5.d(D value) : super.d(value);
  Sum5.e(E value) : super.e(value);

  T map<T>(_Fn<T, A> a, _Fn<T, B> b, _Fn<T, C> c, _Fn<T, D> d, _Fn<T, E> e) =>
      super._mapCase<T>(a, b, c, d, e);
}

class Sum4<A, B, C, D> extends Sum10<A, B, C, D, _Unused, _Unused, _Unused,
    _Unused, _Unused, _Unused> {
  Sum4.a(A value) : super.a(value);
  Sum4.b(B value) : super.b(value);
  Sum4.c(C value) : super.c(value);
  Sum4.d(D value) : super.d(value);

  T map<T>(_Fn<T, A> a, _Fn<T, B> b, _Fn<T, C> c, _Fn<T, D> d) =>
      super._mapCase<T>(a, b, c, d);
}

class Sum3<A, B, C> extends Sum10<A, B, C, _Unused, _Unused, _Unused, _Unused,
    _Unused, _Unused, _Unused> {
  Sum3.a(A value) : super.a(value);
  Sum3.b(B value) : super.b(value);
  Sum3.c(C value) : super.c(value);

  T map<T>(_Fn<T, A> a, _Fn<T, B> b, _Fn<T, C> c) => super._mapCase<T>(a, b, c);
}

class Sum2<A, B> extends Sum10<A, B, _Unused, _Unused, _Unused, _Unused,
    _Unused, _Unused, _Unused, _Unused> {
  Sum2.a(A value) : super.a(value);
  Sum2.b(B value) : super.b(value);

  T map<T>(_Fn<T, A> a, _Fn<T, B> b) => super._mapCase<T>(a, b);
}
