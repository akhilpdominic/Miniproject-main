import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:miniproject/screens/ticket_disp.dart';
import 'package:number_inc_dec/number_inc_dec.dart';
import 'package:miniproject/dbStops.dart';

class infopage extends StatefulWidget {
  String bus_no;
  infopage(this.bus_no);

  @override
  State<infopage> createState() => _infopageState();
}

class _infopageState extends State<infopage> {
  final bController = TextEditingController();
  final dController = TextEditingController();
  final adultController = TextEditingController();
  final childController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //final Stream<QuerySnapshot> stops=FirebaseFirestore.instance.collection('stops').snapshots();

    var bus_id = widget.bus_no;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          icon:
              Icon(Icons.arrow_back, color: Color.fromARGB(255, 255, 255, 255)),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text("Enter Details"),
      ),
      body: SafeArea(
          child: Container(
        margin: EdgeInsets.only(top: 40, bottom: 15),
        width: double.infinity,
        height: double.infinity,
        child: Stack(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('\n\nBus no  : $bus_id \n\n\n'),
              Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                  child: Column(
                    children: [
                      TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Boarding point',
                            //errorText: 'Cannot be null',
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(
                              Icons.directions_bus,
                            ),
                          ),
                          controller: bController),
                    ],
                  )),
              Container(
                  margin: EdgeInsets.symmetric(vertical: 30, horizontal: 50),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Destination',
                          // errorText: 'Cannot be null',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(
                            Icons.location_pin,
                          ),
                        ),
                        controller: dController,
                      ),
                    ],
                  )),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 30, horizontal: 50),
                    width: 110,
                    child: Column(
                      children: [
                       Text(
                          'Adult\nCount',
                          style: TextStyle(fontSize: 14),
                        ),
                        NumberInputPrefabbed.roundedButtons(
                          controller: adultController,
                          incDecBgColor: Colors.blue,
                          buttonArrangement: ButtonArrangement.incRightDecLeft,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 30, horizontal: 00),
                    width: 110,
                    child: Column(
                      children: [
                       Text(
                          'Child\nCount',
                          style: TextStyle(fontSize: 14),
                        ),
                        NumberInputPrefabbed.roundedButtons(
                          controller: childController,
                          incDecBgColor: Colors.blue,
                          buttonArrangement: ButtonArrangement.incRightDecLeft,
                        ),
                      ],
                    ),
                  )
                ],
              ),
               Container(
                margin: EdgeInsets.symmetric(vertical: 15, horizontal: 70),
                child: Text(
                  '* Children of age group 6-12 require to buy\n child fare ticket (50% of Adult ticket Fare).',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Color(0xFFDC3545),
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 80, right: 0),
                child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      primary: Color.fromARGB(255, 255, 255, 255),
                      backgroundColor: Colors.blue[300],
                      minimumSize: Size(300, 55),
                      textStyle: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () async {
                      //print(stops);

                      //Firestore

                      /*StreamBuilder<QuerySnapshot>(
                  stream: stops,
                 builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) 
                 {
                    if(snapshot.hasError)
                    {
                      print("Something went wrong");
                    }
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      print("Loading");
                    }

                    final data=snapshot.requireData;
                                        print("hello ji");

                    return ListView.builder(itemCount: data.size,
                    itemBuilder: (context,index)
                    {
                      print("PLace is ${data.docs[index]['name']} and the distance is ${data.docs[index]['distance']}");
                      return Text("PLace is ${data.docs[index]['name']} and the distance is ${data.docs[index]['distance']}");
                    },);
                 },);*/

                      //
                      var a = await Stopdatabase(
                          bController.text,
                          dController.text,
                          int.parse(adultController.text),
                          int.parse(childController.text));
                      //var b=a.toString();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ticket_disp(
                                  bController.text,
                                  dController.text,
                                  adultController.text,
                                  childController.text,
                                  a.toString())));
                    },
                    child: Text("Proceed")),
              )
            ],
          )
        ]),
      )),
    );
  }
}
