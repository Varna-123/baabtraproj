void main() {
  var child1 = Parend();
  child1.address;
}

class Grandparent {
  int? money;
}

class Parend extends Grandparent {
  String? address;
  String? color;
}

class Child extends Parend {
  String? hobby;
}
