import 'oops.dart';

void main() {
  var person1 = Person();
  person1.std_name = 'anu';
  print(person1.std_name);

  person1.std_age = 19;
  print(person1.std_age);

  person1.std_vehicle = 'car';
  print(person1.std_vehicle);
}

class Person {
  String? name;
  String? vehicle;
  int? age;

  String get std_name {
    return name!;
  }

  set std_name(String name) {
    this.name = name;
  }

  set std_age(int age) {
    if (age < 18) {
      print("you are not eligible");
    } else {
      this.age = age;
    }
  }

  int get std_age {
    return age!;
  }

  set std_vehicle(String vehicle) {
    this.vehicle = vehicle;
  }

  String get std_vehicle {
    return vehicle!;
  }
}
