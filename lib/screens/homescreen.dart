import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class homescreen extends StatefulWidget {
  const homescreen({ Key? key }) : super(key: key);

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {


  final _emailController=TextEditingController();
  final _passwordController=TextEditingController();

  Future signIn() async
  {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _emailController.text.trim(), 
      password: _passwordController.text.trim());
  }

  void dispose()
  {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          color: Colors.blue[100],
        
          child: 
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Container(
                        child: Image(image: AssetImage('assets/etick1.png'),)
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    Container(
                      margin: EdgeInsets.only(
                      right: 130
                      ),
                      child: Text('Sign in to your account',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500
                      ),),
                      ),
              
                  SizedBox(
                    height: 20,
                  ),
                    
                    
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20
                      ),
                      child: Container(
                         decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
              
                        ),
                        child: TextField(
                          controller: _emailController,
                          decoration: InputDecoration(
                          hintText: '  Email',
                          border: InputBorder.none,
                        
                        ),),
                      ),
                    ),
              
              
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
              
                        ),
                        child: TextField(
                          controller: _passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                          hintText: '  Password',
                          border: InputBorder.none,
                        
                        ),),
                      ),
                    ),
              
                    SizedBox(
                      height: 20,
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
                  onPressed:signIn,
                
                  child: Text("Get Started",style: 
                  TextStyle(color: Colors.white),)),
              ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Not a member? ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),),
              
                        Text('Sign up',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.bold
                        ),)
                      ],
                    )
                    
                   
                  ],
                ),
              ),
            ),
          ),
        )),
    );
  }
}