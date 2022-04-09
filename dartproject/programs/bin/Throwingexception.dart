import 'extrawork.dart';

void main() {
  int a = 5;
  int b = 3;

  print("hi");
  try {
    area(a, b);
  } catch (e) {
    print("object");
  } finally {
    print("hii");
  }
}

void area(int a, int b) {
  if (a < 0 || b < 0) {
    throw new FormatException();
  } else {
    print("area= ${a + b}");
  }
}
