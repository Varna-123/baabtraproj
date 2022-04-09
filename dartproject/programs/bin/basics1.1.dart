import 'dart:io';

void main() {
  print("enter first number :");
  int number1 = int.parse(stdin.readLineSync()!);
  print("enter second number :");
  int number2 = int.parse(stdin.readLineSync()!);

  print("the sum is ${number1 + number2} ");

  // print("enter your secondname");
  // String? secondname = stdin.readLineSync();

  // print("your name is $firstname $secondname");
}
