import 'package:flutter/material.dart';

class RegiterSencondPage extends StatelessWidget {
  const RegiterSencondPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar:  AppBar(
        title:  Text('第二步-验证码'),
      ),

       body: Center(
         child: Column(
           children: <Widget>[
             SizedBox(height: 40,),
             Text('请输入验证码完成注册'),
             SizedBox(height: 40),
             RaisedButton(
               child: Text('  下一步  '),
               onPressed: (){
               
                //  Navigator.of(context).pushReplacementNamed('/registerThird');


                  Navigator.pushNamed(context, '/registerThird');

               },
               
             )
           ],
         ),
       ),
    );
  }
}