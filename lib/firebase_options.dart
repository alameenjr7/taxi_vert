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
    apiKey: 'AIzaSyCQYc88wLalqsn0na5rQBCUNZobc9eTzUc',
    appId: '1:325293481684:web:124bdc39324bb768806541',
    messagingSenderId: '325293481684',
    projectId: 'idriver-46e1f',
    authDomain: 'idriver-46e1f.firebaseapp.com',
    storageBucket: 'idriver-46e1f.appspot.com',
    measurementId: 'G-DC5ES4JKWT',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBbb6vLUgAZNhjK2MzJv2UWYKepIDobnGk',
    appId: '1:325293481684:android:5451b3c8dbf72e03806541',
    messagingSenderId: '325293481684',
    projectId: 'idriver-46e1f',
    storageBucket: 'idriver-46e1f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAFeXwZiboXT3Wfvb7cRIBo_m_AD3n3S1Q',
    appId: '1:325293481684:ios:08c9812ed55185ff806541',
    messagingSenderId: '325293481684',
    projectId: 'idriver-46e1f',
    storageBucket: 'idriver-46e1f.appspot.com',
    iosBundleId: 'com.example.taxiVert',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAFeXwZiboXT3Wfvb7cRIBo_m_AD3n3S1Q',
    appId: '1:325293481684:ios:17a2d435aea4b76d806541',
    messagingSenderId: '325293481684',
    projectId: 'idriver-46e1f',
    storageBucket: 'idriver-46e1f.appspot.com',
    iosBundleId: 'com.example.taxiVert.RunnerTests',
  );
}
