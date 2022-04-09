void main() {
  var student1 = Student();
  // print(student1.address);
  // print(student1.age);
  // print(student1.name);

  student1.name = "sam";
  print(student1.name);
  student1.age = 24;
  print(student1.age);
  student1.address = "clct";
  print(student1.address);

  student1.reading();
  // print('${student1.address} ${student1.name} ${student1.age}'); -------- print all in one-------

  // var student2 = Student();
  // //print(student2.address);
  // student2.name = "varna";
  // student2.age = 25;
  // student2.address = "ffg";
  // print('${student2.name} ${student2.age} ${student2.address}');
  var student2 = Student();
  student2.name = "PETER";
  print(student2.name);
  student2.age = 18;
  print(student2.age);
  student2.address = "KOCHI";
  print(student2.address);

  student2.reading();
}

class Student {
  String? name;
  int? age;
  String? address;

  void reading() {
    print("$name is  readng. IAM $age yeAR OLD. COMING FROMSS $address");
  }
}
