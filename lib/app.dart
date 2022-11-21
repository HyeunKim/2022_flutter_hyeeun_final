import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'add.dart';
import 'home.dart';
import 'login.dart';
import 'profile.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      routes: {
        '/home': (context) {
          return const HomePage();
        },
        '/sign-in': ((context) {
          return LoginPage();
        }),
        '/add': ((context) {
          // return ProfilePage(providers: [], actions: [],);
          return AddPage();
        }),
        '/forgot-password': ((context) {
          final arguments = ModalRoute.of(context)?.settings.arguments
          as Map<String, dynamic>?;

          return ForgotPasswordScreen(
            email: arguments?['email'] as String,
            headerMaxExtent: 200,
          );
        }),
        '/profile': ((context) {
          // return ProfilePage(providers: [], actions: [],);
          return ProfilePage();
        })
      },
      // title: 'Firebase Meetup',

      // home: const HomePage(),
    );
  }
}