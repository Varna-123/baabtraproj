import 'dart:io';

void main() {
  var student1 = Student();
  student1.stdname = 'peter';
  print(student1.std_name);

  student1.std_age = 23;

  print(student1.std_age);
}

class Student {
  var age;
  var name;

  //getter
  String get std_name {
    return name; //
  }

  ///setter
  set stdname(String name) {
    this.name = name;
  }
//getter
  int get std_age {
    return age;
  }
//setr
  set std_age(int age) {
    this.age = age;
  }
}
