import 'package:bloc/bloc.dart';

void main(List<String> arguments) {
  Counter counter = Counter();

  print(counter.state);

  counter.increment();

  print(counter.state);

  counter.decrement();

  print(counter.state);
}

class Counter extends Cubit<int> {
  Counter() : super(5);

  increment() {
    emit(state + 1);
  }

  decrement() {
    emit(state - 1);
  }
}
