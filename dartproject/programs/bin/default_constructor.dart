void main() {
  var test1 = Test();
  print(test1.mark);
  print(test1.no);

  var test2 = Test();
  print(test2.mark);
}

class Test {
  //Field variables
  int? mark;
  int? no;

  //Default constructor
  Test() {
    print("this is my default constructor");
  }
}
