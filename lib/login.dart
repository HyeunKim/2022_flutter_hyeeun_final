import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginPage extends StatelessWidget {
  // const LoginPage({super.key, required List<FirebaseUIAction> actions});
  const LoginPage();

  @override
  Widget build(BuildContext context) {
    // signInWithGoogle();

    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            const SizedBox(height: 230.0),
            Column(
              children: <Widget>[
                // Image.asset('assets/diamond.png'),
                const SizedBox(height: 16.0),
                const Text('final..'),
              ],
            ),
            const SizedBox(height: 120.0),

            ElevatedButton(
              onPressed: () async {
                await signInWithGoogle();
                if (FirebaseAuth.instance.currentUser != null) {
                  print(FirebaseAuth.instance.currentUser?.uid);
                  Navigator.pushNamed(context, '/home');
                }
                // Navigator.pushNamed(context, '/home');
                // Navigator.pop(context);
              },
              // icon: const Icon(Icons.login, size: 18),
              child: const Text("GOOGLE"),
            ),
            const SizedBox(height: 12.0),

            ElevatedButton(
              onPressed: () async {
                await FirebaseAuth.instance.signInAnonymously();
                if (FirebaseAuth.instance.currentUser != null) {
                  print(FirebaseAuth.instance.currentUser?.uid);
                  Navigator.pushNamed(context, '/home');
                }
                // Navigator.pushNamed(context, '/home');
                // Navigator.pop(context);
              },
              // icon: const Icon(Icons.login, size: 18),
              child: const Text("Guest"),
            ),


          ],
        ),
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return SignInScreen(
  //     actions: [
  //       ForgotPasswordAction(((context, email) {
  //         Navigator.of(context)
  //             .pushNamed('/forgot-password', arguments: {'email': email});
  //       })),
  //       AuthStateChangeAction(((context, state) {
  //         if (state is SignedIn || state is UserCreated) {
  //           var user = (state is SignedIn)
  //               ? state.user
  //               : (state as UserCreated).credential.user;
  //           if (user == null) {
  //             return;
  //           }
  //           if (state is UserCreated) {
  //             user.updateDisplayName(user.email!.split('@')[0]);
  //           }
  //           if (!user.emailVerified) {
  //             user.sendEmailVerification();
  //             const snackBar = SnackBar(
  //                 content: Text(
  //                     'Please check your email to verify your email address'));
  //             ScaffoldMessenger.of(context).showSnackBar(snackBar);
  //           }
  //           Navigator.of(context).pushReplacementNamed('/home');
  //         }
  //       })),
  //     ],
  //   );
  // }
}

Future<UserCredential> signInWithGoogle() async {
  // Trigger the authentication flow
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  // Obtain the auth details from the request
  final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

  // Create a new credential
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );

  // Once signed in, return the UserCredential
  return await FirebaseAuth.instance.signInWithCredential(credential);
}