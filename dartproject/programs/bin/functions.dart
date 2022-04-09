void main() {
  int a = 2;
  int b = 3;
  int c = a + b;
  print(c);

  addfn();
  mulfn(a, b);
  div();
  int retrnval = sub(a, b);
  print(retrnval);
}

int addfn() {
  int a = 2;
  int b = 2;
  int c = a + b;
  print(c);
  return c;
}

void mulfn(int a, int b) {
  int c = a * b;
  print(c);
}

void div() {
  int a = 2;
  int b = 2;
  int c = a + b;
  print(c);
}

int sub(int a, int b) {
  int c = a - b;
  print(c);
  return c;
}
