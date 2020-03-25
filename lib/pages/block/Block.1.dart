import 'package:flutter/material.dart';

class BlockPage extends StatelessWidget {

  
  const BlockPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return BlockB(
      onChanged: (e){
 
      },
      onChangedBack: (){
 
      },
    );

  }
}
 
class BlockB extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final VoidCallback onChangedBack;
 
  BlockB({this.onChanged,this.onChangedBack});
 
  @override
  Widget build(BuildContext context) {
 
    onChanged('传递');
    onChangedBack();
 
    return Container();
  }
}