import 'package:flutter/material.dart'; //fim


//引入Search组件
import 'pages/Search.dart';

// main.dart
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Navigation',
      home: new FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('首页'),
      ),
      body: new Center(
        child: new RaisedButton(
          child: new Text('Launch second screen'),
          onPressed: () {
            //路由跳转
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Search(),
            ));

            // Navigator.of(context).push(
            //   MaterialPageRoute(
            //     builder: (context) => SecondScreen(),
            //   )
            // );
          },
          
        ),
      ),
      
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Second Screen'),
      ),
      body: new Center(
        child: new RaisedButton(
          child: new Text('Go back!'),
          onPressed: null,
        ),
      ),
    );
  }
}
