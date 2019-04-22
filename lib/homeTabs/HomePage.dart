import 'package:flutter/material.dart';
import 'RentBusTab.dart';
import 'SchoolBusTab.dart';
import 'BusTab.dart';

class HomePage extends StatelessWidget {
  final int len = 3;
  final List<String> titles = ["科技", "汽车", "金融"];

  final TextStyle selected_style =
      new TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold);
  final TextStyle unselected_style =
      new TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold);

  final List<Tab> tabs = new List<Tab>();

  @override
  Widget build(BuildContext context) {
    createTabs();

    return new DefaultTabController(
        length: len,
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
                      tabs: tabs)),
            ),
            new Expanded(
                child: TabBarView(
              children: <Widget>[SchoolBusTab(), BusTab(), RentBusTab()],
            ))
          ],
        ));
  }

  void createTabs() {
    for (int i = 0; i < len; i++) {
      tabs.add(new Tab(
        text: titles[i],
      ));
    }
  }
}
