part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class CheckLoginStatusEvent extends AuthEvent {}

class LoginEvent extends AuthEvent {
  final String email;
  final String password;

  LoginEvent(this.email, this.password);
  @override
  // TODO: implement props
  List<Object?> get props => [email,password];
}

class LogOutEvent extends AuthEvent {}
