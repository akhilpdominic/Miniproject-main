import 'package:flutter/material.dart';
import 'package:miniproject/authMain.dart';
import 'package:miniproject/screens/homepage.dart';
import 'package:miniproject/screens/infopage.dart';

class login extends StatefulWidget {
  const login({ Key? key }) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  String a="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.blue[100],
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 200
                ),
                child: Image(image: AssetImage('assets/etick1.png',
                ))
,
              ),

              Container(
                margin: EdgeInsets.only(
                  top: 100
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
                    builder: (context) => authMain())
                  );

                }, 
                  child: Text("Login",style: 
                  TextStyle(color: Colors.white),)),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 25
                ),
                child: OutlinedButton(           
                  style: OutlinedButton.styleFrom(
                  primary: Colors.black,
                  backgroundColor: Colors.orange[900],
                  minimumSize: Size(300,55),
                  textStyle: const TextStyle(fontSize: 20,color: Colors.black),
                  ),
                  onPressed: ()
                {
                  setState(() {
                    a="Registration Disabled";
                  });
                  

                }, 
                  child: Text("Register",style: 
                  TextStyle(color: Colors.white),)),
              ),





              Container(
                margin: EdgeInsets.only(
                  top: 25
                ),
                child: Text(a)
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}