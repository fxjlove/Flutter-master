import 'package:flutter/material.dart';
import '../SearchR.dart';

/**
 * 首页
 */
class HomePageR extends StatefulWidget {
  HomePageR({Key key}) : super(key: key);

  _HomePageRState createState() => _HomePageRState();
}

class _HomePageRState extends State<HomePageR> {
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


              //路由跳转(页面跳转)
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context)=>SearchPage(),
                )
              );



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