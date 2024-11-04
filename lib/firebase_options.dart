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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBFngg-6bNnLud_Yr09VN_w4MrM2JOLCnc',
    appId: '1:48889168391:web:6edc8202c71847a28ea0a2',
    messagingSenderId: '48889168391',
    projectId: 'sijagaapp',
    authDomain: 'sijagaapp.firebaseapp.com',
    storageBucket: 'sijagaapp.firebasestorage.app',
    measurementId: 'G-6MQ18W9VNF',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD8Ed32-1gYRHQ_QnDGLs0dpYdvUWW-cbg',
    appId: '1:48889168391:android:1c6691e4f56d3d898ea0a2',
    messagingSenderId: '48889168391',
    projectId: 'sijagaapp',
    storageBucket: 'sijagaapp.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDF59_nNGl-QJRDYZ6dOeNYGlbfklfjjik',
    appId: '1:48889168391:ios:b2271a8193d197468ea0a2',
    messagingSenderId: '48889168391',
    projectId: 'sijagaapp',
    storageBucket: 'sijagaapp.firebasestorage.app',
    iosBundleId: 'com.example.sijagaApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBFngg-6bNnLud_Yr09VN_w4MrM2JOLCnc',
    appId: '1:48889168391:web:1750c51ff28c7c1d8ea0a2',
    messagingSenderId: '48889168391',
    projectId: 'sijagaapp',
    authDomain: 'sijagaapp.firebaseapp.com',
    storageBucket: 'sijagaapp.firebasestorage.app',
    measurementId: 'G-2JTQN3CX6T',
  );
}
