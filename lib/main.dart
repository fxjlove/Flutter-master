import 'package:flutter/material.dart';

// void main() {
//   //new关键字可以省略
//   runApp(MyApp());
// }

//也可以简写
void main()=>runApp(MyApp());

//自定义组件(创建一个类)
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Flutter Demo`   `'
          ),
        ),

        body: HomeContent(),
      ),

//主题
      theme: ThemeData(
        primarySwatch: Colors.yellow
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '你好flutter3',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 40.0,
          color: Colors.yellow,
          // color: Color.fromARGB(244, 233, 214, 0.5),
        ),
      ),
    );
    ;
  }
}
