import 'package:flutter/material.dart';

//Flutter 页面布局 Stack层叠组件 Stack与Align  Stack与Positioned实现定位布局 -- Flutter Stack Align

//Stack 这个是Flutter中布局用到的组件，跟Android中FrameLayout很像，都是可以叠加的现实View

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
          title: Text('Flutter Stack Align    '),
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
    //把要居中的控件放在Center内  Center居中 Center是继承Align，只是隐藏了alignment参数，而Align中alignment参数的默认值是Alignment.center，所以就实现了居中
    return Center(
        child: Container(
      height: 400,
      width: 300,
      color: Colors.red,
      child: Stack(
        alignment: Alignment.center, //Icon都局中
        children: <Widget>[
          Align(
            alignment: Alignment(1,-0.2),
            child: Icon(
              Icons.home,
              size: 40,
              color: Colors.white,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Icon(
              Icons.search,
              size: 30,
              color: Colors.blue,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Icon(
              Icons.cloud_circle,
              size: 60,
              color: Colors.orange,
            ),
          ),
        ],
      ),
    ));
  }
}
