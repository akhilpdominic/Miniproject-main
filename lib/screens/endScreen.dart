import 'package:flutter/material.dart';
import 'package:miniproject/authMain.dart';
import 'package:miniproject/screens/bottomNav.dart';
import 'package:miniproject/screens/homepage.dart';

class endpage extends StatelessWidget {
  const endpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color:Colors.blue[100],
        child: Column(
          children: [

          SizedBox(height: 140),

            Image(
              image: AssetImage('assets/etick1.png'),
            ),
            SizedBox(height: 30,),
            Center(
              child: Text(
                '\tThank you...\nHave a safe journey\n\n',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
                textAlign: TextAlign.left,
                textDirection: TextDirection.ltr,
              ),
            ),

            SizedBox(height: 40,),

            OutlinedButton(           
                  style: OutlinedButton.styleFrom(
                  primary: Colors.black,
                  backgroundColor: Colors.blue[300],
                  minimumSize: Size(300,55),
                  textStyle: const TextStyle(fontSize: 20,color: Colors.black),
                  ),
                  onPressed: ()
                  {

                    
                   Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                  authMain()), (Route<dynamic> route) => false);

                  },
                  child: Text("Back to home",style: 
                  TextStyle(color: Colors.black),)),

            
          ],
        ),
      ),
    );
  }
}