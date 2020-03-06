
import 'package:flutter/material.dart';
import './Home.dart';
import './Category.dart';
import './Setting.dart';

class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  List _pageList=[
    HomePage(),
      CategoryPage(),
      SettingPage(),
  ];
      
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter 中自定义有状态组件  '),
        ),
        body: this._pageList[this._currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          //currentIndex 默认选中第几个
          currentIndex: this._currentIndex,
          //onTap 选中变化回调函数
          onTap: (int index){
              print(index);
              // this._currentIndex = index;
              setState(() {//改变状态
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
