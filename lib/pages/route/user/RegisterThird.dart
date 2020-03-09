import 'package:flutter/material.dart';
import '../tabs/TabsR.dart';

class RegiterThirdPage extends StatelessWidget {
  const RegiterThirdPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('第三步-完成注册'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Text('请输入密码完成注册'),
            SizedBox(height: 40),
            RaisedButton(
              child: Text('  确定  '),
              onPressed: () {
                // Navigator.of(context).pop();

                //返回根
                //Flutter pushNamedAndRemoveUntil返回到根路由
                Navigator.of(context).pushAndRemoveUntil(
                    new MaterialPageRoute(
                        builder: (context) => new RouteTabs(index: 2,)),
                    (route) => route == null);
              },
            )
          ],
        ),
      ),
    );
  }
}
