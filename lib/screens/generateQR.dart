import 'package:barcode_scan_fix/barcode_scan.dart';
import 'package:flutter/material.dart';
import 'package:miniproject/screens/infopage.dart';

class ScanQR extends StatefulWidget {
@override
_ScanQRState createState() => _ScanQRState();
}

class _ScanQRState extends State<ScanQR> {

String qrCodeResult = "Please scan the QR code!";

@override
Widget build(BuildContext context) {
	return Scaffold(
	body: Container(

    color: Color.fromARGB(255, 124, 202, 241),
		padding: EdgeInsets.all(20),
	child: Column(
	mainAxisAlignment: MainAxisAlignment.center,
	crossAxisAlignment: CrossAxisAlignment.stretch,
	children: [
	//Message displayed over here
	Text(
		"ETICK",
		style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold,color: Colors.white),
		textAlign: TextAlign.center,
    
	),
	Text(
		qrCodeResult,
		style: TextStyle(
		fontSize: 20.0,
		),
		textAlign: TextAlign.center,
	),
	SizedBox(
		height: 100.0,
	),

	//Button to scan QR code
	FlatButton(
    color: Colors.orange,
		padding: EdgeInsets.all(25),
		onPressed: () async {
		String codeSanner = await BarcodeScanner.scan(); 
    
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => infopage(codeSanner))
    );
		setState(() {
			qrCodeResult = codeSanner;
		});
		},
		child: Text("Open Scanner",style: TextStyle(color: Colors.white,fontSize: 25),),
		//Button having rounded rectangle border
		shape: RoundedRectangleBorder(
		//side: BorderSide(color: Colors.white),
		borderRadius: BorderRadius.circular(5.0),
		),
	),

		],
		),
	),
	);
}
}

