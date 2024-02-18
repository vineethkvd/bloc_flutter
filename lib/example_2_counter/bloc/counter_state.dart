part of 'counter_bloc.dart';

@immutable
class CounterState {
  late final  int count;

  CounterState(this.count);
}

class CounterInitial extends CounterState {
  CounterInitial():super(0);
}
