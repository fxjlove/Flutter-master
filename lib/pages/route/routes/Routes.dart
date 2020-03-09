import 'package:flutter/material.dart';
import 'package:fluttertest/pages/route/ProductDetail.dart';


import '../tabs/TabsR.dart';
import '../Form.dart';
import '../SearchR.dart';
import '../ProductR.dart';
import '../CustomerR.dart';



//配置路由
final routes={
      '/':(context)=>RouteTabs(),
      '/form':(context)=>FormPage(),
      '/product':(context)=>ProductPage(),
      '/productDetail':(context,{arguments})=>ProductDetailPage(arguments:arguments),
       '/customer':(context,{arguments})=>CustomerPage(arguments:arguments),
      '/search':(context,{arguments})=>SearchPage(arguments:arguments),
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