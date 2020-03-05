import 'package:flutter/material.dart';

import 'res/listData.dart';

//Flutter页面布局 Paddiing Row Column Expanded组件 -- 自定义按钮组件

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
          title: Text('自定义按钮组件'),
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
    return IconContainer(Icons.search,color: Colors.black,);
  }
}

//自定义按钮组件
class IconContainer extends StatelessWidget{

double size = 32.0;
Color color = Colors.red;
IconData icon;

//构造函数 icon必传  color、size可选
IconContainer(this.icon,{this.color,this.size}){

}

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      // color: Colors.red,
      color: this.color,
        child: Center(
          // child: Icon(Icons.home,size: 32,color: Colors.white,),
          child: Icon(this.icon,size: this.size,color: Colors.white),
        ),
    );
  }
  
}
