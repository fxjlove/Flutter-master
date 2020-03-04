import 'package:flutter/material.dart';

//Flutter把内容单独抽离成一个组件    
//给Text组件增加一些装饰    

void main() {
  //new关键字可以省略
  runApp(MyApp());
}

//自定义组件(创建一个类)
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
    child:  Text(
      '你好flutter2',
      textDirection: TextDirection.ltr,
      style: TextStyle(
        fontSize: 40.0,
        color: Colors.yellow,
        // color: Color.fromARGB(244, 233, 214, 0.5),


         ),
      
    ),
  );
  }
}
