void main() {
  var sample = Test("ghfgf"); //
  print(sample.age);
  print(sample.name);
  var sample1 = Test.name(20, name: 'anu', mark: 567); //
  //print(sample1.age);

  var sample2 = Test.testing('ghg', age: 56);
  print(sample2.name);
  print(sample2.age);
}

class Test {
  String? name;
  int? age;
  int? mark;

  Test(this.name, [this.age]); //optional positional--

  Test.name(this.age, //named constructor
      {this.name,
      required this.mark}); //optional named argument,required is keyword used for condition basd(named and required cases)

  Test.testing(this.name, {this.age = 10}); //default
}
