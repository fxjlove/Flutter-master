import 'package:flutter/material.dart';

/* 
    SingleChildScrollView

            SingleChildScrollView类似于Android中的ScrollView，它只能接收一个子组件

 */
class SingleChildScrollViewPage extends StatefulWidget {
  SingleChildScrollViewPage({Key key}) : super(key: key);

  _SingleChildScrollViewPageState createState() =>
      _SingleChildScrollViewPageState();
}

class _SingleChildScrollViewPageState extends State<SingleChildScrollViewPage> {
  @override
  Widget build(BuildContext context) {
    String str = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    return Scaffold(
        appBar: AppBar(
          title: Text('SingleChildScrollView'),
        ),
        //Scrollbar是一个Material风格的滚动指示器（滚动条），如果要给可滚动组件添加滚动条，只需将Scrollbar作为可滚动组件的任意一个父级组件即可
        body: Scrollbar(
          // 显示进度条
          child: SingleChildScrollView(
            padding: EdgeInsets.all(16.0),
            scrollDirection: Axis.vertical, //滚动方向，默认是垂直方向
            child: Center(
              child: Column(
                //动态创建一个List<Widget>
                children: str
                    .split("")
                    //每一个字母都用一个Text显示,字体为原来的两倍
                    .map((c) => Text(
                          c,
                          textScaleFactor: 2.0,
                        ))
                    .toList(),
              ),
            ),
          ),
        ));
  }
}
