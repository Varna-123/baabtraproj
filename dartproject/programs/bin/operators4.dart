void main() {
  int a, b, c, d;
  a = 30;
  b = 30;
  print('$a $b');
  c = a + b;
  print(c);
  d = a % b;
  print(d);

  if (a < 30) {
    print('a<30');
  } else if (a == 30) {
    print('a=30');
  } else {
    print('a>30');
  }
}
