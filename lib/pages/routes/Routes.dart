import 'package:flutter/material.dart';


import '../tabs/Tabs.dart';
import '../appbar/AppBar.dart';



//配置路由
final routes={
      '/':(context)=>Tabs(),
      '/appBarDemo':(context)=>AppBarTabPage(),
      // '/product':(context)=>ProductPage(),
      // '/productDetail':(context,{arguments})=>ProductDetailPage(arguments:arguments),
      //  '/customer':(context,{arguments})=>CustomerPage(arguments:arguments),
      // '/search':(context,{arguments})=>SearchPage(arguments:arguments),

     
};

//固定写法
var onGenerateRoute=(RouteSettings settings) {
      // 统一处理
      final String name = settings.name; 
      final Function pageContentBuilder = routes[name];
      if (pageContentBuilder != null) {
        if (settings.arguments != null) {
          final Route route = MaterialPageRoute(
              builder: (context) =>
                  pageContentBuilder(context, arguments: settings.arguments));
          return route;
        }else{
            final Route route = MaterialPageRoute(
              builder: (context) =>
                  pageContentBuilder(context));
            return route;
        }
      }
};