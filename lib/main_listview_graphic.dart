import 'package:flutter/material.dart';

//Flutter ListView基础列表组件、水平列表组件、图标组件 -- 垂直列表(图文列表)

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
          title: Text('图文列表'),
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
    return ListView(
      padding: EdgeInsets.all(10),
      children: <Widget>[
        Image.network("https://www.itying.com/images/flutter/1.png"),
        Container(
          child: Text(
            '我是一个标题',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18
            ),
            ),
          height: 50,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        ),
        Image.network("https://www.itying.com/images/flutter/1.png"),
        Container(
          child: Text(
            '我是一个标题',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18
            ),
            ),
          height: 50,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        ),
        Image.network("https://www.itying.com/images/flutter/1.png"),
        Container(
          child: Text(
            '我是一个标题',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18
            ),
            ),
          height: 50,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        ),
        Image.network("https://www.itying.com/images/flutter/1.png"),
        Container(
          child: Text(
            '我是一个标题',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18
            ),
            ),
          height: 50,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        ),
        Image.network("https://www.itying.com/images/flutter/1.png"),
        Image.network("https://www.itying.com/images/flutter/2.png"),
        Image.network("https://www.itying.com/images/flutter/2.png"),
        Image.network("https://www.itying.com/images/flutter/2.png"),
        Image.network("https://www.itying.com/images/flutter/2.png"),
        Image.network("https://www.itying.com/images/flutter/2.png"),
        Image.network("https://www.itying.com/images/flutter/3.png"),
        Image.network("https://www.itying.com/images/flutter/4.png"),
        Image.network("https://www.itying.com/images/flutter/5.png"),
        Image.network("https://www.itying.com/images/flutter/5.png"),
        Image.network("https://www.itying.com/images/flutter/5.png"),
        Image.network("https://www.itying.com/images/flutter/5.png"),
        Image.network("https://www.itying.com/images/flutter/5.png"),
      ],
    );
  }
}
