import 'package:flutter/material.dart';
import 'package:fluttertest/pages/components/CustomButton.dart';

class ScrollablePage extends StatelessWidget {
  const ScrollablePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('可滚动组件'),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Wrap(
            //间距
            spacing: 10,
            runSpacing: 5,
            children: <Widget>[
              CustomButton('SingleChildScrollView', pressed: () {
                //路由跳转
                Navigator.pushNamed(context, '/singleChildScrollView');
              }),
              CustomButton('ListView', pressed: () {}),
              CustomButton('GridView', pressed: () {}),
              CustomButton('CustomScrollView', pressed: () {
                //路由跳转
                Navigator.pushNamed(context, '/customScrollView');
              }),
              CustomButton('滚动监听及控制(ScrollController)', pressed: () {
                //路由跳转
                Navigator.pushNamed(context, '/scrollController');
              }),
            ],
          ),
        ));
  }
}
