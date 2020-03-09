import 'package:flutter/material.dart';

class CustomerPage extends StatelessWidget {


  final arguments;

  CustomerPage({this.arguments});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar:  AppBar(
        title:  Text('客户页面'),
      ),

       body: Text('这是一个客户页面'),
    );
  }
}
