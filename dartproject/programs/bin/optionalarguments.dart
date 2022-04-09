void main() {
  // sample(10, 10);

  sample2(10, name: 'ytyt', age: 10);
  sample3(10, age: 12); //optional
}

sample(int a, [int? b, int? c]) {
  //optional positional arguments
  print(a);
  print(b);
  print(c);
}

sample2(int x, {int? age, String? name}) {
  //optional named argumnts
  print(x);
  print(age);
  print(name);
}

sample3(int s, {int age = 10, int? v}) {
  //optional default
  print(s);
  print(age);
  print(v);
}
