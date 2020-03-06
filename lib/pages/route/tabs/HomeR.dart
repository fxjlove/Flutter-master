import 'package:flutter/material.dart';

/**
 * 首页
 */
class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // return Text('我是首页组件');
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text('跳转到搜索页面'),
          onPressed: (){

          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,

        ),
        SizedBox(height: 20),
        RaisedButton(
          child: Text('跳转到表单页面传值'),
          onPressed: (){

          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,

        ),

      ],
    );
  }
}