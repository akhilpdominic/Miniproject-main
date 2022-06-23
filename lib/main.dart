import 'package:flutter/material.dart';

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
      home: Scaffold(
        body: SafeArea(
          child: 
          Expanded(
            
            child: Container(
          
          color: Colors.white30,
          width: double.infinity,
          
          margin: EdgeInsets.symmetric(
            horizontal: 0,
            vertical: 0
          ),

          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Container(
                child: Column(
                  children: [
                    Text('Boarding point',
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.blue),
              ),
              Container(margin: EdgeInsets.symmetric(
                horizontal: 60,
                vertical: 10
              ),
              child:TextField(decoration: InputDecoration(hintText: 'Enter starting point',)),),

              
              
                  ],
                ),
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
              child:
              Row(
                children: [
                  Container( margin: EdgeInsets.all(70),
child:Text('adult',style: TextStyle(fontSize: 30),),),
Container(child:Text('child',style: TextStyle(fontSize: 30),),),

                                  ],
              )
            )

            ],
          ),
        ))
        ),
      ),
    );
    
  }
}
