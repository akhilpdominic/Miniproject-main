import 'package:flutter/material.dart';
import 'package:number_inc_dec/number_inc_dec.dart';



class infopage extends StatefulWidget {
  const infopage({ Key? key }) : super(key: key);

  @override
  State<infopage> createState() => _infopageState();
}

class _infopageState extends State<infopage> {
  @override
  Widget build(BuildContext context) {
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

            child: Stack(children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      right:290,
                      top:0,
                      bottom: 70
                    ),  
                    
                    child:InkWell(
                      onTap: ()
                      {
                        Navigator.pop(context);
                      },
                      child:Padding(
                      padding: EdgeInsets.all(24),
                      child: Image(image: AssetImage('/Users/akhilpdominic/todo/assets/images/back_arrow_icon.png'),
                ),
                    ),
                    ),    
                  ),

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

                        TextField(decoration: InputDecoration(hintText: 'Enter starting point',)),

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

                        TextField(decoration: InputDecoration(hintText: 'Enter destination point',)),

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
                    controller: TextEditingController(),
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
                    controller: TextEditingController(),
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
                textStyle: const TextStyle(fontSize: 20,color: Colors.white),
                ),
                onPressed: null, child: Text("Proceed")),
                )
                
                ],
              )
            ]),
          )),
      
    );
  }
}