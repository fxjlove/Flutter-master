import 'package:flutter/material.dart';

/*
* 按钮监听->回调
* */
//第一种自定义回调方法
typedef MyCallBackFuture = Future Function(); 

class MyCallBack extends StatelessWidget {

  // @required
  // VoidCallback onPress; //第二种:回调函数的签名，没有参数，也不返回数据。
  // MyCallBack(VoidCallback onPress) {
  //   this.onPress = onPress;
  // }

  MyCallBackFuture myCallBackFuture;//自定义
  

 MyCallBack(MyCallBackFuture callBack) {
   this.myCallBackFuture = callBack;
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlatButton(
          onPressed: myCallBackFuture, //或者 callBack onPress
          child: Text(
            '按钮',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black,
            ),
          ),
          color: Colors.green,
        ),
      ),
    );
  }
}
