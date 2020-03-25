import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('布局'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text('OA流程管理员'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    ButtonBar(
                      children: <Widget>[
                        //RaisedButton按钮组
                        RaisedButton(
                          child: Text('登陆'),
                          color: Colors.orange,
                          textColor: Colors.white,
                          onPressed: () {
                            print('登陆');
                          },
                        ),
                        RaisedButton(
                          child: Text('注册'),
                          color: Colors.orange,
                          textColor: Colors.white,
                          onPressed: () {
                            print('注册');
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
