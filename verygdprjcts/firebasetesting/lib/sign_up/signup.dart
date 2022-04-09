import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebasetesting/router/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/tap_bounce_container.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import 'bloc/signup_bloc.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);
  final FirebaseAuth auth = FirebaseAuth.instance;
  final SignupBloc _signupBloc = SignupBloc();

  final _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController =
          TextEditingController(text: ''),
      _passwordController = TextEditingController(text: ''),
      _usernameController = TextEditingController(text: ''),
      _mobilenumber = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _signupBloc,
      // scaffold wrap with blocconsumer
      child: BlocConsumer<SignupBloc, SignupState>(
        listener: (context, state) {
          print(state);
          if (state is NavigateToHome) {
            print('------------------------');
            print("register successfully");

            showTopSnackBar(
              context,
              CustomSnackBar.success(message: 'Registered successfully'),
            );
          } else if (state is LoginFailed) {
            showTopSnackBar(
              context,
              CustomSnackBar.error(
                message: state.message.toString(),
              ),
            );
          }
          print(state);
          // TODO: implement listener
        },
        builder: (context, state) {
          print(state);
          return Scaffold(
            backgroundColor: Colors.lightGreen,
            body: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: SafeArea(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 30, top: 50),
                        child: Text('SIGNUP'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Enter a valid username';
                            }
                            return null;
                          },
                          controller: _usernameController,
                          decoration: const InputDecoration(
                            labelText: "Enter your UserName",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: TextField(
                          controller: _emailController,
                          decoration: const InputDecoration(
                            labelText: "Enter your Email",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Enter a strong password';
                            }
                            return null;
                          },
                          controller: _passwordController,
                          decoration: const InputDecoration(
                            labelText: 'Password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: TextFormField(
                          validator: (value) {
                            if (value == null ||
                                value.isEmpty ||
                                value.length != 10) {
                              return 'Enter a valid mobile no';
                            }
                            return null;
                          },
                          controller: _mobilenumber,
                          decoration: const InputDecoration(
                            labelText: 'mobilenumber',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              _signupBloc.add(
                                UserSignupEvent(
                                    email: _emailController.text,
                                    password: _passwordController.text,
                                    username: _usernameController.text,
                                    mobilenumber: _mobilenumber.text),
                              );
                              // If the form is valid, display a snackbar. In the real world,
                              // you'd often call a server or save the information in a database.

                            }
                          },
                          // onPressed: () async {
                          //   print(_emailController.text);
                          //   print(_passwordController.text);
                          //   try {
                          //     final userCredential = await FirebaseAuth.instance
                          //         .createUserWithEmailAndPassword(
                          //       // email: 'surya@baabte.com',
                          //       // password: '12345678',
                          //       email: _emailController.text,
                          //       password: _passwordController.text,
                          //     );
                          //   } on FirebaseAuthException catch (e) {
                          //     if (e.code == 'weak-password') {
                          //       print("The password is weak");
                          //     } else if (e.code == 'email-already-in-use') {
                          //       print('Email already exist');
                          //     }
                          //   } catch (e) {
                          //     print(e);
                          //   }
                          // },
                          child: const Text('Submit'),
                        ),
                      ),
                      TextButton(
                        child: Text('Already have a account'),
                        onPressed: () {
                          Navigator.pushNamed(
                              context, RouterConstants.loginRoute);
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
