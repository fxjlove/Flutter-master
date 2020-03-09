import 'package:flutter/material.dart';
import '../Form.dart';

/**
 * 分类
 */
class CategoryPageR extends StatefulWidget {
  CategoryPageR({Key key}) : super(key: key);

  _CategoryPageRState createState() => _CategoryPageRState();
}

class _CategoryPageRState extends State<CategoryPageR> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,//主轴的排序方式 x轴
      mainAxisAlignment: MainAxisAlignment.center,//次轴的排序方式 y轴
      children: <Widget>[
        RaisedButton(
          child: Text('基本路由(跳转到表单页面传值)'),
          onPressed: (){

            //基本路由

            //写法1
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context){
                  //跳转传值   
                    return FormPage(title: '我是跳转传值',);
                }
              )
            );

            //写法2
            //  Navigator.of(context).push(
            //     MaterialPageRoute(
            //       builder: (context)=>FormPage(),
            //     )
            //   );

          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,

        ),
        RaisedButton(
          child: Text('命名路由(跳转到搜索页面)'),
          onPressed: (){
              //路由跳转
              Navigator.pushNamed(context, '/search');
           

          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,

        ),
        RaisedButton(
          child: Text('命名路由(跳转到表单页面)'),
          onPressed: (){
              //路由跳转
              Navigator.pushNamed(context, '/form');
           

          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,

        ),

         RaisedButton(
          child: Text('命名路由(跳转到搜索页面传值)'),
          onPressed: (){
             //路由跳转
              Navigator.pushNamed(context, '/search',arguments: {
                "id":123
              });
           

          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,

        ),

         RaisedButton(
          child: Text('命名路由(跳转到商品页面)'),
          onPressed: (){
             //路由跳转
              Navigator.pushNamed(context, '/product');
           

          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,

        ),
        RaisedButton(
          child: Text('命名路由(跳转到客户页面传值)'),
          onPressed: (){
             //路由跳转

             //不传值
              Navigator.pushNamed(context, '/customer');

            //传值
            // Navigator.pushNamed(context, '/customer',arguments: {
            //     "id":123
            //   });

          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,

        ),

        
      ],
    );
  }
}