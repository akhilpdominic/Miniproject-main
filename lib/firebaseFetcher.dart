import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<int> getd(String place) async
    {
      int a=1;
      List<int> list = []; 
      var snap = await FirebaseFirestore.instance.collection('stops').where('place', isEqualTo: place).get();
      for ( var stop in snap.docs){
      list.add( (stop.data() as Map<String,dynamic>)["distance"]);

      for(var i in list)
      {
        a=i;
      }

      
      
    }
    return a; 
}

void addTicketdata(String boardingpt,String destpt,String amount) async
{
  
  await FirebaseFirestore.instance.collection(FirebaseAuth.instance.currentUser!.email.toString()).add(
    {
      'date':DateTime.now().toString(),
      'boarding point':boardingpt,
      'destination point':destpt,
      'ticket amount':amount
    }
  );

}