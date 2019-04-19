import 'package:flutter/material.dart';
import 'HomeTab.dart';
import 'TicketTab.dart';
import 'UserTab.dart';
import 'package:flutter/services.dart';
import 'dart:io';

// main是一个dart语言的函数，它是程序的执行入口
// 在这里通过runApp来启动MyApp这个组件
void main() {
  runApp(MyApp());
  if (Platform.isAndroid) {
    SystemUiOverlayStyle systemUiOverlayStyle =
        SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}

/**
 * MyApp 是一个无状态组件，它负责绘制其内部的子组件
 */
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //MaterialApp 封装了手机应用中必须的主要组件，一般作为顶层组件使用
    return MaterialApp(
        // Scaffold 是一个组件的脚手架，它提供了通常的APP布局的组合组件。如title，body等
        // AppBar是对标准菜单栏的封装
        // Text是对静态文本字符串的封装
        home: MainPage());
  }
}

/**
 * MainPage是一个有状态的组件，因此继承了StatefulWidget
 */
class MainPage extends StatefulWidget {
  /**
   * 有状态组件通常都要实现一个状态类，来维护其状态，并通过createState()函数来加载状态对象。
   */
  @override
  _MainPageState createState() => _MainPageState();
}

/**
 * 这里_MainPageState 前面的_符号是dart语法特性，表示这是一个私有类
 * 它继承了State对象，并且实现了SingleTickerProviderStateMixin接口。
 */
class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  /**
   * 我们定义一个tabController来管理底部标签菜单的切换
   */
  TabController tabController;

  @override
  void initState() {
    super.initState();
    //在状态初始化是对TableController进行实例化，并指定它有三个按钮，缺省第一个被选中
    tabController = TabController(length: 3, initialIndex: 0, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    //下面就是通过Scaffold进行组件的叠加了
    return Scaffold(
      body: TabBarView(
        controller: tabController,
        children: <Widget>[HomeTab(), TicketTab(), UserTab()],
      ),
      // bottomNavigationBar 代表设置底部菜单栏
      bottomNavigationBar: Material(
        color: Colors.white, //设置背景颜色
        child: TabBar(
          //通过TabBar来定义底部工具栏
          controller: tabController, //指定通过前面我们声明的tabController来控制工具栏的切换
          tabs: <Widget>[
            Tab(
              text: '主页',
              icon: Icon(Icons.home),
            ), //Tab是具体的工具栏按钮定义，Icon用于设置按钮图标
            Tab(
              text: '行程',
              icon: Icon(Icons.train),
            ),
            Tab(
              text: '我的',
              icon: Icon(Icons.account_box),
            ),
          ],
          labelColor: Colors.amber, //指定按钮的颜色
          unselectedLabelColor: Colors.grey, //指定按钮在未选中状态下的颜色
        ),
      ),
    );
  }
}
