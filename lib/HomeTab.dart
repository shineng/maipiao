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
    return DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: Column(
          //Column 是一个垂直分布的布局组件
          children: <Widget>[
            Container(
              //Container是一个容器组件，它可以定义一个组件的大小和颜色等
              color: Colors.blue,
              height: 100,
              child: Image.asset(
                // 我们把Image放在了Container里，通过Container的高度来对图片进行约束
                'images/title_banner.jpg',
                //下面的方法用于获取屏幕的宽带，也就是说我们把图片的尺寸定义为宽度与屏幕相同
                width: MediaQuery.of(context).size.width,
                // 由于在不同分辨率下图片可能并不一定刚好符合屏幕尺寸的要求
                // 因此我们通过ImageRepeat来告诉组件，如果宽度不够就重复堆叠
                repeat: ImageRepeat.repeat,
              ),
            ),
            Container(
              // 我们在图片的下面放一个容器，用来存放标签菜单按钮
              color: Colors.lightBlue,
              child: AspectRatio(
                  // ApsecRatio 用于设置子空间的长宽比，这样就可以让TabBar宽度充满屏幕的情况下
                  // 灵活定义其高度
                  aspectRatio: 12.0 / 1.0,
                  child: TabBar(
                    // TabBar是标签菜单组件
                    isScrollable: true, //控制其是否可以滚动
                    indicatorColor: Colors.white, //文本的颜色
                    indicatorWeight: 1.0, // 切换标签时底部衬线的宽度
                    labelStyle: selected_style, //标签按钮的风格
                    unselectedLabelStyle: unselected_style, // 未选中情况下按钮的风格
                    tabs: <Widget>[
                      //这里是每个标签的文本内容
                      Tab(
                        text: "校园班车",
                      ),
                      Tab(
                        text: "客运班车",
                      ),
                      Tab(
                        text: "定制班车",
                      ),
                    ],
                  )),
            ),
            Expanded(
                // 接下来我们点击不同标签按钮切换的页面定义在TabBarView中
                child: TabBarView(
              children: <Widget>[SchoolBusTab(), BusTab(), RentBusTab()],
            ))
          ],
        ));
  }
}
