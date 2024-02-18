part of 'quotes_bloc.dart';

@immutable
abstract class QuotesState {}

class QuotesInitial extends QuotesState {}

class QuotesLoading extends QuotesState {}

class QuotesLoaded extends QuotesState {
  final String loadedQuote;

  QuotesLoaded({required this.loadedQuote});
}

class QuotesError extends QuotesState {
  final String errorQuote;

  QuotesError({required this.errorQuote});
}
