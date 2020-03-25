import 'package:flutter/material.dart';
import './MyCallBack.dart';

class BlockPage extends StatelessWidget {
  const BlockPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new MyCallBack(click), //或者click
//      new MyHomePage(),
    );
  }
}

//第一种
Future click() {
  //todo do some thing
  print("click.......");
}

//第二种
void onPress() {
  print("onPress.......");
}
