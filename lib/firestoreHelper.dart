import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

int a=-1,b=-1;

class getFirestoredata extends StatelessWidget {

  final String documentid;
 
  

  getFirestoredata({required this.documentid});
 

  @override
  Widget build(BuildContext context) {
   


    CollectionReference stopsdata=FirebaseFirestore.instance.collection(FirebaseAuth.instance.currentUser!.email.toString());
    //FirebaseFirestore.instance.collection('stops').where('place', isEqualTo: boarding).get();


/*
    void getd() async
    {
      List<int> list = []; 
      var snap = await FirebaseFirestore.instance.collection('stops').where('place', isEqualTo: destination).get();
      for ( var stop in snap.docs){
      list.add( (stop.data() as Map<String,dynamic>)["distance"]);

      for(var i in list)
      {
        print(i.runtimeType);
      }
    }
    }

    */
    
    return FutureBuilder<DocumentSnapshot>(
      future: stopsdata.doc(documentid).get(),
      builder: ((context,snapshot)
      {
        if(snapshot.connectionState==ConnectionState.done)
        {
          Map<String,dynamic> data=snapshot.data!.data() as Map<String, dynamic>;
          //print(data['distance'].runtimeType);
            return Card(
              child: 
            SizedBox(
              width: 300,
              height: 100,
              child: Text("Boarding Point: ${data['boarding point']}\nDestination Point: ${data['destination point']}\ndate: ${data['date']}\nTicket Amount: ${data['ticket amount']}",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
            
            );
          
        }
        return Text('Loading..');
      }
      ));
  }
}