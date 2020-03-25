import 'package:flutter/material.dart';
import './typedef/OnStatusChangeListener.dart';


//在该类中实现抽象类OnStatusChangeListener，并实现它的抽象方法，也就是回调
class BlockPage extends StatelessWidget implements OnStatusChangeListener{

  
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: Text('block'),
      ),
      body: RaisedButton(
        child: Text('点击 '),
        onPressed: (){
          this.onStatusComplete();
        },
      ),
    );
  }

  @override
  void onStatusComplete() {
    // TODO: implement onStatusComplete
    print('回调函数，status complete');
  }

  @override
  void onStatusFail() {
    // TODO: implement onStatusFail
    print('回调函数，status fail');
  }
}
