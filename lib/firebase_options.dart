// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyCu6Ipk_nzGzHh4CNosh6ZF6Jax60H8rqM',
    appId: '1:287236212717:web:f91394f0c54e0ab24409e4',
    messagingSenderId: '287236212717',
    projectId: 'chatapp-e3f9c',
    authDomain: 'chatapp-e3f9c.firebaseapp.com',
    storageBucket: 'chatapp-e3f9c.appspot.com',
    measurementId: 'G-FQN58ZCPK8',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDoTfIUf2QA1MKwzEe8eQ24jQy6hMaN-_g',
    appId: '1:287236212717:android:9097aa78d73fb0364409e4',
    messagingSenderId: '287236212717',
    projectId: 'chatapp-e3f9c',
    storageBucket: 'chatapp-e3f9c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBCMfkZcS9Bsn4lFOjG1dGdp8msp0QXpCI',
    appId: '1:287236212717:ios:62c3f545e01b80c34409e4',
    messagingSenderId: '287236212717',
    projectId: 'chatapp-e3f9c',
    storageBucket: 'chatapp-e3f9c.appspot.com',
    iosBundleId: 'com.example.projets',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBCMfkZcS9Bsn4lFOjG1dGdp8msp0QXpCI',
    appId: '1:287236212717:ios:62c3f545e01b80c34409e4',
    messagingSenderId: '287236212717',
    projectId: 'chatapp-e3f9c',
    storageBucket: 'chatapp-e3f9c.appspot.com',
    iosBundleId: 'com.example.projets',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCu6Ipk_nzGzHh4CNosh6ZF6Jax60H8rqM',
    appId: '1:287236212717:web:eed125ed7a5b3e844409e4',
    messagingSenderId: '287236212717',
    projectId: 'chatapp-e3f9c',
    authDomain: 'chatapp-e3f9c.firebaseapp.com',
    storageBucket: 'chatapp-e3f9c.appspot.com',
    measurementId: 'G-XV0LCMMC9V',
  );
}