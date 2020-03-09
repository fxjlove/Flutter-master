import 'package:flutter/material.dart';

import 'tabs/TabsR.dart';
// import './Form.dart';
// import './SearchR.dart';

import 'routes/Routes.dart';

//自定义组件(创建一个类)
class MainApp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: RouteTabs(),

      //命名路由
      //配置路由
      // routes: {
      //   '/form':(context)=>FormPage(),
      //   '/search':(context)=>SearchPage(),
      // },

      initialRoute: '/',     //初始化的时候加载的路由
      onGenerateRoute: onGenerateRoute,

      



    );

  }
}



