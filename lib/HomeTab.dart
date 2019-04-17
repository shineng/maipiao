import 'package:flutter/material.dart';
class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center( //Center是一个布局组件，可以让其内部的组件居中显示
        child: Text("主页"),
      )
    );
  }
}