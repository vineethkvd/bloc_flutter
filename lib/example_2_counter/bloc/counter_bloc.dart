import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial(count: 0)) {
    on<CounterIncEvent>((event, emit) {
      emit(CounterInitial(count: state.count + 1));
    });
  }
}
