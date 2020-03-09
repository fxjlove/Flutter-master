import 'package:flutter/material.dart';
import './pages/routes/Routes.dart';

//Flutter BottomNavigationBar 自定义底部导航条、以及实现页面切换 -- Flutter 中自定义有状态组件

//也可以简写
void main() => runApp(MyApp());

//自定义组件(创建一个类)
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Tabs(),

      //去掉debug图标
      debugShowCheckedModeBanner: false,

      //  initialRoute: '/appBarDemo',     //初始化的时候加载的路由
       initialRoute: '/',     //初始化的时候加载的路由
      onGenerateRoute: onGenerateRoute,
      
    );

  }
}



