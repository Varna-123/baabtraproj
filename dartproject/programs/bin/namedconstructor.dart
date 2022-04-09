void main() {
  var car = Product(10, 'vechicle', 200000, 'alto');
  print(car.name);
  print(car.category);
  print(car.discount);
  print(car.price);

  var car1 = Product.dis(6500000, 20);
  print(car1.price);
  print(car1.name);
}

class Product {
  String? name;
  String? category;
  double? price;
  double? discount;

  Product(this.discount, this.category, this.price, this.name);

  Product.dis(price, discount) {
    //named constr

    this.price = price - (price * discount / 100);
  }
}
