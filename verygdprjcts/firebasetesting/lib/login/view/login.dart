import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebasetesting/login/bloc/login_bloc.dart';
import 'package:firebasetesting/router/route_constants.dart';
import 'package:firebasetesting/sign_up/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);

  final LoginBloc _loginBloc = LoginBloc();

  final TextEditingController _emailController =
          TextEditingController(text: ''),
      _passwordController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _loginBloc,
      child: BlocConsumer<LoginBloc, LoginState>(
        listener: (context, state) {
          print(state);

          if (state is NavigateToHome) {
            Navigator.pushNamed(context, RouterConstants.homeRoute);
          }
        },
        builder: (context, state) {
          return Scaffold(
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SafeArea(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Login"),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: _emailController,
                        decoration: const InputDecoration(
                          labelText: "Enter your email",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(6),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: _passwordController,
                        decoration: const InputDecoration(
                          labelText: "Enter your password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(6),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: () {
                            _loginBloc.add(
                              UserLoginEvent(
                                email: _emailController.text,
                                password: _passwordController.text,
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Sign in"),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Create Account',
                            style: TextStyle(color: Colors.amber, fontSize: 15),
                          )),
                    ),
                  ],
                )),
              ),
            ),
          );
        },
      ),
    );
  }
}
