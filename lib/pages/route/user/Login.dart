import 'package:flutter/material.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return new Scaffold(
      appBar:  AppBar(
        title:  Text('登陆'),
      ),

       body: Center(
         child: Column(
           children: <Widget>[
             SizedBox(height: 40,),
             Text('鹧鸪山一个登陆页面,点击登陆会执行登陆操作'),
             RaisedButton(
               child: Text('  立即登陆  '),
               onPressed: (){
                 Navigator.of(context).pop();
               },
               
             )
           ],
         ),
       ),
    );
  }
}