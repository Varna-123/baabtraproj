class Person {
  String? _name; //name as private,
  int? age;
  set setname(String name) {
    this._name = name;
  }

  String get namegetter {
    return _name!;
  }

  String? _person3() {
    //private fn,getset using function.
    print("hi");
  }

  set peron4(String name) {
    _person3(); //inside fn cant use this.name
  }

  String get person5 {
    return _person3()!;
  }
}
