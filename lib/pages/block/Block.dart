import 'package:flutter/material.dart';



class BlockPage extends StatefulWidget {
  BlockPage({Key key}) : super(key: key);

  _BlockPageState createState() => _BlockPageState();
}

class _BlockPageState extends State<BlockPage> {
  @override
  Widget build(BuildContext context) {
    return Block(onTap: (index) {
      print('$index');
    });
  }
}



class Block extends StatefulWidget {
  ValueSetter<int> onTap;
  Block({Key key, @required this.onTap}) : super(key: key);

  _BlockState createState() => _BlockState();
}

class _BlockState extends State<Block> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('block'),
      ),
      body: InkWell(
        child: Row(
          children: <Widget>[
            Text('点击'),
          ],
        ),
        onTap: () {
          widget.onTap(1);
        },
      ),
    );
  }
}