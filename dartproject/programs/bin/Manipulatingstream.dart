import 'Stream.dart';

void main() {
  final myStream = timedCounter(Duration(seconds: 3), 5);
  myStream.where((i) => i % 2 == 0).map((i) => 'String $i').listen((val) {
    print(val);
  });
}

Stream<int> timedCounter(Duration interval, [int? maxCount]) async* {
  int i = 0;
  while (true) {
    await Future.delayed(interval);
    yield i++;
    if (i == 5) {
      break;
    }
  }
}
