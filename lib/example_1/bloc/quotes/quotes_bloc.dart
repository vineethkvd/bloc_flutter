import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'quotes_event.dart';
part 'quotes_state.dart';

class QuotesBloc extends Bloc<QuotesEvent, QuotesState> {
  QuotesBloc() : super(QuotesInitial()) {
    on<QuoteRequestEvent>((event, emit) async {
      emit(QuotesLoaded(loadedQuote: "loadedQuote"));
      await Future.delayed(Duration(seconds: 5),() {
        emit(QuotesLoaded(loadedQuote: "Quotes has to be loaded"));
      },);
    });
  }
}
