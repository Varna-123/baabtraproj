part of 'signup_bloc.dart';

@immutable
abstract class SignupEvent {}

class UserSignupEvent extends SignupEvent {
  UserSignupEvent(
      {required this.username,
      required this.email,
      required this.password,
      required this.mobilenumber});
  String username;
  String email;
  String password;
  String mobilenumber;
}
