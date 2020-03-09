import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {


  final arguments;

  SearchPage({this.arguments});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar:  AppBar(
        title:  Text('我是搜索页面'),
      ),
      // body: new Center(
      //   child: new RaisedButton(
      //     child: new Text('Go back!'),
      //     onPressed: null,
      //   ),
      // ),
       body: Text("搜索页面内容区域${arguments != null ? arguments['id'] : '0'}"),
    );
  }
}
