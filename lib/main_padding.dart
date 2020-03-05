import 'package:flutter/material.dart';

import 'res/listData.dart';

//Flutter页面布局 Paddiing Row Column Expanded组件 -- Flutter Paddiing组件  

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
          title: Text('Flutter Paddiing组件  '),
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
    //有些组件没有padding属性的,可以在最外层包一层padding组件
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
      child: GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 1.7,
      children: <Widget>[
        //Padding组件
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: Image.network("https://www.itying.com/images/flutter/1.png",
              fit: BoxFit.cover),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: Image.network("https://www.itying.com/images/flutter/2.png",
              fit: BoxFit.cover),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: Image.network("https://www.itying.com/images/flutter/3.png",
              fit: BoxFit.cover),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: Image.network("https://www.itying.com/images/flutter/4.png",
              fit: BoxFit.cover),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: Image.network("https://www.itying.com/images/flutter/5.png",
              fit: BoxFit.cover),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: Image.network("https://www.itying.com/images/flutter/6.png",
              fit: BoxFit.cover),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: Image.network("https://www.itying.com/images/flutter/1.png",
              fit: BoxFit.cover),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: Image.network("https://www.itying.com/images/flutter/2.png",
              fit: BoxFit.cover),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: Image.network("https://www.itying.com/images/flutter/3.png",
              fit: BoxFit.cover),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: Image.network("https://www.itying.com/images/flutter/4.png",
              fit: BoxFit.cover),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: Image.network("https://www.itying.com/images/flutter/5.png",
              fit: BoxFit.cover),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: Image.network("https://www.itying.com/images/flutter/6.png",
              fit: BoxFit.cover),
        ),
      ],
    ));
  }
}
