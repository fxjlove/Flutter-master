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
  List _pageList = [
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

      floatingActionButton: Container(
          width: 60,
          height: 60,
          padding: EdgeInsets.all(4),
          margin: EdgeInsets.only(top: 5),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(30)),
          child: FloatingActionButton(
            child: Icon(Icons.add),
            backgroundColor: this._currentIndex == 1?Colors.red:Colors.yellow,
            onPressed: () {
              print('FloatingActionButton');
              setState(() {
                this._currentIndex = 1;
              });
            },
            
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

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
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页')),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), title: Text('分类')),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), title: Text('设置')),
          // BottomNavigationBarItem(
          //       icon: Icon(Icons.settings), title: Text('设置')),
        ],
      ),

      //抽屉组件
      drawer: Drawer(
        // child: Text('你好flutter'),

        child: Column(
          children: <Widget>[
            //头部
            // DrawerHeader(
            //     child: Text('你好flutter'),
            // ),

            // Row(
            //   children: <Widget>[
            //     Expanded(
            //         child: DrawerHeader(
            //             child: Text('你好flutter'),
            //             decoration: BoxDecoration(
            //                 // color: Colors.yellow
            //                 image: DecorationImage(
            //                     image: NetworkImage(
            //                         "https://www.itying.com/images/flutter/1.png"),
            //                     fit: BoxFit.cover))))
            //   ],
            // ),

            Row(
              children: <Widget>[
                Expanded(
                  child: UserAccountsDrawerHeader(
                    accountName: Text('啦啦啦啦啦'),
                    accountEmail: Text('1111111@163.com'),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://www.itying.com/images/flutter/3.png'),
                    ),
                    decoration: BoxDecoration(
                        // color: Colors.yellow
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://www.itying.com/images/flutter/2.png"),
                            fit: BoxFit.cover)),
                    otherAccountsPictures: <Widget>[
                      Image.network(
                          "https://www.itying.com/images/flutter/4.png")
                    ],
                  ),
                ),
              ],
            ),

            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.home),
              ),
              title: Text('我的空间'),
            ),
            //线
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.people),
              ),
              title: Text('用户中心'),
              onTap: () {
                Navigator.of(context).pop(); //隐藏侧边栏
                Navigator.pushNamed(context, '/user');
              },
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.settings),
              ),
              title: Text('设置中心'),
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: Text('右侧侧边栏'),
      ),
    );
  }
}
