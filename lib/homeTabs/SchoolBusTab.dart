import 'package:flutter/material.dart';

class SchoolBusTab extends StatefulWidget {
  @override
  _SchoolBusTabState createState() => _SchoolBusTabState();
}

class _SchoolBusTabState extends State<SchoolBusTab> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: Center(
        child: Text("校园班车"),
      )
    );
  }
}