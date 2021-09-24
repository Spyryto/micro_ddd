import 'package:micro_ddd/micro_ddd.dart';

/// Material hardness in N/mm².
typedef Hardness = Wrapper<String>;

/// Chemical composition of material.
///
/// Does not change over time.
/// The exact type will be specified later.
typedef ChemicalAnalysis = Wrapper<Undefined>;

/// Coil weight in kg.
typedef Weight = Wrapper<int>;

/// Workflow for weighting a coil.
typedef WeightCoil = Result<Weight, String>;

// Complementary examples that do not use library features.

/// Simplest enum
class Boo {
  static const yes = Boo();
  static const no = Boo();

  const Boo();
}

var y = Boo.yes;
var x = Boo.yes;

testBoo() {
  print(y == x ? 'equals' : 'not equals');
}

/// Enum with shared property: same type, different values.
class Color {
  final String hexValue;

  Color.red() : hexValue = 'FF0000';
  Color.green() : hexValue = '00FF00';
  Color.blue() : hexValue = '0000FF';
}

takesColor(Color color) {
  print("#${color.hexValue}");
}

void testColor() {
  takesColor(Color.red());
}

void main() {
  // testBoo();
  testColor();
}
