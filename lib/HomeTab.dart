import 'package:flutter/material.dart';
// import 'package:flutter_swiper/flutter_swiper.dart';

import 'homeTabs/BusTab.dart';
import 'homeTabs/SchoolBusTab.dart';
import 'homeTabs/RentBusTab.dart';
class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

 

  final TextStyle selected_style =
      new TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold);
  final TextStyle unselected_style =
      new TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold);

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {


    return new DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: new Column(
          children: <Widget>[
            Container(
              color: Colors.blue,
              height: 100,
              child: Image.asset(
                'images/title_banner.jpg',
                width: MediaQuery.of(context).size.width,
                repeat: ImageRepeat.repeat,
              ),
            ),
            new Container(
              color: Colors.lightBlue,
              child: new AspectRatio(
                  aspectRatio: 8.0,
                  child: new TabBar(
                      isScrollable: true,
                      indicatorColor: Colors.white,
                      indicatorWeight: 2.0,
                      labelStyle: selected_style,
                      unselectedLabelStyle: unselected_style,
                      tabs: <Widget>[
                        Tab(text: "校园班车",),
                        Tab(text: "客运班车",),
                        Tab(text: "定制班车",),
                      ],)),
            ),
            new Expanded(
                child: TabBarView(
              children: <Widget>[SchoolBusTab(), BusTab(), RentBusTab()],
            ))
          ],
        ));
  }


 
}
