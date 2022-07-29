//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:miniproject/screens/homepage.dart';
import 'package:miniproject/screens/infopage.dart';
import 'package:miniproject/screens/login.dart';
import 'package:miniproject/screens/ticket_disp.dart';
import 'screens/homescreen.dart';


class authMain extends StatelessWidget {
  const authMain({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>
      (stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot)
      {
          if(snapshot.hasData)
          {   
            return homePage();
          }
          else
          {
            return homescreen();
          }
      }
      
      
      ),
    );
  }
}