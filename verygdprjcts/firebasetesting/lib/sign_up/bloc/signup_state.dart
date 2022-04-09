part of 'signup_bloc.dart';

@immutable
abstract class SignupState {}

class SignupInitial extends SignupState {}

class NavigateToHome extends SignupState {}

class LoginFailed extends SignupState {
  LoginFailed({this.message});
  String? message;
}
