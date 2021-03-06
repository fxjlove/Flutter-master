import 'package:flutter/material.dart';
/* 
 件用MaterialApp 和 Scaffold两个组件装饰App    
   01 MaterialApp    
   02 Scaffold
 */
//也可以简写
void main()=>runApp(MyApp());

//自定义组件(创建一个类)
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     // 使用 Material 组件
    // Flutter提供了许多widgets，可帮助您构建遵循Material Design的应用程序。Material应用程序以MaterialApp widget开始， 该widget在应用程序的根部创建了一些有用的widget，其中包括一个Navigator， 它管理由字符串标识的Widget栈（即页面路由栈）。Navigator可以让您的应用程序在页面之间的平滑的过渡。 是否使用MaterialApp完全是可选的，但是使用它是一个很好的做法。
    
    return MaterialApp(
      //Scaffold是Material中主要的布局组件.
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Flutter Demo'
          ),
        ),

        body: HomeContent(),
      ),

//主题
      theme: ThemeData(
        primarySwatch: Colors.yellow
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '你好flutter3',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 40.0,
          color: Colors.yellow,
          // color: Color.fromARGB(244, 233, 214, 0.5),
        ),
      ),
    );
    
  }
}
