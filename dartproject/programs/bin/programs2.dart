void main() {
  var name;

  name = 'abc';

  name = 2;

  print(name);

  int a = 23;

  print(a);

  double b = 23.5;
  print(b);

  num num1 = 2;
  num num2 = 1.5;

  print('$num1 $num2');

  String str = 'varna';
  print(str);

  String str2 = '''hii
  hellow
  all
  above''';

  print(str2);

  print(str[0]);

  bool v1;
  v1 = true;
  print(v1);

  List<int> lst1 = [1, 2, 3, 6, 7, 8];
  print(lst1);
  List<String> lst2 = ['hi', 'hello', 'abc'];
  print(lst2);

  List lst3 = [1, 2, 3, 'varna'];
  print(lst3);

  print(lst2[2]);

  List<List> multiplelist = [
    [1, 2, 3, 'HII'],
    [1, 3, 5, 'bbb'],
    [4, 6, 8, 'apple'],
  ];
  print(multiplelist);

  print(lst1.length);
  lst1.add(9);
  print(lst1);
  lst1.removeAt(2);
  print(lst1);

  List<List> multilst = [
    [1, 2, 3, 'HII'],
    [1, 3, 5, 'HLO'],
    [4, 6, 8, 'GG'],
  ];

  multilst.addAll(multiplelist);

  print(multilst);

  Set<int> myset = {1, 2, 3, 1, 4};
  print(myset);

  Set<String> myset2 = {"abc", "bbc", "abc"};
  print(myset2);
  Map sample = {
    "subj1": "maths",
    "subj2": "phy",
    "subj3": "soci",
    "id": 2,
  };
  print(sample);
  print(sample["subj1"]);
}
