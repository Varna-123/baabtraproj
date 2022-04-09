import 'package:bloc/bloc.dart';
import 'package:firebasetesting/login/repository/signIn_repository.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

// final FirebaseAuth _auth = FirebaseAuth.instance;

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginEvent>((event, emit) async {
      if (event is UserLoginEvent) {
        try {
          await LoginRepo().loginUser(event);
          emit(NavigateToHome());
        } catch (e) {
          print('---------------');
          print(e);
        }

        // print(event.email);
        // try {
        //   final userCredential = await _auth.signInWithEmailAndPassword(
        //     email: event.email,
        //     password: event.password,
        //   );
        //   emit(NavigateToHome());
        // } catch (e) {
        //   if (e == 'user-not-found') {
        //     print('No user found for that email.');
        //   } else if (e == 'wrong-password') {
        //     print('Wrong password provided for that user.');
        //   }
        //   print(e);
        // }

        // try {
        //                 UserCredential userCredential = await FirebaseAuth
        //                     .instance
        //                     .signInWithEmailAndPassword(
        //                         email: _emailController.text,
        //                         password: _passwordController.text);
        //                 print('-------------');
        //                 Navigator.pushNamed(context, RouterConstants.homeRoute);
        //               } on FirebaseAuthException catch (e) {
        //                 if (e.code == 'user-not-found') {
        //                   print('No user found for that email.');
        //                 } else if (e.code == 'wrong-password') {
        //                   print('Wrong password provided for that user.');
        //                 }
        //               }

      }
    });
  }
}
