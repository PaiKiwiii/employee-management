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
    apiKey: 'AIzaSyDLgEBWjUuHsUiUkLXIY_I6KAlnTNGzV8I',
    appId: '1:1096477697101:web:5208b8270498b6baa8a804',
    messagingSenderId: '1096477697101',
    projectId: 'hotel-cc4bc',
    authDomain: 'hotel-cc4bc.firebaseapp.com',
    storageBucket: 'hotel-cc4bc.appspot.com',
    measurementId: 'G-NPL7EDYQD7',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBqP1uTh5mxQJ_-2PNkne1T7ppR4oM001A',
    appId: '1:1096477697101:android:03d40006e1cc3ff6a8a804',
    messagingSenderId: '1096477697101',
    projectId: 'hotel-cc4bc',
    storageBucket: 'hotel-cc4bc.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyASL7r5iXSdeQFBbyxJs-P6-wGpJN900O8',
    appId: '1:1096477697101:ios:614ac60fa4861e07a8a804',
    messagingSenderId: '1096477697101',
    projectId: 'hotel-cc4bc',
    storageBucket: 'hotel-cc4bc.appspot.com',
    iosBundleId: 'com.example.hotel',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyASL7r5iXSdeQFBbyxJs-P6-wGpJN900O8',
    appId: '1:1096477697101:ios:614ac60fa4861e07a8a804',
    messagingSenderId: '1096477697101',
    projectId: 'hotel-cc4bc',
    storageBucket: 'hotel-cc4bc.appspot.com',
    iosBundleId: 'com.example.hotel',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDLgEBWjUuHsUiUkLXIY_I6KAlnTNGzV8I',
    appId: '1:1096477697101:web:063cca43e15fc162a8a804',
    messagingSenderId: '1096477697101',
    projectId: 'hotel-cc4bc',
    authDomain: 'hotel-cc4bc.firebaseapp.com',
    storageBucket: 'hotel-cc4bc.appspot.com',
    measurementId: 'G-E0481165BD',
  );

}