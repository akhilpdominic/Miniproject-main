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
    apiKey: 'AIzaSyACeqJ_wPNyuRhirLeQAngL0G9GlaaPQxs',
    appId: '1:561538444816:web:c41997115c33eca0062495',
    messagingSenderId: '561538444816',
    projectId: 'miniproject-354513',
    authDomain: 'miniproject-354513.firebaseapp.com',
    storageBucket: 'miniproject-354513.appspot.com',
    measurementId: 'G-79B3T3C0F6',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDnMk_-0k607i0Osa91NgoDYWTrdJZcLqg',
    appId: '1:561538444816:android:87cf849620418b53062495',
    messagingSenderId: '561538444816',
    projectId: 'miniproject-354513',
    storageBucket: 'miniproject-354513.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBLum7x06KBF-rIUH2k-6084yMSGa-k5TI',
    appId: '1:561538444816:ios:d6c178005226c6e6062495',
    messagingSenderId: '561538444816',
    projectId: 'miniproject-354513',
    storageBucket: 'miniproject-354513.appspot.com',
    iosClientId: '561538444816-n8dkj0hstp5d9n88fvt4oja8ggegtt03.apps.googleusercontent.com',
    iosBundleId: 'com.example.miniproject',
  );

  
}
