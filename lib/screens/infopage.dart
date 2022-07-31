import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:miniproject/firebaseFetcher.dart';
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
  //firebase


 





  //firebase end

    var bus_id=widget.bus_no;

    return Scaffold(
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.only(
              top: 6,
              bottom: 6           
            ),
            width: double.infinity,
            height: double.infinity,
            color: Colors.blue[50],

            child: SingleChildScrollView(
              child: Stack(children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                   
                    Text('Bus no  : $bus_id'),
            
                    Container(
                      margin: EdgeInsets.symmetric(
                        vertical: 30,
                        horizontal: 70
                      ), 
                      child: Column(
                        children: [
                          Text('Boarding point',
                          style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.blue),
                          ),
            
                          TextField(decoration: InputDecoration(hintText: 'Enter starting point',),
                          controller: bController),
            
                        ],
                      )
                    ),
            
            
                    Container(
                      margin: EdgeInsets.symmetric(
                        vertical: 30,
                        horizontal: 70
                      ), 
                      child: Column(
                        children: [
                          Text('Destination',
                          style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.blue),
                          ),
            
                          TextField(decoration: InputDecoration(hintText: 'Enter destination point',),
                          controller: dController,),
            
                        ],
                      )
                    ),
            
                   Row(
                    children: [
                      Container(
                    margin: EdgeInsets.symmetric(
                        vertical: 30,
                        horizontal: 50
                      ), 
                      width: 110,
                      child: Column(
                        children: [
                          Text('ADULT',style: TextStyle(fontSize: 25),),
                      NumberInputPrefabbed.roundedButtons(
                      controller: adultController,
                      incDecBgColor: Colors.blue,
                      buttonArrangement: ButtonArrangement.incRightDecLeft,
                      ),        
                        ],
                      ),
                   ),
            
            
                   Container(
                    margin: EdgeInsets.symmetric(
                        vertical: 30,
                        horizontal: 00
                      ), 
                      width: 110,
                      child: Column(
                        children: [
                          Text('CHILD',style: TextStyle(fontSize: 25),),
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
                    margin: EdgeInsets.only(
                      top: 80,
                      right: 0
            
                    ),
            
                    child: OutlinedButton(           
                  style: OutlinedButton.styleFrom(
                  primary: Colors.black,
                  backgroundColor: Colors.blue[300],
                  
                  minimumSize: Size(300,55),
                  textStyle: const TextStyle(fontSize: 20,color: Colors.white,),
                  ),
                  
                  onPressed: () async
                  {
            
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
                   //var a=await Stopdatabase(bController.text,dController.text,int.parse(adultController.text),int.parse(childController.text));
                   
                   int s=await getd(bController.text);
                   int d=await getd(dController.text);
            
                   int tot=(s-d).abs();
                   int adult_price=int.parse(adultController.text)*tot*5;
            
                    int child_price=((int.parse(childController.text)*tot))*3;
            
                    int tot_price=adult_price+child_price;
                    
                    
                    //var b=a.toString();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                      builder: (context) => ticket_disp(bController.text,dController.text,adultController.text,childController.text,tot_price.toString(),bus_id,tot))
                    );
            
                  }, 
                  child: Text("Proceed")),
                  )
                  
                  ],
                )
              ]),
            ),
          )),
      
    );
  }
}