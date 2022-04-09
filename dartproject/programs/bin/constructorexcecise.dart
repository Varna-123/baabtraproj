void main() {
  print('First object');
  var edible = Fruits('apple', 120);

  print(edible.name);
  print(edible.price);

  print('second object');
  var edible2 = Fruits("mango", 100);
  print('${edible2.name} ${edible2.price}');

  var edible3 = Fruits.firstConstructor(
      'jackfruit'); //named constructor/empty constr obj creation
  print(edible3.name);

  var edible4 = Fruits.secondConstructor(); //

  //print("GOOD");
}

class Fruits {
  String? name;
  int? price;

  // Fruits(String name, int price) {
  //   // print("the fruit is:$name");
  //   this.name = name;
  //   this.price = price;
  // }

  Fruits(this.name, this.price); //another method of constructor def---
  Fruits.firstConstructor(this.name) {
    //NAMED CONSTRUCTOR/EMPTY CONSTRUCTOR
  }

  Fruits.secondConstructor() {
    print("named constructor");
  }
}
