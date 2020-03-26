import 'package:flutter/material.dart';
import 'package:fluttertest/pages/callback/Detail.dart';

class NewsPage extends StatefulWidget {
  NewsPage({Key key}) : super(key: key);

  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NewsPage"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('跳转'),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return DetailPage(
                param: 'NewsPage给子页面的参数',
                callBack: (String msg) {
                  print(msg);
                },
              );
            }));
          },
        ),
      ),
    );
  }
}
