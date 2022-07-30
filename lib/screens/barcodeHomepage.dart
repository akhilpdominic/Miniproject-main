import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:barcode_scan_fix/barcode_scan.dart';
import 'package:flutter/material.dart';
import 'package:miniproject/screens/generateQR.dart';

class barcodeHomepage extends StatefulWidget {
@override
_HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<barcodeHomepage> {

@override
Widget build(BuildContext context) {
	return Scaffold(
	
	body: Container(
		width: MediaQuery.of(context).size.height,
		height: MediaQuery.of(context).size.height,
    color: Color.fromARGB(255, 124, 202, 241),
		child: Column(
		mainAxisAlignment: MainAxisAlignment.center,
		crossAxisAlignment: CrossAxisAlignment.stretch,
		children: [
			//Display Image
			Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQyYwscUPOH_qPPe8Hp0HAbFNMx-TxRFubpg&usqp=CAU")),
			
      Center(child: Text('Please scan the QR code\nto book your tickets',style: 
      TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
      SizedBox(height: 100,),
      OutlinedButton(           
                  style: OutlinedButton.styleFrom(
                  primary: Colors.black,
                  backgroundColor: Colors.orange[900],
                  fixedSize: Size(50, 55),
                  textStyle: const TextStyle(fontSize: 20,color: Colors.black),
                  ),
                  onPressed: ()
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (context) => ScanQR())
                  );

                }, 
                  child: Text("Scan QR",style: 
                  TextStyle(color: Colors.white),)),
			//Secon
		],
		),
	)
	);
}
}