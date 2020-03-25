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


 //注意 typedef 需要放在class外面
typedef IndexCallback = void Function(int index);
class Block extends StatefulWidget {
  // IndexCallback<int> onTap; 
  // Block({Key key,@required this.onTap}):super(key:key);
    //在你需要点击的地方传入参数 比如InkWell的ontap事件
    // InkWell(
    //     onTap: (){
    //          widget.onTap(index);
    //           //你的其他事件处理          
    // )


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
          // widget.onTap(1);
        },
      ),
    );
  }
}