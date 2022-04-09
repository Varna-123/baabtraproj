import 'package:bloc/bloc.dart';

Future<void> main() async {
  Counter counter = Counter();
  print(counter.state);

  counter.add(Operation.increment);
  await Future.delayed(Duration(seconds: 2));
  print(counter.state);

  counter.add(Operation.decrement);
  await Future.delayed(Duration(seconds: 2));
  print(counter.state);
}

enum Operation { increment, decrement } //named constraints

class Counter extends Bloc<Operation, int> {
  Counter() : super(0) {
    on<Operation>((event, emit) async {
      switch (event) {
        case Operation.increment:
          emit(state + 1);
          break;
        case Operation.decrement:
          emit(state - 1);

          break;
        default:
          emit(state);
      }
    });
  }
}
