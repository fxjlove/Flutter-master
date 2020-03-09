import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('商品页面'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('命名路由(跳转到客户页面传值)'),
          onPressed: () {
            //路由跳转

            //传值
            Navigator.pushNamed(context, '/productDetail', arguments: {"pid": '零零落落零零落落零零落落啦啦啦'});
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
      ),
    );
  }
}
