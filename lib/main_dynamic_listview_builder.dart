import 'package:flutter/material.dart';

import 'res/listData.dart';

//Flutter ListView动态列表组件 以及循环动态数据 -- 动态列表

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
          title: Text('动态列表'),
        ),
        body: HomeContent(),
      ),

//主题
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}

class HomeContent extends StatelessWidget {
  List list = new List();

  HomeContent() {
    for (var i = 0; i < 20; i++) {
      // this.list.add(ListTile(title: Text("我是$i列表")));
      this.list.add("我是$i条");
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: this.list.length,
      itemBuilder: (context,index){
          // return this.list[index];
          return ListTile(
            title: Text(this.list[index]),
          );
      },
    );
  }
}
