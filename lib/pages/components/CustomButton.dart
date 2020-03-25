
import 'package:flutter/material.dart';

//封装按钮 https://www.cnblogs.com/yiweiyihang/p/11512472.html
class CustomButton extends StatelessWidget {
  final String text;
  final pressed;
  const CustomButton(this.text, {Key key, this.pressed = null}) : super(key: key);

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
