import 'package:flutter/material.dart';
import 'package:fluttertest/pages/components/CustomButton.dart';

import 'EventBus.dart';

//页面A中

//https://book.flutterchina.club/chapter8/eventbus.html?q=

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);

  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  //页面A中
  //监听登录事件  ——  写在监听事件里
  @override
  void initState() {
    super.initState();
    //监听登录事件
    bus.on("login", (arg) {
      print('我试试:'+arg);
    });
  }

  @override
  void dispose() {
    super.dispose();
    bus.off("login"); //移除广播机制
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('全局事件总线'),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Wrap(
            //间距
            spacing: 10,
            runSpacing: 5,
            children: <Widget>[
              CustomButton('点击', pressed: () {
                //路由跳转
                Navigator.pushNamed(context, '/detail');
              }),
            ],
          ),
        ));
  }
}
