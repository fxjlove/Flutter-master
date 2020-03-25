import 'package:flutter/material.dart';

//1. 通过Stack和Align实现

class LayoutRowMainAxisAlignmentPage extends StatelessWidget {
  const LayoutRowMainAxisAlignmentPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('通过Stack和Align实现'),
      ),
      //Row在水平方向布局widget，类似Android中设置了horizontal的LinearLayout
      body: Row(
        //Row是在水平方向布局子widget，所以mainAxisAlignment是指子widget在水平方向上的位置。具体属性下面具体讲解
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "注册",
            style: TextStyle(color: Colors.red, fontSize: 20),
          ),
          Text(
            "忘记密码",
            style: TextStyle(color: Colors.red, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
