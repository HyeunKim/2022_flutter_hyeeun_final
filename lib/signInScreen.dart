import 'package:firebase_ui_auth/firebase_ui_auth.dart'; // new
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';                 // new

import 'home.dart';
import 'main.dart';
import 'app.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key, required List<FirebaseUIAction> actions});

  @override
  Widget build(BuildContext context) {
    return SignInScreen(
      actions: [
        ForgotPasswordAction(((context, email) {
          Navigator.of(context)
              .pushNamed('/forgot-password', arguments: {'email': email});
        })),
        AuthStateChangeAction(((context, state) {
          if (state is SignedIn || state is UserCreated) {
            var user = (state is SignedIn)
                ? state.user
                : (state as UserCreated).credential.user;
            if (user == null) {
              return;
            }
            if (state is UserCreated) {
              user.updateDisplayName(user.email!.split('@')[0]);
            }
            if (!user.emailVerified) {
              user.sendEmailVerification();
              const snackBar = SnackBar(
                  content: Text(
                      'Please check your email to verify your email address'));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }
            Navigator.of(context).pushReplacementNamed('/home');
          }
        })),
      ],
    );
    // return Scaffold(
    //     appBar: AppBar(
    //     title: const Text('Firebase Meetup'),
    // ),
    // body:(
    //
    // ),
    // );
  }
}