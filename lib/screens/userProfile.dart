import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class userProfile extends StatefulWidget {
    
    String usermail;
    userProfile(this.usermail);

  @override
  State<userProfile> createState() => _userProfileState();
}

class _userProfileState extends State<userProfile> {

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        
        child: Container(
        
        color: Color.fromARGB(255, 124, 202, 241)
,
          child: Center(
            
            child: 
          Container(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                Icons.contacts_sharp,
                size: 44.0,
              ),
              SizedBox(height: 20,),
              Text("Signed in as : ${widget.usermail}",style: TextStyle(color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.bold
              ),),

              SizedBox(height: 20,),

              OutlinedButton(           
                    style: OutlinedButton.styleFrom(
                    primary: Colors.black,
                    backgroundColor: Colors.orange,
                    minimumSize: Size(50,55),
                    textStyle: const TextStyle(fontSize: 20,color: Colors.black),
                    ),
                    onPressed: ()
                    {
                      
                       FirebaseAuth.instance.signOut();



                    },
                    child: Text("Sign out",style: 
                    TextStyle(color: Colors.black),)),




              ],
            )
          ),),
        )
      ),
    );
  }
}