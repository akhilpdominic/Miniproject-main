import 'package:flutter/material.dart';

class devInfo extends StatefulWidget {
  const devInfo({Key? key}) : super(key: key);

  @override
  State<devInfo> createState() => _devInfoState();
}

class _devInfoState extends State<devInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon:
              Icon(Icons.arrow_back, color: Color.fromARGB(255, 255, 255, 255)),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text("Developer Info"),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.fromLTRB(20, 80, 20, 10),
          width: double.infinity,
          color: Colors.blue[200],
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "E-TICK",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.red[900]),
              ),
              Text(
                'Version 1.0.0',
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
              SizedBox(
                height: 80,
              ),
              Text(
                'Developed with ❤️ by',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Aarsha VS",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Akhil P Dominic",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Alen Scaria Antony",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Aneena Thankachan",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 150,
              ),
              Center(
                  child: Text(
                      "Any Queries?\nReach out to us on akhilpdominic2001@gmail.com"))
            ],
          ),
        ),
      ),
    );
  }
}
