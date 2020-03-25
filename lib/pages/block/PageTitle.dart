import 'package:flutter/material.dart';

class PageTttle extends StatefulWidget {
  VoidCallback onTap;
  PageTttle({Key key,@required this.onTap}):super(key:key);
  
  // PageTttle({Key key}) : super(key: key);

  _PageTttleState createState() => _PageTttleState();
}

class _PageTttleState extends State<PageTttle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('block'),
      ),
      body: RaisedButton(
        child: Text('点击 '),
        onPressed: widget.onTap,
      ),
    );
  }
}