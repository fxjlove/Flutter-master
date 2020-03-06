import 'package:flutter/material.dart';

//Flutter StatefulWidget有状态组件 、页面上绑定数据、改变页面数据 、实现计数器功能 动态列表 -- Flutter状态管理 实现动态列表

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
          title: Text('Flutter状态管理 实现动态列表'),
        ),
        body: HomePage(),
      ),

//主题
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}
class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _nameState createState() => _nameState();
}

class _nameState extends State<HomePage> {
  List list = new List();
  @override
  Widget build(BuildContext context) {
    // return ListView(
    //     children: <Widget>[
    //       Column(
    //         children: <Widget>[
    //           ListTile(
    //             title: Text('你好我是一个新闻'),
    //           )
    //         ],
    //       ),
    //       SizedBox(height: 20,),
    //       RaisedButton(
    //         child: Text('按钮'),
    //         onPressed: (){

    //         },
    //       )
    //     ],
    // );

    return ListView(
        children: <Widget>[
          Column(
            children: this.list.map((value){
                return ListTile(
                  title: Text(value),
                );
            }).toList()
          ),
          SizedBox(height: 20,),
          RaisedButton(
            child: Text('按钮'),
            onPressed: (){
                setState(() {
                  this.list.add('新增数据1');
                  this.list.add('新增数据2');
                });
            },
          )
        ],
    );
  }
}
