import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:miniproject/firebaseFetcher.dart';
import 'package:miniproject/screens/alarmScreen.dart';


class ticket_disp extends StatefulWidget {
  
  final String board;
  final String dest;
  final String adult;
  final String child;
  final String total;
  final String buscode;
  final int timer;

  const ticket_disp(this.board,this.dest,this.adult,this.child,this.total,this.buscode,this.timer);

  @override
  State<ticket_disp> createState() => _ticket_dispState();
}

class _ticket_dispState extends State<ticket_disp> {
  @override
  Widget build(BuildContext context) {

      String b=widget.board;
      String d=widget.dest;
      String a=widget.adult;
      String c=widget.child;
      String t=widget.total;
      String code=widget.buscode;




    return Scaffold(
      body: SafeArea(
      child: Container(
        
            width: double.infinity,
            height: double.infinity,
            color: Color.fromARGB(255, 124, 202, 241),

            child: Stack(

              alignment: AlignmentDirectional.center,
              children: [
                Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 22,),
                Text('Payment Summary',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
                SizedBox(height: 60,),

                 SizedBox(
                  width: 350.0,
                  height: 300.0,
                  child: Card(
                    color: Color.fromARGB(255, 218, 234, 241),
                    child: 
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 40,),

                         Text('    Bus no     :   $code',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),),
                        SizedBox(height: 20,),

                        Text('    Boarding point     :   $b',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),),
                        SizedBox(height: 20,),

                        Text('    Destination point :   $d',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),),

                     SizedBox(height: 20,),

                        Text('    Adults     :    $a',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),),

                     SizedBox(height: 20,),

                        Text('    Children  :   $c',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),),

                     SizedBox(height: 20,),

                      ],
                    )
                   ),
                ),
  
                SizedBox(
                  width: 350.0,
                  height: 100.0,
                  
                  child: Card(
                    
                    color: Color.fromARGB(255, 218, 234, 241),
                    child: 
                  Align(
                    
                    alignment: FractionalOffset.center,
                   child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text('Amount payable',style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),),
                          Text('\u{20B9} '+widget.total,style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 30,
                            color: Colors.red[400]
                          ),)
                     ],
                   ),
                  ),))
                 
                ],
                ),

                Align(
                  alignment: Alignment(0.0,0.9),
                  child: Container(
                    margin: EdgeInsets.only(
                      top: 200,
                      right: 0
                
                    ),
                    
                
                    child: OutlinedButton(           
                  style: OutlinedButton.styleFrom(
                  primary: Colors.black,
                  backgroundColor: Colors.blue[300],
                  minimumSize: Size(300,55),
                  textStyle: const TextStyle(fontSize: 20,color: Colors.black),
                  ),
                  onPressed: ()
                  {
                    
                    addTicketdata(widget.board, widget.dest,widget.total);
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (context) => alert(widget.timer)));
                    //FirebaseAuth.instance.signOut();

                  },
                  child: Text("Scan & Pay",style: 
                  TextStyle(color: Colors.black),)),
                  ),
                )
              ],
            ),

      ) 
      
      ),
    );
  }
}