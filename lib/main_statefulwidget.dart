import 'package:flutter/material.dart';

//Flutter StatefulWidget有状态组件 、页面上绑定数据、改变页面数据 、实现计数器功能 动态列表 -- Flutter 中自定义有状态组件

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
          title: Text('Flutter 中自定义有状态组件 '),
        ),
        body: HomePage(),
      ),

//主题
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}
/* 
Flutter中自定义组件其实就是一个类,这个类需要继承StatelessWidget/StatefulWidget
StatelessWidget是无状态组件,状态不可变的widget
StatefulWidget是有状态组件,持有的状态可能在widget生命周期改变,通俗的讲,如果我们想要改变页面中的数据的话这个时候就需要用到StatefulWidget */

//stateless
class HomePage extends StatelessWidget {

 int countNum = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
     children: <Widget>[
       SizedBox(height: 200,),
       Text('${this.countNum}'),
         SizedBox(height: 20,),
       RaisedButton(
         child: Text('按钮'),
         onPressed: (){
           //setState() //错误写法 没法改变里面的数据
            this.countNum++;
            print(this.countNum);
         },

       )
     ],
    );
  }
}




