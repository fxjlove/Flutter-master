import 'package:flutter/material.dart';
import './HomeR.dart';
import './CategoryR.dart';
import './SettingR.dart';

class RouteTabs extends StatefulWidget {

final index ;

  RouteTabs({Key key,this.index = 0 }) : super(key: key);

  _RouteTabsState createState() => _RouteTabsState(this.index);
}

class _RouteTabsState extends State<RouteTabs> {

  int _currentIndex = 0;

_RouteTabsState(index){
  this._currentIndex=index;
}

  List _pageList = [
    CategoryPageR(),
    HomePageR(),
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter中的路由'),
      ),
      body: this._pageList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        //currentIndex 默认选中第几个
        currentIndex: this._currentIndex,
        //onTap 选中变化回调函数
        onTap: (int index) {
          print(index);
          // this._currentIndex = index;
          setState(() {
            //改变状态
            this._currentIndex = index;
          });
        },
        //设置icon大小
        iconSize: 25,
        //选中的颜色
        fixedColor: Colors.orange,
        //配置底部tabs可以有多个按钮 大于4个tab需要设置type
        // type: BottomNavigationBarType.fixed,

        //items  List<BottomNavigationBarItem>条按钮集合
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.category), title: Text('分类')),
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页')),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), title: Text('设置')),
          // BottomNavigationBarItem(
          //       icon: Icon(Icons.settings), title: Text('设置')),
        ],
      ),
    );
  }
}
