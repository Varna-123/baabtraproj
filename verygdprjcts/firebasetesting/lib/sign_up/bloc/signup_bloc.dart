import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'signup_event.dart';
part 'signup_state.dart';

CollectionReference users = FirebaseFirestore.instance.collection('Users');

final FirebaseAuth _auth = FirebaseAuth.instance;

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupBloc() : super(SignupInitial()) {
    on<SignupEvent>(
      (event, emit) async {
        if (event is UserSignupEvent) {
          print(event.email);
          print(event.password);
          print(event.mobilenumber);
          print(event.username);

          try {
            final userCredential = await _auth.createUserWithEmailAndPassword(
              email: event.email,
              password: event.password,
            );
            await users.doc(userCredential.user!.uid).set({
              'username': event.username,
              'email': event.email,
              'mobilenumber': event.mobilenumber,
              'isSeller': true,
              'uid': userCredential.user!.uid,
              'permmission': false
            });

            emit(NavigateToHome());
          } catch (e) {
            if (e == 'user-not-found') {
              print('No user found for that email.');
            } else if (e == 'wrong-password') {
              print('Wrong password provided for that user.');
            }
            emit(LoginFailed(message: e.toString()));
          }
        }
      },
    );
  }
}
