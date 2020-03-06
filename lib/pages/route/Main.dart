import 'package:flutter/material.dart';
import 'tabs/TabsR.dart';

//自定义组件(创建一个类)
class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RouteTabs(),
    );

  }
}



