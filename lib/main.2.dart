import 'package:flutter/material.dart';


void main(){
  //new关键字可以省略
  //内置组件就是一个类
  runApp(new Center(
    child: new Text(
      '你好flutter',
      textDirection: TextDirection.ltr,
  ),
  ));
}

No source control providers registered