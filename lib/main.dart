import 'package:flutter/material.dart';
import 'package:miniproject/screens/infopage.dart';
import 'package:miniproject/screens/ticket_disp.dart';
import 'package:number_inc_dec/number_inc_dec.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'miniproject',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const infopage());        
  }
}
