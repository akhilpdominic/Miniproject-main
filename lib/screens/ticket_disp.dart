import 'package:flutter/material.dart';


class ticket_disp extends StatefulWidget {
  const ticket_disp({ Key? key }) : super(key: key);

  @override
  State<ticket_disp> createState() => _ticket_dispState();
}

class _ticket_dispState extends State<ticket_disp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
      child: Container(
        
            width: double.infinity,
            height: double.infinity,
            color: Color.fromARGB(255,198, 220, 228),

            child: Stack(
              children: [
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

                 SizedBox(
                  width: 200.0,
                  height: 160.0,
                  child: Card(
                    color: Color.fromARGB(255, 218, 234, 241),
                    child: 
                    Column(
                      children: [
                         Text('Rs 25',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top:30
                      ),
                      child: Text('Adults : 2',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),),
                    ),

                     Container(
                      margin: EdgeInsets.symmetric(
                        vertical:10
                      ),
                      child: Text('Children : 2',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),),
                    ),
                    
                      ],
                    )
                   ),
                ),
                Container(
                  margin: EdgeInsets.only(top:20),
                  child: 
                  SizedBox(
                      width: 200,
                      height: 160,
                      child: Card(
                        color: Color.fromARGB(255, 218, 234, 241),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                top: 17,
                              ),
                              child: Text('Boarding point',
                            style: TextStyle(fontSize: 20),),
                            ),

                            Container(
                              margin: EdgeInsets.only(
                                top: 17,
                              ),
                              child: Image(image: 
                              AssetImage('/Users/akhilpdominic/Desktop/Doc/Miniproject-main/assets/back_arrow.png'),
                              width: 20,
                              height: 20,),
                            ),

                            Container(
                              margin: EdgeInsets.only(
                                top: 17,
                              ),
                              child: Text('Destination point',
                            style: TextStyle(fontSize: 20),),
                            ),

                            

                          ],
                        ),
                      ),
                    ),
                ),


                Container(
                  margin: EdgeInsets.only(
                    top: 180,
                    right: 0

                  ),
                  

                  child: OutlinedButton(           
                style: OutlinedButton.styleFrom(
                primary: Colors.black,
                backgroundColor: Colors.blue[300],
                minimumSize: Size(300,55),
                textStyle: const TextStyle(fontSize: 20,color: Colors.black),
                ),
                onPressed: null,
                child: Text("Scan & Pay",style: 
                TextStyle(color: Colors.black),)),
                )
                 
                ],
                )
              ],
            ),

      ) 
      
      ),
    );
  }
}