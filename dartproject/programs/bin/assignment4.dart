void main() {
  // int a = 18;
  // if (a % 2 == 0) {
  //   print("divisi by 2");
  // } else {
  //   print("not div");
  // }

  //print(a % 2);

  // if (a % 2 == 0 && a >= 20) {
  //   print("divisi by 2");
  // } else {
  //   print("not div");
  // }

  // if (a % 2 == 0 || a >= 20) {
  //   print("divisi by 2");
  // } else {
  //   print("not div");
  // }

  int i = 0;
  // while (i <= 10) {
  //   print(i);
  //   i++;
  // }
  // i = 0;
  // do {
  //   i++;
  //   print(i);
  // } while (i <= 10);

  // for (i = 0; i <= 10; i++) {
  //   print(i);
  // }
  print("function calling");
  //loopfn();

  int a, b;
  a = 2;
  b = 20;
  //add(a, b);
  int returnval;

  // returnval = addwithreturn(a, b);
  // print(returnval);

  returnval = funwithvalue();
  print(returnval);
}

void loopfn() {
  for (int i = 1; i <= 20; i++) {
    if (i % 2 == 1) {
      print(i);
    }
  }
}

void add(int num1, int num2) {
  print(num1);
  print(num2);
  int c = num1 + num2;
  print(c);
}

int addwithreturn(int num1, int num2) {
  print(num1);
  print(num2);
  int c = num1 + num2;
  return c;
}

int funwithvalue() {
  int a = 10;
  int b = 20;
  int c = a * b;
  return c;
}
