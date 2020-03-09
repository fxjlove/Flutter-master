import 'package:flutter/material.dart';

//Flutter AppBar中自定义TabBar实现顶部Tab切换
class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);

  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    // return Text('我是分类组件');
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
          
            
            //去掉多的标题
            title: Row(
              children: <Widget>[
                Expanded(
                  child: TabBar(
                    // isScrollable: true,//如果多个按钮的话可以滑动
                    indicatorColor: Colors.orange,//指示器颜色
                    labelColor: Colors.orange,//指示器文字颜色
                    unselectedLabelColor: Colors.white,
                    indicatorWeight: 4,//指示器高度
                    indicatorSize: TabBarIndicatorSize.label,
                    tabs: <Widget>[
                      Tab(text: '热销'),
                      Tab(text: '推荐'),
                    ],
                  ),
                )
              ],
            ),
            // bottom: TabBar(
            //   tabs: <Widget>[
            //     Tab(text: '热销'),
            //     Tab(text: '推荐'),
            //   ],
            // ),
          ),
          body: TabBarView(
            children: <Widget>[
              ListView(
                children: <Widget>[
                  ListTile(
                    title: Text('第一个tab'),
                  ),
                  ListTile(
                    title: Text('第一个tab'),
                  ),
                  ListTile(
                    title: Text('第一个tab'),
                  ),
                  ListTile(
                    title: Text('第一个tab'),
                  ),
                ],
              ),
              ListView(
                children: <Widget>[
                  ListTile(
                    title: Text('第二个tab'),
                  ),
                  ListTile(
                    title: Text('第二个tab'),
                  ),
                  ListTile(
                    title: Text('第二个tab'),
                  ),
                  ListTile(
                    title: Text('第二个tab'),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
