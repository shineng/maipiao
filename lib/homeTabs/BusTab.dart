import 'package:flutter/material.dart';
class BusTab extends StatefulWidget {
  @override
  _BusTabState createState() => _BusTabState();
}

class _BusTabState extends State<BusTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("汽车票"),
      )
    );
  }
}