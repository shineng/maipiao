import 'package:flutter/material.dart';
// import 'package:flutter_swiper/flutter_swiper.dart';

class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset('images/title_banner.jpg',fit: BoxFit.contain,)
    );
  }
}