import 'package:flutter/material.dart';
import '../components/CustomButton.dart';

class LayoutPage extends StatelessWidget {
  const LayoutPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('在Flutter中构建布局'),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Wrap(
            //间距
            spacing: 10,
            runSpacing: 5,
            children: <Widget>[
              CustomButton('通过Stack和Align实现', pressed: () {
                //路由跳转
                Navigator.pushNamed(context, '/layoutStackAlign');
              }),
              CustomButton('通过Row和其mainAxisAlignment属性', pressed: () {
                //路由跳转
                Navigator.pushNamed(context, '/layoutRowMainAxisAlignment');
              }),
               CustomButton('Column Row', pressed: () {
                //路由跳转
                Navigator.pushNamed(context, '/columRow');
              }),
            ],
          ),
        ));
  }
}
