import 'package:flutter/material.dart';

// demo1_navigation.dart
class ThreeScreen extends StatelessWidget {
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
