import 'package:flutter/material.dart';
import 'package:fluttertest/res/listData.dart';

//Flutter 页面布局 Wrap组件 -- Wrap组件实现流布局列表

//也可以简写
void main() => runApp(MyApp());

//自定义组件(创建一个类)
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 使用 Material 组件
    // Flutter提供了许多widgets，可帮助您构建遵循Material Design的应用程序。Material应用程序以MaterialApp widget开始， 该widget在应用程序的根部创建了一些有用的widget，其中包括一个Navigator， 它管理由字符串标识的Widget栈（即页面路由栈）。Navigator可以让您的应用程序在页面之间的平滑的过渡。 是否使用MaterialApp完全是可选的，但是使用它是一个很好的做法。
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Wrap组件实现流布局列表 '),
        ),
        body: HomeContent(),
      ),

//主题
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Flutter RaisedButton定义一个按钮
    // return RaisedButton(
    //   child: Text('第一季'),
    //   textColor: Theme.of(context).accentColor,
    //   onPressed: (){
    //   },

    // );

    // return MyButton('第一季');

    // return Row(
    //   children: <Widget>[

    //   MyButton('第1季'),
    //   MyButton('第2季'),
    //   MyButton('第3季'),
    //   MyButton('第4季'),
    //   MyButton('第5季'),
    //   MyButton('第6季'),
    //   MyButton('第7季'),
    //   MyButton('第8季'),
    //   MyButton('第9季'),
    //   ],

    // );

    // return Wrap(
    //   //间距
    //   spacing: 10,
    //   runSpacing: 5,
    //   // alignment: WrapAlignment.end,//对其方式
    //   children: <Widget>[

    //   MyButton('第1季'),
    //   MyButton('第2季东方大厦 '),
    //   MyButton('第3季'),
    //   MyButton('第4季地方东方大厦'),
    //   MyButton('第5季'),
    //   MyButton('第6季地方沈德符第三方沈德符'),
    //   MyButton('第7季'),
    //   MyButton('第8季的负担'),
    //   MyButton('第9季'),
    //   ],

    // );

    return Container(

        height: 400,
        width: 400,
        color: Colors.pink,
        padding: EdgeInsets.all(10),
        child: Wrap(
          //间距
          spacing: 10,
          runSpacing: 5,
          // alignment: WrapAlignment.end,//对其方式
          // runAlignment: WrapAlignment.center,

          // direction: Axis.vertical,
          children: <Widget>[
            MyButton('第1季'),
            MyButton('第2季东方大厦 '),
            MyButton('第3季'),
            MyButton('第4季地方东方大厦'),
            MyButton('第5季'),
            MyButton('第6季地方沈德符第三方沈德符'),
            MyButton('第7季'),
            MyButton('第8季的负担'),
            MyButton('第9季'),
          ],
        ));
  }
}

//封装按钮
class MyButton extends StatelessWidget {
  final String text;
  const MyButton(this.text, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(this.text),
      textColor: Theme.of(context).accentColor,
      onPressed: () {},
    );
  }
}
