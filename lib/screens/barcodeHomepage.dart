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
    	resizeToAvoidBottomInset: false,

	
	body: Container(
		width: MediaQuery.of(context).size.height,
		height: MediaQuery.of(context).size.height,
color: Color.fromARGB(255, 255, 255, 255),		
child: Column(
		mainAxisAlignment: MainAxisAlignment.center,
		crossAxisAlignment: CrossAxisAlignment.stretch,
		children: [
				//Display Gif
			Image.network('https://cdn.dribbble.com/users/93467/screenshots/1197117/media/8d5442190f4cd2bf6869fe108b112d54.gif'),
			
      Center(child: Text('Please scan the QR code\n\tto book your tickets\n\n\n\n',style: 
      TextStyle(color: Color.fromARGB(255, 0, 0, 0),fontWeight: FontWeight.bold),)),
     
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