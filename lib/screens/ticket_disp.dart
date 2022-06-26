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
            color: Colors.blue[50],

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

                 const SizedBox(
                  width: 200.0,
                  height: 200.0,
                  child: Card(child: Text('Hello World!')),
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