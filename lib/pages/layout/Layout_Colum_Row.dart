import 'package:flutter/material.dart';

//1. 通过Stack和Align实现

class LayoutColumRowPage extends StatelessWidget {
  const LayoutColumRowPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Column Row'),
        ),
        //Stack类似FrameLayout,子widget可以通过父容器的四个角固定位置，子widget可以重叠。
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            //CrossAxisAlignment.center，默认是水平居中
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      //Flutter Decoration背景设定（边框、圆角、阴影、形状、渐变、背景图像等）
                      Container(
                        padding: EdgeInsets.fromLTRB(5, 1, 5, 1),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.blue,
                            width: 0.5,
                          ), // 边色与边宽度
                          // color: Color(0xFF9E9E9E), // 底色
                          borderRadius: BorderRadius.circular((4.0)), // 圆角度
                        ),
                        child: Text(
                          '分支疫情上报',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),

                      Text('OA流程管理员'),
                    ],
                  ),
                  Text('2020-03-20'),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text('吉林长春人民大街2020年03月20日疫情情况填报'),
            ],
          ),
        ));
  }
}
