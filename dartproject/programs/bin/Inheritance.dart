void main() {
  var dog1 = Dog();

  print(dog1.breed);

  var cat1 = Cat();

  cat1.eat();
}

class Animal {
  String? colour;
  void eat() {}
}

class Dog extends Animal {
  // String? colour;
  String? breed;
  void bark() {}
  // void eat() {}
}

class Cat extends Animal {
  // String? colour;
  int? age;
  void meaw() {}
  // void eat() {}
}


