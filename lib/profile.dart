import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  // const ProfilePage({required List providers, required List<SignedOutAction> actions});
  const ProfilePage();

  @override
  Widget build(BuildContext context) {
    return ProfileScreen(
      providers: [],
      actions: [
        SignedOutAction(
          ((context) {
            Navigator.of(context).pushReplacementNamed('/home');
          }),
        ),
      ],
    );
  }
}