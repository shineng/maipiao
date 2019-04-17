import 'package:flutter/material.dart';

class UserTab extends StatefulWidget {
  @override
  _UserTabState createState() => _UserTabState();
}

class _UserTabState extends State<UserTab> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: Center(
        child: Text("我的"),
      )
    );
  }
}