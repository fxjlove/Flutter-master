import 'package:flutter/material.dart';

//1. 通过Stack和Align实现

class LayoutStackAlignPage extends StatelessWidget {
  const LayoutStackAlignPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('通过Stack和Align实现'),
      ),
      //Stack类似FrameLayout,子widget可以通过父容器的四个角固定位置，子widget可以重叠。
      body: Stack(
        children: <Widget>[
          //可以通过alignment属性，设置其子widget与其对齐方式，默认center；
          //所以下面我们分别给注册和登录设置了居左和居右
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "注册",
              style: TextStyle(color: Colors.red, fontSize: 20),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              "忘记密码",
              style: TextStyle(color: Colors.red, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
