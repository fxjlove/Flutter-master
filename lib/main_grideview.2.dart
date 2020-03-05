import 'package:flutter/material.dart';


//Flutter GridView组件 以及动态GridView

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
          title: Text('Flutter GridView组件 以及动态GridView'),
        ),
        body: HomeContent(),
      ),

//主题
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}

class HomeContent extends StatelessWidget {
  List<Widget> _getListData() {
    List<Widget> list = new List();
    for (var i = 0; i < 20; i++) {
      list.add(Container(
        alignment: Alignment.center,
        child: Text(
          '这是第$i条数据',
          style: TextStyle(color: Colors.white, fontSize: 14),
        ),
        color: Colors.blue,
        height: 400,//设置高度没有反应
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(

      
      crossAxisSpacing: 20.0,//水平Widget之间距离
      mainAxisSpacing: 20.0,//锤子Widget之间距离
      padding: EdgeInsets.all(10),
      crossAxisCount: 3, //一行的Widget数量
      childAspectRatio: 0.7, //宽度和高度的比例
      children: this._getListData(),
    );
  }
}
