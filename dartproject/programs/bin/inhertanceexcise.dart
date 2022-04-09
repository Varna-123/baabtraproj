void main() {
  var person3 = Person1();
  person3.housename;

  var person4 = Person2();
  person4.flatname;

  var person5 = Person3();
  person5.read();

  
}
                            //hierarchial inhertance
class Human {
  String? name;
  int? age;
  String? job;
  void read() {
    print("hi");
  }
}

class Person1 extends Human {
  // String? name;
  // int? age;
  // String? job;
  String? housename;
  swim() {}
  // void read() {}
}

class Person2 extends Human {
  String? flatname;
  void run() {}
}

class Person3 extends Human{
  
}
