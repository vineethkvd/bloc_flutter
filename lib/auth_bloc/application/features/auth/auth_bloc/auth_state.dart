part of 'auth_bloc.dart';

@immutable
abstract class AuthState extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class AuthInitial extends AuthState {}

class AuthLoadingState extends AuthState {
  final bool isLoading;

  AuthLoadingState({required this.isLoading});
}

class AuthenticatedState extends AuthState {
  final UserModel user;

  AuthenticatedState(this.user);
  @override
  List<Object> get props => [user];
}
class UnauthenticatedState extends AuthState {
  final String errorMessage;

  UnauthenticatedState(this.errorMessage);

  @override
  List<Object> get props => [errorMessage];
}