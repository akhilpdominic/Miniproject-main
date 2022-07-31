import 'package:flutter/material.dart';

class devInfo extends StatefulWidget {
  const devInfo({ Key? key }) : super(key: key);

  @override
  State<devInfo> createState() => _devInfoState();
}

class _devInfoState extends State<devInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          color: Colors.blue[200],
          child: Column(
            children: [
              
              SizedBox(height: 20,),

              Text("ETICK",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.red[900]),),
              Text('Version 1.0.0',style: TextStyle(color: Colors.black,fontSize: 15),),
              SizedBox(height: 80,),
              Text('Developed with 💜 by',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              SizedBox(height: 40,),
              Text("Aarsha VS",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
               SizedBox(height: 10,),

              Text("Akhil P Dominic",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
              SizedBox(height: 10,),

              Text("Alen Scaria Antony",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
              SizedBox(height: 10,),

              Text("Aneena Thankachan",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
              SizedBox(height: 150,),

              Center(child: Text("Any Queries?\nReach out to us on akhilpdominic2001@gmail.com"))

      
      
            ],
          ),
        ),
      ),
    );
  }
}