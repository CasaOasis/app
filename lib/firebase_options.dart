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
    apiKey: 'AIzaSyAi8q8voQ98_zh7-yIRyATCbeWpzeVVNgo',
    appId: '1:464322103646:web:01575f86c29666cc63a7cf',
    messagingSenderId: '464322103646',
    projectId: 'casaoasisgtm-9b609',
    authDomain: 'casaoasisgtm-9b609.firebaseapp.com',
    storageBucket: 'casaoasisgtm-9b609.appspot.com',
    measurementId: 'G-K5P4NTHY79',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBRUUtI2Isw8cNquByF4sK1AQ6fdNOSqOI',
    appId: '1:464322103646:android:92eae4221f33610063a7cf',
    messagingSenderId: '464322103646',
    projectId: 'casaoasisgtm-9b609',
    storageBucket: 'casaoasisgtm-9b609.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDa_b6NK0euwzqNGZoYYe6ndzvK18FLAcc',
    appId: '1:464322103646:ios:23b52f568c354c0e63a7cf',
    messagingSenderId: '464322103646',
    projectId: 'casaoasisgtm-9b609',
    storageBucket: 'casaoasisgtm-9b609.appspot.com',
    iosBundleId: 'com.example.app',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDa_b6NK0euwzqNGZoYYe6ndzvK18FLAcc',
    appId: '1:464322103646:ios:a43c5c96db42989463a7cf',
    messagingSenderId: '464322103646',
    projectId: 'casaoasisgtm-9b609',
    storageBucket: 'casaoasisgtm-9b609.appspot.com',
    iosBundleId: 'com.example.app.RunnerTests',
  );
}
