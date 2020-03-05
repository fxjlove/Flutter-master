import 'package:flutter/material.dart';

//  Flutter 图片组件Image -- 远程图片

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
          title: Text('Flutter Demo~~~~~~3'),
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
        child: Container(
          //加载远程图片
          child: Image.network("https://goss.cfp.cn/creative/vcg/800/new/VCG21gic18549737.jpg?x-oss-process=image/format,jpg/interlace,1",
               //图片显示位置
                alignment: Alignment.topLeft,
                //图片背景颜色
                // color: Colors.yellow, //颜色，如果不为null，则通过colorBlendMode属性将此颜色与图像混合
                //颜色混合模式
                // colorBlendMode:BlendMode.screen,

                //图像的显示模式(控制图片的压升和拉缩)
                // fit: BoxFit.cover,

                //平铺
                repeat: ImageRepeat.repeatX,

                //flutter实现圆角以及实现圆形图片
                
          ),
          
        


          width: 300,
          height: 300,
          //设置容器背景颜色
          decoration: BoxDecoration(
            color: Colors.yellow
          ),

        ),
        
        
      ),
    );
  }
}
