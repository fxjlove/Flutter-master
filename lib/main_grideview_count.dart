import 'package:flutter/material.dart';

import 'res/listData.dart';

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
          title: Text('动态GridView GridView.count'),
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
      var tempList = listData.map((value) {
        return Container(
          child: Column(
            children: <Widget>[
              Image.network(value["imageUrl"]),
              SizedBox(height: 8),//控制Image与Text之间的距离
              Text(
                value["title"],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16
                ),

              )
            ],
          ),
          //设置边框
          decoration: BoxDecoration(
            border: Border.all(
                color: Color.fromRGBO(233, 233, 233, 0.9),
                width: 1,
            )
          ),
        );
      });
      return tempList.toList();
    }


  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisSpacing: 10.0, //水平Widget之间距离
      mainAxisSpacing: 10.0, //锤子Widget之间距离
      padding: EdgeInsets.all(10),
      crossAxisCount: 2, //一行的Widget数量
      // childAspectRatio: 0.7, //宽度和高度的比例
      children: this._getListData(),
    );
  }
}
