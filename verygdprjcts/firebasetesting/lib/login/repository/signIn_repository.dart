import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebasetesting/login/bloc/login_bloc.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

class LoginRepo {
  Future<bool> loginUser(UserLoginEvent event) async {
    print(event.email);
    print('-----------------');
    print(event.password);
    try {
      final userCredential = await _auth.signInWithEmailAndPassword(
        email: event.email,
        password: event.password,
      );
      return true;
    } catch (e) {
      if (e == 'user-not-found') {
        print('No user found for that email.');
      } else if (e == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
      print(e);
      throw (e);
    }
  }
}
