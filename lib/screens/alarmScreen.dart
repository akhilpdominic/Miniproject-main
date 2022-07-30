/*import 'package:flutter/material.dart';
import 'package:flutter_alarm_clock/flutter_alarm_clock.dart';


class alarmScreen extends StatefulWidget {
  const alarmScreen({ Key? key }) : super(key: key);

  @override
  State<alarmScreen> createState() => _alarmScreenState();
}

class _alarmScreenState extends State<alarmScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(child: Text("hola"),
      onPressed: () =>
      {
        FlutterAlarmClock.createTimer(20),
      },),
      
    );
  }
}*/

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_alarm_clock/flutter_alarm_clock.dart';
import 'package:miniproject/screens/endScreen.dart';

class alert extends StatefulWidget {

  int dist;
  alert(this.dist);
  @override
  State<alert> createState() => _alertState();
}

class _alertState extends State<alert> {
  void _showDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Color.fromARGB(255, 141, 201, 249),
            title: Text('ALERT'),
            content: Text('Do you need an alert on reaching destination?'),
            actions: [
              MaterialButton(
                onPressed: () {
                  FlutterAlarmClock.createTimer(widget.dist*90);
                   Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (context) => endpage()));
                },
                child: Text('Yes'),
              ),
              MaterialButton(
                onPressed: () {},
                child: Text('No'),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 162, 212, 253),
      body: Center(
        child: MaterialButton(
          color: Color.fromARGB(255, 61, 157, 252),
          onPressed: _showDialog,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              "SET ALERT",
              style: TextStyle(fontSize: 40),
            ),
          ),
        ),
      ),
    );
  }
}