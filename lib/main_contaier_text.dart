import 'package:flutter/material.dart';

// Flutter Container组件、Text组件详解

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
          title: Text('Flutter Demo~~~~~~2'),
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
    return Center(
      child: Container(
        child: Text(
          '我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本',
          textAlign: TextAlign.left,
          //溢出显示省略号
          overflow: TextOverflow.ellipsis,
          // overflow: TextOverflow.fade,
          // overflow: TextOverflow.clip,

          //最大显示几行
          maxLines: 1,

          //字体放大2倍
          textScaleFactor: 1.2,

          //设置文本大小
          style: TextStyle(
              fontSize: 24.0,
              color: Colors.red,

              //字体粗细
              fontWeight: FontWeight.w800,
              //字体是否倾斜
              fontStyle: FontStyle.italic,
              //文字装饰线
              decoration: TextDecoration.lineThrough,
              decorationColor: Colors.white,
              //虚线
              decorationStyle: TextDecorationStyle.dashed,
              //字间距
              letterSpacing: 5.0),
        ),


        //Container： Container 可让您创建矩形视觉元素。container 可以装饰为一个BoxDecoration, 如 background、一个边框、或者一个阴影。 Container 也可以具有边距（margins）、填充(padding)和应用于其大小的约束(constraints)。另外， Container可以使用矩阵在三维空间中对其进行变换。
        //给Container容器设置宽高
        height: 300.0,
        width: 300.0,
        //给Container容器设置背景颜色
        decoration: BoxDecoration(
            color: Colors.yellow,
            border: Border.all(color: Colors.blue, width: 2.0),
            borderRadius: BorderRadius.all(
              Radius.circular(10)
              )
            ),
          //内边距
          // padding: EdgeInsets.all(30),
          // padding: EdgeInsets.fromLTRB(10, 30, 5, 0),


          //外边距
          margin: EdgeInsets.fromLTRB(10, 30, 5, 0),

          //位移
          // transform: Matrix4.translationValues(100,0,0),
          //旋转
          // transform: Matrix4.rotationZ(-0.3),
          //缩放
          // transform: Matrix4.diagonal3Values(1.2,1,1),


          //对齐
          alignment: Alignment.center,

      ),
    );
  }
}
