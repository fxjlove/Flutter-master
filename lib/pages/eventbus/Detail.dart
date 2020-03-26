import 'package:flutter/material.dart';

import 'EventBus.dart';

//登录页B中
class DetailPage extends StatefulWidget {
  DetailPage({Key key}) : super(key: key);

  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  void _onAdd() {
    //登录成功后触发登录事件，页面A中订阅者会被调用
    bus.emit("login", '111111111111');
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('子页面'),
        ),
        body: RaisedButton(
          child: Text('点击'),
          onPressed: _onAdd,
        ));
  }
}
