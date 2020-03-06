import 'package:flutter/material.dart';

//Flutter 页面布局 Flutter AspectRatio、Card卡片组件、卡片图文列表 -- Flutter AspectRatio组件    

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
          title: Text('Flutter AspectRatio组件    '),
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
   
        //AspectRatio的作用是调整child到设置的宽高比
      return   AspectRatio(
          aspectRatio: 3.0/1.0,
          child: Container(
            color: Colors.red,
          ),
    );
  }
}
