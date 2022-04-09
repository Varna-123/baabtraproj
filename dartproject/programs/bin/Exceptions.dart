void main() {
  int distance = 12;
  int time = 0;
  int speed;

  try {
    speed = distance ~/ time;
  } on IntegerDivisionByZeroException catch (e) {
    // integerdivsn by zero is a built in excptn
    // e is a runtime obj
    // a specific exception

    print("The time should not be zero");
  } catch (e) {
    //no specified type,handles all

    print(e);
  }
}
