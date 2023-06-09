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
    apiKey: 'AIzaSyCafk2MCzZz39gjA-Iw0kM-30K1ylyio6U',
    appId: '1:209666662040:web:0dc73d966f19e012db7aed',
    messagingSenderId: '209666662040',
    projectId: 'fotosfirebase-49f24',
    authDomain: 'fotosfirebase-49f24.firebaseapp.com',
    databaseURL: 'https://fotosfirebase-49f24.firebaseio.com',
    storageBucket: 'fotosfirebase-49f24.appspot.com',
    measurementId: 'G-V2G24DVWH4',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAuL2B2vCjMZeKxX1l2sMYLNEGlZF7VJVk',
    appId: '1:209666662040:android:c8fd8e7019fdba2adb7aed',
    messagingSenderId: '209666662040',
    projectId: 'fotosfirebase-49f24',
    databaseURL: 'https://fotosfirebase-49f24.firebaseio.com',
    storageBucket: 'fotosfirebase-49f24.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAZV4wH0GytO7Ksq8aRDT9xS46eZXqxXzE',
    appId: '1:209666662040:ios:0bada0ef7086f00cdb7aed',
    messagingSenderId: '209666662040',
    projectId: 'fotosfirebase-49f24',
    databaseURL: 'https://fotosfirebase-49f24.firebaseio.com',
    storageBucket: 'fotosfirebase-49f24.appspot.com',
    iosClientId: '209666662040-qo0t15kile2um1l4umu81rg92h2fa8ri.apps.googleusercontent.com',
    iosBundleId: 'com.fotosfirebase.crud',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAZV4wH0GytO7Ksq8aRDT9xS46eZXqxXzE',
    appId: '1:209666662040:ios:bfbb3edb935adea7db7aed',
    messagingSenderId: '209666662040',
    projectId: 'fotosfirebase-49f24',
    databaseURL: 'https://fotosfirebase-49f24.firebaseio.com',
    storageBucket: 'fotosfirebase-49f24.appspot.com',
    iosClientId: '209666662040-b50lnlcktgn3b3g44s34rlh3u8ot828c.apps.googleusercontent.com',
    iosBundleId: 'com.fotosfirebase.crud.RunnerTests',
  );
}
