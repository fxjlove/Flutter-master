import 'package:flutter/material.dart';

//Flutter ListView基础列表组件、水平列表组件、图标组件 -- 水平列表horizontal

//也可以简写
void main() => runApp(MyApp());

//自定义组件(创建一个类)
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 使用 Material 组件
    // Flutter提供了许多widgets，可帮助您构建遵循Material Design的应用程序。Material应用程序以MaterialApp widget开始， 该widget在应用程序的根部创建了一些有用的widget，其中包括一个Navigator， 它管理由字符串标识的Widget栈（即页面路由栈）。Navigator可以让您的应用程序在页面之间的平滑的过渡。 是否使用MaterialApp完全是可选的，但是使用它是一个很好的做法。
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('水平列表'),
        ),
        body: HomeContent(),
      ),

//主题
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            //如果最外层没有Container
            //垂直列表可以不用设置宽度(宽度撑满屏幕)
            //水平列表可以不用设置高度(高度撑满屏幕)
            width: 180.0,
            height: 180.0,
            color: Colors.deepOrange,
          ),
          Container(
            width: 180.0,
            height: 180.0,
            color: Colors.deepPurpleAccent,
            child: ListView(
              children: <Widget>[
                Image.network("https://www.itying.com/images/flutter/1.png"),
                Text('我是一个文本')
              ],
            ),
          ),
          Container(
            width: 180.0,
            height: 180.0,
            color: Colors.red,
          ),
          Container(
            width: 180.0,
            height: 180.0,
            color: Colors.orange,
          ),
          Container(
            width: 180.0,
            height: 180.0,
            color: Colors.yellow,
          ),
          Container(
            width: 180.0,
            height: 180.0,
            color: Colors.blueGrey,
          ),
          Container(
            width: 180.0,
            height: 180.0,
            color: Colors.yellowAccent,
          ),
          Container(
            width: 180.0,
            height: 180.0,
            color: Colors.red,
          ),
          Container(
            width: 180.0,
            height: 180.0,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
