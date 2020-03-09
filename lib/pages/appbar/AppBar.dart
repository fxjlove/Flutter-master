import 'package:flutter/material.dart';

class AppBarTabPage extends StatelessWidget {
  const AppBarTabPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('AppBarDemo'),
          backgroundColor: Colors.orange,
          centerTitle: true,//标题居中
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: (){
              print('menu');
            },
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                onPressed: (){
                   print('search');
                },
              ),
              IconButton(
                icon: Icon(Icons.settings),
                onPressed: (){
                   print('settings');
                },
              ),
            ],
        ),
        body: Text('aa')
    );
  }
}