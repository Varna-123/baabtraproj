import 'extrawork.dart';

void main() {
  int a = -5;
  int b = 3;
  try {
    area(a, b);
  } on Testexception catch (e) {
    print("testsuccssfl");
  } catch (e) {
    print(Object);
  } finally {
    print("hii");
  }
}

void area(int a, int b) {
  if (a < 0 || b < 0) {
    throw Testexception();

    //throw new FormatException();
  } else {
    print("area= ${a + b}");
  }
}

class Testexception implements Exception {
  @override
  String toString() {
    // TODO: implement toString
    return 'hi';
  }
}
