import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:miniproject/screens/ticket_disp.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({ Key? key }) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      SafeArea(
        child:Stack(children: [
        GoogleMap(initialCameraPosition: CameraPosition(
        target: LatLng(9.562834,76.786962),
        zoom: 8.5
      )),
      Card(
        
        elevation: 10,
        color: Color.fromARGB(200, 1, 11, 40),
        child: const SizedBox(
          width: 600,
          height: 100,
          child: Center(child: Text('Distance left : 23 Km',
          style: TextStyle(fontSize: 23,color: Colors.white),)),
        ),
      ),
        ],
        )
       
        
        /*Container(
          height: double.infinity,
          width: double.infinity,
          color:Colors.blue[50],
          child:
          Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      right:80,
                      top:0,
                      
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
                    margin: EdgeInsets.only(
                      left:0,
                      top:0,
                      
                    ),
                    child: Text('ALERT',style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                    ),),
                  )
                ],
              ),

              /*Card(
        elevation: 0,
        color: Theme.of(context).colorScheme.surfaceVariant,
        child: const SizedBox(
          width: 300,
          height: 100,
          child: Center(child: Text('Filled Card')),
        ),
      ),*/
               Container(
        margin: EdgeInsets.only(top:30,right:10,left:10),
        width: 500,
        height: 250,
        child:GoogleMap(initialCameraPosition: CameraPosition(
        target: LatLng(9.562834,76.786962),
        zoom: 8.5
      )),),

      Text('Distance Left')
            ],
          )
        )*/),
    );
  }
}