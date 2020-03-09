import 'package:flutter/material.dart';
class SettingPage extends StatefulWidget {
  SettingPage({Key key}) : super(key: key);

  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
        child: Column(
      
      children: <Widget>[
         RaisedButton(
          child: Text('跳转到登陆页面'),
          onPressed: (){
            Navigator.pushNamed(context, '/login');
          },

        ),
        RaisedButton(
          child: Text('跳转到注册页面'),
          onPressed: (){
            Navigator.pushNamed(context, '/registerFirst');
          },

        ),
      ],
    )
    );
  }
}