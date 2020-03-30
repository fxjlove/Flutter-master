import 'package:flutter/material.dart';
import '../route/Main.dart';

/**
 * 首页
 */
class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        child: Wrap(
          //间距
          spacing: 10,
          runSpacing: 5,

          children: <Widget>[
            MyButton('Flutter中的路由', pressed: () {
              //路由跳转
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => MainApp(),
              ));
            }),
            MyButton('AppBar自定义顶部按钮图标、颜色', pressed: () {
              //路由跳转
              Navigator.pushNamed(context, '/appBarDemo');
            }),
            MyButton('自定义AppBar 定义顶部Tab切换', pressed: () {
              //路由跳转
              Navigator.pushNamed(context, '/topTab');
            }),
            MyButton('TabController定义顶部tab切换', pressed: () {
              //路由跳转
              Navigator.pushNamed(context, '/tabBarController');
            }),
             MyButton('按钮组件', pressed: () {
              //路由跳转
              Navigator.pushNamed(context, '/button');
            }),
             MyButton('TextField文本框组件  ', pressed: () {
              //路由跳转
              Navigator.pushNamed(context, '/textField');
            }),
             MyButton('Checkbox、CheckboxListTile多选框组件', pressed: () {
              //路由跳转
              Navigator.pushNamed(context, '/checkBox');
            }),
             MyButton('Radio、RadioListTile单选按钮组件', pressed: () {
              //路由跳转
              Navigator.pushNamed(context, '/radio');
            }),
            MyButton('表单演示', pressed: () {
              //路由跳转
              Navigator.pushNamed(context, '/forms');
            }),
              MyButton('日期组件', pressed: () {
              //路由跳转
              Navigator.pushNamed(context, '/datePicker');
            }),
            MyButton('轮播图 flutter_swiper', pressed: () {
              //路由跳转
              Navigator.pushNamed(context, '/swiper');
            }),
             MyButton('Dialog', pressed: () {
              //路由跳转
              Navigator.pushNamed(context, '/dialog');
            }),
            MyButton('网络请求', pressed: () {
              //路由跳转
              Navigator.pushNamed(context, '/http');
            }),
             MyButton('block', pressed: () { 
              //路由跳转
              Navigator.pushNamed(context, '/block');
            }),
            MyButton('ListView', pressed: () {
              //路由跳转
              Navigator.pushNamed(context, '/listview');
            }),
            MyButton('在Flutter中构建布局', pressed: () {
              //路由跳转
              Navigator.pushNamed(context, '/layout');
            }),
             MyButton('Callback', pressed: () {
              //路由跳转
              Navigator.pushNamed(context, '/callback');
            }),
             MyButton('全局事件总线', pressed: () {
              //路由跳转
              Navigator.pushNamed(context, '/eventBus');
            }),
          ],
        ));
  }
}

//封装按钮 https://www.cnblogs.com/yiweiyihang/p/11512472.html
class MyButton extends StatelessWidget {
  final String text;
  final pressed;
  const MyButton(this.text, {Key key, this.pressed = null}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(this.text),
      textColor: Theme.of(context).accentColor,
      // onPressed: () {

      // },
      onPressed: this.pressed,
    );
  }
}
