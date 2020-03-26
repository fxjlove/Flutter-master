import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String param; // NewsPage过来的参数
  final Function callBack; // 回调方法

  // const DetailPage({Key key}) : super(key: key);
  DetailPage({Key key, this.param, this.callBack}) : super(key: key);
  _printParam() {
    print(this.param);
  }

  @override
  Widget build(BuildContext context) {
    _printParam();
    return Scaffold(
      appBar: AppBar(
        title: Text('子页面'),
      ),
      body: Container(
        child: RaisedButton(
          onPressed: () {
            this.callBack('我从子页面返回了');
            Navigator.of(context).pop();
          },
          child: Text('返回'),
        ),
      ),
    );
  }
}
