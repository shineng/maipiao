import 'package:flutter/material.dart';

class SchoolBusTab extends StatefulWidget {
  @override
  _SchoolBusTabState createState() => _SchoolBusTabState();
}

class _SchoolBusTabState extends State<SchoolBusTab> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(body: Container(
     height: 60.0,
     color: Colors.green,
     child: Row(children: <Widget>[
        CircleAvatar(
          backgroundImage: AssetImage('images/route_updown.jpg'),
          radius: 15.0,
        ),
       
        Expanded(child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              color: Colors.blue,
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text("Hello Eric3",style: TextStyle(fontWeight: FontWeight.bold),)
            ),
          ],
        ),),
        
      ],),
   ),);
  }
}