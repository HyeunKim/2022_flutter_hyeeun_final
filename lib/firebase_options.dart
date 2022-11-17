// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDnMbu2wOF5dEewrBncUkm6iF5GzhDxu2U',
    appId: '1:685872824080:web:7b589d37c287069296ef95',
    messagingSenderId: '685872824080',
    projectId: 'for-final-project',
    authDomain: 'for-final-project.firebaseapp.com',
    storageBucket: 'for-final-project.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyASN-hLRcXe7UySINmWVjJMMWpYOCGAk8I',
    appId: '1:685872824080:android:dc96a87d06bdac1896ef95',
    messagingSenderId: '685872824080',
    projectId: 'for-final-project',
    storageBucket: 'for-final-project.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDTZ-DGcpUCVBwR0CUYFz6p6sXFVN6lQlE',
    appId: '1:685872824080:ios:69d229904312a25696ef95',
    messagingSenderId: '685872824080',
    projectId: 'for-final-project',
    storageBucket: 'for-final-project.appspot.com',
    androidClientId: '685872824080-eus1mto93vqb36dnc98lqonhlcnglod6.apps.googleusercontent.com',
    iosClientId: '685872824080-51f7oe0opg4qej3hnui63vbin5htljl9.apps.googleusercontent.com',
    iosBundleId: 'com.example.gtkFlutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDTZ-DGcpUCVBwR0CUYFz6p6sXFVN6lQlE',
    appId: '1:685872824080:ios:69d229904312a25696ef95',
    messagingSenderId: '685872824080',
    projectId: 'for-final-project',
    storageBucket: 'for-final-project.appspot.com',
    androidClientId: '685872824080-eus1mto93vqb36dnc98lqonhlcnglod6.apps.googleusercontent.com',
    iosClientId: '685872824080-51f7oe0opg4qej3hnui63vbin5htljl9.apps.googleusercontent.com',
    iosBundleId: 'com.example.gtkFlutter',
  );
}
