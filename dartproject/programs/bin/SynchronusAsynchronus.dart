// void main() {
//   print("hi");
//   print("good");
//   print("morning");//synchronus operation

// }

// void main()async {
//    await Future.delayed(Duration(seconds: 10), () {//asynchrounus using only future.cls
//     print("fetching data");
//   });
//   print("splash screen");
//   print("homescrn");
// }
// import 'dart:html';
// import 'package:http/http.dart';

// import 'dart:html';
import 'package:http/http.dart' as http;

void main() async {
  heading();

  dynamic user = await getuser();
  displayuser(user);
}

void heading() {
  print("user names");
}

dynamic getuser() async {
  var url = Uri.parse('https://cybersquare.herokuapp.com/user/');
  var result = await http.get(url);
  return result.body;
}

void displayuser(dynamic user) {
  print("userdata:$user");
}
