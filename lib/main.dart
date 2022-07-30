import 'dart:async';
import 'package:splashscreen/splashscreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:miniproject/authMain.dart';
import 'package:miniproject/dbStops.dart';
import 'package:miniproject/firestoretest.dart';
import 'package:miniproject/screens/barcodeHomepage.dart';
import 'package:miniproject/screens/homepage.dart';
import 'package:miniproject/screens/homescreen.dart';
import 'package:miniproject/screens/infopage.dart';
import 'package:miniproject/screens/login.dart';
import 'package:miniproject/screens/mapscreen.dart';
import 'package:miniproject/screens/ticket_disp.dart';
import 'package:miniproject/screens/welcome.dart';
import 'package:number_inc_dec/number_inc_dec.dart';

import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Tick',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(
        seconds: 3,
        navigateAfterSeconds:welcome(),
        title: new Text(
          'E-Tick',
          style: new TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              color: Colors.white),
        ),
        image: new Image.asset('assets/etick2.png'),
        photoSize: 100.0,        
        backgroundColor: Colors.blue,
        styleTextUnderTheLoader: new TextStyle(),
        loaderColor: Colors.white
      )
    );      
  }
}
