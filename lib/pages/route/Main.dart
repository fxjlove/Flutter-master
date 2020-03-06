import 'package:flutter/material.dart';

import 'tabs/TabsR.dart';
import './Form.dart';
import './SearchR.dart';

//自定义组件(创建一个类)
class MainApp extends StatelessWidget {
  
// final routes = {
//         '/form':(context)=>FormPage(),
//         '/search':(context)=>SearchPage(),
//       },

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RouteTabs(),

      //命名路由
      //配置路由
      routes: {
        '/form':(context)=>FormPage(),
        '/search':(context)=>SearchPage(),
      },

      // onGenerateRoute: (RouteSettings settings){
      //   //统一处理
      //   final String name = settings.name;
      //   final Function pageContentBuilder = this.routes[name];
      //   if(pageContentBuilder != null ){
      //       if(settings.arguments != null){
      //           final Route route = MaterialPageRoute(
      //             builder: (context) => 
      //                 pageContentBuilder(context,arguments: settings.arguments)
                  
      //           ),
      //           return route;
                
      //       }else{

      //       }
        // }

      // },



    );

  }
}



