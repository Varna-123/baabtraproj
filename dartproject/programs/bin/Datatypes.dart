import 'dart:async';

void main() {
  var name;
  name = "1";
  print(name);

  int sample = 10;
  print(sample);

  double a = 10.5;
  print(a);

  num num1 = 2;
  num num2 = 2.5;
  print('$num1,$num2');

  String str = 'abc';
  print(str);

  String str2 = '''hii
  hlw
  abc''';
  print(str2);

  bool logic = true;
  print(logic);
  
  List sample2 = [1, 2, 3];
  print(sample2);

  List<int> sample3 = [1, 2, 4];

  print(sample3);
  List<String> sample4 = ['hii', 'hlw', 'kk'];
  print(sample4);

  var clue = [1, 2, 'abc', 'bbc'];
  print(clue);
  var clue1 = [
    [1, 2, 3],
    [3, 4, 5]
  ];
  print(clue1);

  Set<int> Setlist = {1, 2, 3, 1, 4};
  print(Setlist);

  var map = {"age": "1", "name": "anu"};

  print(map["age"]);
}
