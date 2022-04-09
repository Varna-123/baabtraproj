void main() {
  var edible = Fruits();
  edible.testSetter = 'red';
  print(edible.testGetter);
}

class Fruits {
  String? Colour;
  int? price;

  set testSetter(String Colour) {
    this.Colour = Colour;
  }

  String get testGetter {
    return Colour!;
  }
}
