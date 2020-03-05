import 'package:flutter/material.dart';

//Flutter页面布局 Paddiing Row Column Expanded组件 -- Flutter实现布局案例

//也可以简写
void main() => runApp(MyApp());

//自定义组件(创建一个类)
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 使用 Material 组件
    // Flutter提供了许多widgets，可帮助您构建遵循Material Design的应用程序。Material应用程序以MaterialApp widget开始， 该widget在应用程序的根部创建了一些有用的widget，其中包括一个Navigator， 它管理由字符串标识的Widget栈（即页面路由栈）。Navigator可以让您的应用程序在页面之间的平滑的过渡。 是否使用MaterialApp完全是可选的，但是使用它是一个很好的做法。
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter实现布局案例'),
        ),
        body: HomeContent(),
      ),

//主题
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Column垂直布局组件
    return Column(
      children: <Widget>[
        // Container(
        //   height: 180,
        //   color: Colors.black,
        //   child: Text('你好Flutter'),
        // ),
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                height: 180,
                color: Colors.black,
                child: Text('你好Flutter'),
              ),
            )
          ],
        ),
        //SizedBox间距
        SizedBox(
          height: 10,
        ),
        Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                height: 180,
                child: Image.network(
                  "https://www.itying.com/images/flutter/1.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 1,
              child: Container(
                  height: 180,
                  child: ListView(
                    children: <Widget>[
                      Container(
                        height: 85,
                        child: Image.network(
                          "https://www.itying.com/images/flutter/3.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      //设置间距
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 85,
                        child: Image.network(
                          "https://www.itying.com/images/flutter/4.png",
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  )),
            )
          ],
        ),
      ],
    );
  }
}
