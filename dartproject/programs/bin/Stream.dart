// void main() {
//   final myStream = timedCounter(Duration(seconds: 1), 5);

//   final subscription = myStream.listen(
//     (yieldedData) => print('number:$yieldedData'),//single subscrptn methd
//   ); //anonymus fn---listen(data)inbuilt method of getting result

//   // myStream.listen(
//   //   (yieldedData) => print('number:$yieldedData'),
//   // );
// }

// Stream<int> timedCounter(Duration interval, [int? maxCount]) async* {
//   int i = 0;
//   while (true) {
//     await Future.delayed(interval);
//     yield i++;
//     if (i == maxCount) {
//       break;
//     }
//   }
// }

// void main() {
//   final myStream = timedCounter(Duration(seconds: 1), 5).asBroadcastStream();

//   final subscription = myStream.listen(
//     (yieldedData) => print('number:$yieldedData'), //single subscrptn methd
//   ); //anonymus fn---listen(data)inbuilt method of getting result

//   final subscription2=myStream.listen(
//     (yieldedData) => print('number:$yieldedData'),//Broadcast stream---can receive multiple lisen
//   );
// }

// Stream<int> timedCounter(Duration interval, [int? maxCount]) async* {
//   int i = 0;
//   while (true) {
//     await Future.delayed(interval);
//     yield i++;
//     if (i == maxCount) {
//       break;
//     }
//   }
// }

// void main() {
//   final myStream = timedCounter(Duration(seconds: 1), 5).asBroadcastStream();

//   final subscription = myStream.listen(
//     (yieldedData) => print('number:$yieldedData'),
//     onError: (err) {
//       print(
//           'error!'); //HANDLING ERRORS IN STREAM ONLY USING onError,cancelOnError,onDONE
//     },
//     cancelOnError: false,
//     onDone: () {
//       print('finished');
//     },
//   );

//   final subscription2 = myStream.listen(
//     (yieldedData) => print('number:$yieldedData'),
//   );
// }

// Stream<int> timedCounter(Duration interval, [int? maxCount]) async* {
//   int i = 0;
//   while (true) {
//     await Future.delayed(interval);
//     yield i++;
//     if (i == maxCount) {
//             break;
//     }
//   }
// }
import 'package:http/http.dart' as http;

///example prgm for yeilding

void main() async {
  // heading();
  // dynamic user = await getuser();
  // displayuser(user);
  // int timedCounter;

  final myStream = timedCounter();

  final subscription = myStream.listen(
    (yieldedData) => print('number:$yieldedData'),
    onError: (err) {
      print(
          'error!'); //HANDLING ERRORS IN STREAM ONLY USING onError,cancelOnError,onDONE
    },
    cancelOnError: false,
    onDone: () {
      print('finished');
    },
  );

  // final subscription2 = myStream.listen(
  //   (yieldedData) => print('number:$yieldedData'),
  // );
}

// void heading() {
//   print("user names");
// }

// dynamic getuser() async {
//   var url = Uri.parse('https://cybersquare.herokuapp.com/user/');
//   var result = await http.get(url);
//   return result.body;
// }

// void displayuser(dynamic user) {
//   print("userdata:$user");
// }

Stream<String> timedCounter() async* {
  var url = Uri.parse('https://cybersquare.herokuapp.com/user/');
  var result = await http.get(url);
  yield result.body;

  url = Uri.parse('https://cybersquare.herokuapp.com/user/');
  result = await http.get(url);
  yield result.body;
}
