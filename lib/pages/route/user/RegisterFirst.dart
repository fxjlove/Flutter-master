import 'package:flutter/material.dart';

class RegisterFirstPage extends StatelessWidget {
  const RegisterFirstPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar:  AppBar(
        title:  Text('第一步-输入手机号'),
      ),

       body: Center(
         child: Column(
           children: <Widget>[
             SizedBox(height: 40,),
             Text('这是注册的第一步,请输入您的手机号 然后点击下一步'),
             SizedBox(height: 40),
             RaisedButton(
               child: Text('  下一步  '),
               onPressed: (){

                //替换路由
                //Flutter 中路由替换实现多级路由 返回到根路由   
                // Navigator.of(context).pushReplacementNamed('/registerSecond');

                //普通路由
                //Flutter pushNamedAndRemoveUntil返回到根路由
                 Navigator.pushNamed(context, '/registerSecond');

               },
               
             )
           ],
         ),
       ),
    );
  }
}