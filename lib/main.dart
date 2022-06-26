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
      home: ticket_disp());
      /*Scaffold(
        body: SafeArea(
          child:  Container(
          
          color: Colors.white30,
          width: double.infinity,
          
          margin: EdgeInsets.symmetric(
            horizontal: 0,
            vertical: 0
          ),

          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.start,

            children: [

               Column(
                  children: [

                    Text('Boarding pont',
              style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.blue),
              ),
              Container(margin: EdgeInsets.symmetric(
                horizontal: 60,
                vertical: 10
              ),
              child:TextField(decoration: InputDecoration(hintText: 'Enter starting point',)),),

              
              
                  ],
                
              ),
              
              Text('Destination',
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.blue),
              ),


            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 60,
                vertical: 10
              ),
              child: TextField(decoration: InputDecoration(hintText: 'Enter destination point',))
,
            ),

             
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 55,
                vertical: 50
              ),
              child:  Row(
              children: [
                Container(
                  margin: EdgeInsets.all(5),
                  width: 120,
                  color: Colors.white,
                  
                  child: Column(                  
                  children: [
                    Text('ADULT',style: TextStyle(fontSize: 25),),
                    NumberInputPrefabbed.roundedButtons(
                    controller: TextEditingController(),
                    incDecBgColor: Colors.blue,
                    buttonArrangement: ButtonArrangement.incRightDecLeft,
                    ),                    
                  ],
                ),),

                Container(
                  
                  margin: EdgeInsets.all(5),

                  width: 120,
                  color: Colors.blue,
                  
                  child: Column(  
                                    
                  children: [
                    Text('CHILD',style: TextStyle(fontSize: 25),),
                    NumberInputPrefabbed.roundedButtons(
                    controller: TextEditingController(),
                    incDecBgColor: Colors.blue,
                    buttonArrangement: ButtonArrangement.incRightDecLeft,
                    ),                    
                  ],
                ),)
                
              ],
            ),
            )
           ,

            OutlinedButton(           
              style: OutlinedButton.styleFrom(
                primary: Colors.black,
                backgroundColor: Colors.blue[300],
              minimumSize: Size(300,70),
              textStyle: const TextStyle(fontSize: 20,color: Colors.white),
              ),
              onPressed: null, child: Text("Proceed")),


            ],
          ),
        ))
        ),
    );
    */
  }
}
