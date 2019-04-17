import 'package:flutter/material.dart';

class TicketTab extends StatefulWidget {
  @override
  _TicketTabState createState() => _TicketTabState();
}

class _TicketTabState extends State<TicketTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("行程"),
      )
    );
  }
}