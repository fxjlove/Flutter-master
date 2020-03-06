import 'package:flutter/material.dart';

//Flutter BottomNavigationBar 自定义底部导航条、以及实现页面切换 -- Flutter 中自定义有状态组件

//也可以简写
void main() => runApp(MyApp());

//自定义组件(创建一个类)
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 使用 Material 组件
    // Flutter提供了许多widgets，可帮助您构建遵循Material Design的应用程序。Material应用程序以MaterialApp widget开始， 该widget在应用程序的根部创建了一些有用的widget，其中包括一个Navigator， 它管理由字符串标识的Widget栈（即页面路由栈）。Navigator可以让您的应用程序在页面之间的平滑的过渡。 是否使用MaterialApp完全是可选的，但是使用它是一个很好的做法。
    // return MaterialApp(
    //   home: Scaffold(
    //     appBar: AppBar(
    //       title: Text('Flutter 中自定义有状态组件  '),
    //     ),
    //     body: Text('tabBar'),
    //     bottomNavigationBar: BottomNavigationBar(
    //       //currentIndex 默认选中第几个
    //       currentIndex: 1,
    //       //onTap 选中变化回调函数
    //       onTap: (int index){
    //           print(index);

    //       },

    //       //items  List<BottomNavigationBarItem>条按钮集合
    //       items: [
    //         BottomNavigationBarItem(
    //             icon: Icon(Icons.home), title: Text('首页')),
    //         BottomNavigationBarItem(
    //             icon: Icon(Icons.category), title: Text('分类')),
    //         BottomNavigationBarItem(
    //             icon: Icon(Icons.settings), title: Text('设置')),
         
          
    //       ],
    //     ),
    //   ),

    //   //主题
    //   theme: ThemeData(primarySwatch: Colors.blue),
    // );


    return MaterialApp(
      home: Tabs(),
    );

  }
}

class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter 中自定义有状态组件  '),
        ),
        body: Text('tabBar'),
        bottomNavigationBar: BottomNavigationBar(
          //currentIndex 默认选中第几个
          currentIndex: this._currentIndex,
          //onTap 选中变化回调函数
          onTap: (int index){
              print(index);
              // this._currentIndex = index;
              setState(() {
                this._currentIndex = index;
              });

          },

          //items  List<BottomNavigationBarItem>条按钮集合
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text('首页')),
            BottomNavigationBarItem(
                icon: Icon(Icons.category), title: Text('分类')),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), title: Text('设置')),
         
          
          ],
        ),
      );
  }
}



