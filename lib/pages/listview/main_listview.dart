import 'package:flutter/material.dart';

//Flutter ListView基础列表组件、水平列表组件、图标组件 -- 垂直列表(基本列表)

//也可以简写
void main() => runApp(MyApp());

//自定义组件(创建一个类)
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 使用 Material 组件
    // Flutter提供了许多widgets，可帮助您构建遵循Material Design的应用程序。Material应用程序以MaterialApp widget开始， 该widget在应用程序的根部创建了一些有用的widget，其中包括一个Navigator， 它管理由字符串标识的Widget栈（即页面路由栈）。Navigator可以让您的应用程序在页面之间的平滑的过渡。 是否使用MaterialApp完全是可选的，但是使用它是一个很好的做法。
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo~~~~~~4'),
        ),
        body: HomeContent(),
      ),

//主题
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10),
      children: <Widget>[
        ListTile(
          title: Text(
            '雷军展示小米10发布会邀请函 线上发布会没用上1',
            style: TextStyle(fontSize: 18),
          ),
          subtitle: Text(
              '中关村在线消息：北京时间3月5日消息，今天小米公司CEO雷军在其个人微博上展示了原本为小米10新品发布会准备的邀请函。由于最终线下发布会改到了线上，因此这个邀请函也就没有发出。'),
        ),
        ListTile(
          title: Text(
            '雷军展示小米10发布会邀请函 线上发布会没用上2',
            style: TextStyle(fontSize: 18),
          ),
          subtitle: Text(
              '中关村在线消息：北京时间3月5日消息，今天小米公司CEO雷军在其个人微博上展示了原本为小米10新品发布会准备的邀请函。由于最终线下发布会改到了线上，因此这个邀请函也就没有发出。'),
        ),
        ListTile(
          title: Text(
            '雷军展示小米10发布会邀请函 线上发布会没用上3',
            style: TextStyle(fontSize: 18),
          ),
          subtitle: Text(
              '中关村在线消息：北京时间3月5日消息，今天小米公司CEO雷军在其个人微博上展示了原本为小米10新品发布会准备的邀请函。由于最终线下发布会改到了线上，因此这个邀请函也就没有发出。'),
        ),
        ListTile(
          title: Text(
            '雷军展示小米10发布会邀请函 线上发布会没用上4',
            style: TextStyle(fontSize: 18),
          ),
          subtitle: Text(
              '中关村在线消息：北京时间3月5日消息，今天小米公司CEO雷军在其个人微博上展示了原本为小米10新品发布会准备的邀请函。由于最终线下发布会改到了线上，因此这个邀请函也就没有发出。'),
        ),
        ListTile(
          title: Text(
            '雷军展示小米10发布会邀请函 线上发布会没用上5',
            style: TextStyle(fontSize: 18),
          ),
          subtitle: Text(
              '中关村在线消息：北京时间3月5日消息，今天小米公司CEO雷军在其个人微博上展示了原本为小米10新品发布会准备的邀请函。由于最终线下发布会改到了线上，因此这个邀请函也就没有发出。'),
        ),
        ListTile(
          title: Text(
            '雷军展示小米10发布会邀请函 线上发布会没用上6',
            style: TextStyle(fontSize: 18),
          ),
          subtitle: Text(
              '中关村在线消息：北京时间3月5日消息，今天小米公司CEO雷军在其个人微博上展示了原本为小米10新品发布会准备的邀请函。由于最终线下发布会改到了线上，因此这个邀请函也就没有发出。'),
        ),
        ListTile(
          title: Text(
            '雷军展示小米10发布会邀请函 线上发布会没用上7',
            style: TextStyle(fontSize: 18),
          ),
          subtitle: Text(
              '中关村在线消息：北京时间3月5日消息，今天小米公司CEO雷军在其个人微博上展示了原本为小米10新品发布会准备的邀请函。由于最终线下发布会改到了线上，因此这个邀请函也就没有发出。'),
        ),
        ListTile(
          title: Text(
            '雷军展示小米10发布会邀请函 线上发布会没用上8',
            style: TextStyle(fontSize: 18),
          ),
          subtitle: Text(
              '中关村在线消息：北京时间3月5日消息，今天小米公司CEO雷军在其个人微博上展示了原本为小米10新品发布会准备的邀请函。由于最终线下发布会改到了线上，因此这个邀请函也就没有发出。'),
        ),
        ListTile(
          title: Text(
            '雷军展示小米10发布会邀请函 线上发布会没用上9',
            style: TextStyle(fontSize: 18),
          ),
          subtitle: Text(
              '中关村在线消息：北京时间3月5日消息，今天小米公司CEO雷军在其个人微博上展示了原本为小米10新品发布会准备的邀请函。由于最终线下发布会改到了线上，因此这个邀请函也就没有发出。'),
        ),
        ListTile(
          title: Text(
            '雷军展示小米10发布会邀请函 线上发布会没用上10',
            style: TextStyle(fontSize: 18),
          ),
          subtitle: Text(
              '中关村在线消息：北京时间3月5日消息，今天小米公司CEO雷军在其个人微博上展示了原本为小米10新品发布会准备的邀请函。由于最终线下发布会改到了线上，因此这个邀请函也就没有发出。'),
        ),
        ListTile(
          title: Text(
            '雷军展示小米10发布会邀请函 线上发布会没用上11',
            style: TextStyle(fontSize: 18),
          ),
          subtitle: Text(
              '中关村在线消息：北京时间3月5日消息，今天小米公司CEO雷军在其个人微博上展示了原本为小米10新品发布会准备的邀请函。由于最终线下发布会改到了线上，因此这个邀请函也就没有发出。'),
        ),
      ],
    );
  }
}
