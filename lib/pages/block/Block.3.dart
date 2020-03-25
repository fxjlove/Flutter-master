import 'package:flutter/material.dart';
import './typedef/OnStatusChangeListener.dart';


class BlockPage extends StatelessWidget {

  final OnStatusChangeListener _onStatusChangeListener;
 
  //在该类的构造函数中初始化OnStatusChangeListener 
  // Test1(this._onStatusChangeListener);
  const BlockPage(this._onStatusChangeListener);
 
  void onStatusFail(){
    _onStatusChangeListener.onStatusFail();
  }
 
  void statusComplete(){
    _onStatusChangeListener.onStatusComplete();
  }



  // const BlockPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: Text('block'),
      ),
      body: RaisedButton(
        child: Text('点击 '),
        onPressed: (){
          onStatusFail();
        },
      ),
    );
  }
}
