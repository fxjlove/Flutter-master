import 'package:flutter/material.dart';

class HttpPage extends StatelessWidget {
  const HttpPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('shared_preferences'),
      ),
      body: new Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('Flutter http get请求数据、post提交数据、'),
              onPressed: () {
                  Navigator.pushNamed(context, '/httpGet');
              },
            ),
            RaisedButton(
              child: Text('HTTP请求-HttpClient'),
              onPressed: () {
                Navigator.pushNamed(context, '/httpClient');
              },
            ),
             RaisedButton(
              child: Text('HTTP请求-HttpClient 2'),
              onPressed: () {
                Navigator.pushNamed(context, '/httpClientT');
              },
            ),
            RaisedButton(
              child: Text('Http请求-Dio http库'),
              onPressed: () {
               Navigator.pushNamed(context, '/dio');
              },
            ),
            RaisedButton(
              child: Text('Http分块下载'),
              onPressed: () {
                Navigator.pushNamed(context, '/httpGet');
              },
            ),
            RaisedButton(
              child: Text('使用WebSockets'),
              onPressed: () {
                Navigator.pushNamed(context, '/httpGet');
              },
            ),
              RaisedButton(
              child: Text('使用Socket API'),
              onPressed: () {
                Navigator.pushNamed(context, '/httpGet');
              },
              
            ),
             RaisedButton(
              child: Text('Json转Dart Model类'),
              onPressed: () {
                Navigator.pushNamed(context, '/httpGet');
              },
              
            ),
          ],
        ),
      ),
    );
  }
}