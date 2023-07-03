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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBMr3iSKA6FgYfW3TFkNNJlmGiNhGVBwAI',
    appId: '1:53253813394:web:9094d9279ef28eab9da24b',
    messagingSenderId: '53253813394',
    projectId: 'fbclassone',
    authDomain: 'fbclassone.firebaseapp.com',
    storageBucket: 'fbclassone.appspot.com',
    measurementId: 'G-1DFG9MGNCT',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAWyiewDSmelb73CeCpwv1PoFy1DFZVw20',
    appId: '1:53253813394:android:1787401afb2a01309da24b',
    messagingSenderId: '53253813394',
    projectId: 'fbclassone',
    storageBucket: 'fbclassone.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCrU3USZT8PvFqCadcdvyGNgISvm-uq8Hc',
    appId: '1:53253813394:ios:f3d9d9762338ddc29da24b',
    messagingSenderId: '53253813394',
    projectId: 'fbclassone',
    storageBucket: 'fbclassone.appspot.com',
    iosClientId: '53253813394-jliav11n5skg5micmc3a4or226uq5ms2.apps.googleusercontent.com',
    iosBundleId: 'com.example.ecommerce',
  );
}