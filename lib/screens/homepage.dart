import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_alarm_clock/flutter_alarm_clock.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:miniproject/firestoretest.dart';
import 'package:miniproject/screens/barcodeHomepage.dart';
import 'package:miniproject/screens/devInfo.dart';
import 'package:miniproject/screens/infopage.dart';
import 'package:miniproject/screens/userProfile.dart';

class homePage extends StatefulWidget {
  const homePage({ Key? key }) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  
  


  int _selectedIndex=0;
  @override
  Widget build(BuildContext context) {

    String? uname=FirebaseAuth.instance.currentUser!.email;
    var size=MediaQuery.of(context).size;
   
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height*0.49,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 124, 202, 241)
            ),
          ),
          SafeArea(child: 
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 60,),
                Text("Have a great Day!",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                )),

                SizedBox(height: 120,),

                
                Expanded(
                  child: GridView.count(crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  children: [
                    GestureDetector(
                      onTap: ()
                      {
                        Navigator.push(
                        context,
                        MaterialPageRoute(
                        builder: (context) => barcodeHomepage())
                  );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 229, 189, 243),
                          borderRadius: BorderRadius.circular(13)
                        ),
                        child: Column(
                          children: [
                            Icon(Icons.airplane_ticket,
                            size: 100,),
                            Text('Add Ticket')
                          ],
                        ),
                      
                      ),
                    ),
                     GestureDetector(
                       onTap: ()
                      {
                         FlutterAlarmClock.showTimers();

                      },
                       child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 229, 189, 243),
                          borderRadius: BorderRadius.circular(13)
                        ),
                        child: Column(
                          children: [
                            Icon(Icons.alarm_add,
                            size: 100,),
                            Text('Timer')
                          ],
                        ),
                                         ),
                     ),
                     GestureDetector(
                      onTap: (() => {
                        Navigator.push(
                        context,
                        MaterialPageRoute(
                        builder: (context) => firestoreTest()))
                      }),
                       child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 229, 189, 243),
                          borderRadius: BorderRadius.circular(13)
                        ),
                        child: Column(
                          children: [
                            Icon(Icons.history,
                            size: 100,),
                            Text('Previous tickets')
                          ],
                        ),
                                         ),
                     ),
                     GestureDetector(
                      onTap: (() => {

                        Navigator.push(
                        context,
                        MaterialPageRoute(
                        builder: (context) => devInfo()))
                        //FirebaseAuth.instance.signOut()
                      }),
                       child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 229, 189, 243),
                          borderRadius: BorderRadius.circular(13)
                        ),
                        child: Column(
                          children: [
                            Icon(Icons.developer_mode,
                            size: 100,
                            ),
                            Text("Developer info")
                          ],
                        ),
                                         ),
                     )
                  ],),
                )


              ],
            ),
          )),

        ],
      ),

    
      
    );
  }
}