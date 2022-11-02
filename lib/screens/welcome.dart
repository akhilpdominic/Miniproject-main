import 'dart:async';

import 'package:flutter/material.dart';
import 'package:miniproject/screens/login.dart';

class welcome extends StatefulWidget {
  const welcome({ Key? key }) : super(key: key);

  @override
  State<welcome> createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
            resizeToAvoidBottomInset: false,

      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.blue[100],

          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 100
                ),
                child: Image(image: 
          AssetImage('assets/etick2.png')),
              ),
        
              Container(
                margin: EdgeInsets.only(
                  top: 75
                ),
                child: Text('Welcome to E-TICK',
                style: TextStyle(fontSize: 25,
                fontWeight: FontWeight.bold),),
              ),
               Container(
                margin: EdgeInsets.only(
                  top: 30
                ),
                child: Text('Bus Travel made simple',
                style: TextStyle(fontSize: 20,
                fontWeight: FontWeight.normal),),
              ),
              
                Container(
                margin: EdgeInsets.only(
                  top: 200
                ),
                child: OutlinedButton(           
                  style: OutlinedButton.styleFrom(
                  primary: Colors.black,
                  backgroundColor: Colors.blue[900],
                  minimumSize: Size(300,55),
                  textStyle: const TextStyle(fontSize: 20,color: Colors.black),
                  ),
                  onPressed: ()
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (context) => login())
                  );

                }, 
                  child: Text("Get Started",style: 
                  TextStyle(color: Colors.white),)),
              ),
              

                

            ],
          ),

          
         
      ),)
    );
  }
}