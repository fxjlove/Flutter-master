import 'package:flutter/material.dart';
import 'package:fluttertest/pages/date/DatePicker.dart';


import '../tabs/Tabs.dart';
import '../appbar/AppBar.dart';
import '../appbar/TopTab.dart';
import '../appbar/TabBarController.dart';
import '../User.dart';
import '../button/Button.dart';
import '../form/CheckBox.dart';
import '../form/Radio.dart';
import '../form/TextField.dart';
import '../form/Forms.dart';
import '../date/DatePicker.dart';
import '../swiper/Swiper.dart';
import '../dialog/Dialog.dart';
import '../http/Http.dart';
import '../block/Block.dart';
import '../listview/main_dynamic_listview_builder.3.dart';


import '../layout/Layout.dart';
import '../layout/Layout_Stack_Align.dart';
import '../layout/Layout_Row_MainAxisAlignment.dart';
import '../layout/Layout_Colum_Row.dart';

import '../callback/News.dart';
import '../eventbus/Detail.dart';
import '../eventbus/Main.dart';



//配置路由
final routes={
      '/':(context)=>Tabs(),
      '/appBarDemo':(context)=>AppBarTabPage(),
      '/topTab':(context)=>TopTabPage(),
      '/tabBarController':(context)=>TabBarControllerPage(),
      '/user':(context)=>UserPage(),
      '/button':(context)=>ButtonPage(),
      '/checkBox':(context)=>CheckBoxPage(),
      '/radio':(context)=>RadioPage(),
      '/textField':(context)=>TextFieldPage(),
      '/forms':(context)=>FormsPage(),
      '/datePicker':(context)=>DatePickerPage(),
      '/swiper':(context)=>SwiperPage(),
      '/dialog':(context)=>DialogPage(),
      '/http':(context)=>HttpPage(),
      '/block':(context)=>BlockPage(),
      '/listview':(context)=>ListviewBuilderPage(),

      '/layout':(context)=>LayoutPage(),
      '/layoutStackAlign':(context)=>LayoutStackAlignPage(),
      '/layoutRowMainAxisAlignment':(context)=>LayoutRowMainAxisAlignmentPage(),
      '/columRow':(context)=>LayoutColumRowPage(),

      '/callback':(context)=>NewsPage(),
      '/eventBus':(context)=>MainPage(),
      '/detail':(context)=>DetailPage(),

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