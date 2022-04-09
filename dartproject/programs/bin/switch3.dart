import 'dart:io';

void main() {
  // switch (2) {
  //   case 0:
  //     print("this is zero");
  //     break;
  //   case 1:
  //     print("this is not zero");
  //     break;
  //   default:
  //     print("invalid");
  // }
  // String days = "sunday";
  // switch (days) {
  //   case "monday":
  //     print("this is working day");
  //     break;
  //   case "tuesday":
  //     print("working day");
  //     break;
  //   case "sunday":
  //     print("holiday");
  //     break;
  //   default:
  //     print("invalid");
  // }
  print("enter your grade :");
  String? grade = stdin.readLineSync();
  switch (grade) {
    case "A":
      print("excellent");
      break;
    case "b":
      print("good");
      break;
    case "c":
      print("avg");
      break;
    case "d":
      print("below avg");
      break;
    case "f":
      print("fail");
      break;
    default:
      print("invalid data");
  }
}
