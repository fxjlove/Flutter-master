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
          title: Text('基本列表'),
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
          //图标
          leading: Icon(
            Icons.settings,
            color: Colors.red,
            //大小
            size: 40,
          ),
          title: Text(
            '雷军展示小米10发布会邀请函',
            style: TextStyle(fontSize: 18),
          ),
          subtitle: Text('中关村在线消息：北京时间3月5日消息，今天小米公司CEO雷军在其个人微博上展示了原本'),
        ),
        ListTile(
          // leading: Icon(
          //   Icons.home,
          //   color: Colors.red,
          // ),
          title: Text(
            '雷军展示小米10发布会邀请函',
            style: TextStyle(fontSize: 18),
          ),
          subtitle: Text('中关村在线消息：北京时间3月5日消息，今天小米公司CEO雷军在其个人微博上展示了原本'),
          //图标
          trailing: Icon(
            Icons.home,
            color: Colors.red,
          ),
        ),
        ListTile(
          leading: Image.network("https://goss.veer.com/creative/vcg/veer/800water/veer-151135258.jpg"),
          title: Text(
            '雷军展示小米10发布会邀请函',
            style: TextStyle(fontSize: 18),
          ),
          subtitle: Text('中关村在线消息：北京时间3月5日消息，今天小米公司CEO雷军在其个人微博上展示了原本'),
        ),
        ListTile(
          //图标
           leading: Image.network("https://goss.veer.com/creative/vcg/veer/800water/veer-151135259.jpg"),
          title: Text(
            '雷军展示小米10发布会邀请函',
            style: TextStyle(fontSize: 18),
          ),
          subtitle: Text('中关村在线消息：北京时间3月5日消息，今天小米公司CEO雷军在其个人微博上展示了原本'),
        ),
        ListTile(
           leading: Image.network("https://goss.veer.com/creative/vcg/veer/800water/veer-151135268.jpg"),
          title: Text(
            '雷军展示小米10发布会邀请函',
            style: TextStyle(fontSize: 18),
          ),
          subtitle: Text('中关村在线消息：北京时间3月5日消息，今天小米公司CEO雷军在其个人微博上展示了原本'),
        ),
        ListTile(
          leading: Icon(
            Icons.settings,
            color: Colors.red,
          ),
          title: Text(
            '雷军展示小米10发布会邀请函',
            style: TextStyle(fontSize: 18),
          ),
          subtitle: Text('中关村在线消息：北京时间3月5日消息，今天小米公司CEO雷军在其个人微博上展示了原本'),
           trailing: Icon(
            Icons.settings,
            color: Colors.red,
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.settings,
            color: Colors.red,
          ),
          title: Text(
            '雷军展示小米10发布会邀请函',
            style: TextStyle(fontSize: 18),
          ),
          subtitle: Text('中关村在线消息：北京时间3月5日消息，今天小米公司CEO雷军在其个人微博上展示了原本'),
        ),
        ListTile(
          leading: Icon(
            Icons.settings,
            color: Colors.red,
          ),
          title: Text(
            '雷军展示小米10发布会邀请函',
            style: TextStyle(fontSize: 18),
          ),
          subtitle: Text('中关村在线消息：北京时间3月5日消息，今天小米公司CEO雷军在其个人微博上展示了原本'),
        ),
        ListTile(
          leading: Icon(
            Icons.settings,
            color: Colors.red,
          ),
          title: Text(
            '雷军展示小米10发布会邀请函',
            style: TextStyle(fontSize: 18),
          ),
          subtitle: Text('中关村在线消息：北京时间3月5日消息，今天小米公司CEO雷军在其个人微博上展示了原本'),
        ),
        ListTile(
          leading: Icon(
            Icons.settings,
            color: Colors.red,
          ),
          title: Text(
            '雷军展示小米10发布会邀请函',
            style: TextStyle(fontSize: 18),
          ),
          subtitle: Text('中关村在线消息：北京时间3月5日消息，今天小米公司CEO雷军在其个人微博上展示了原本'),
        ),
        ListTile(
          leading: Icon(
            Icons.settings,
            color: Colors.red,
          ),
          title: Text(
            '雷军展示小米10发布会邀请函',
            style: TextStyle(fontSize: 18),
          ),
          subtitle: Text('中关村在线消息：北京时间3月5日消息，今天小米公司CEO雷军在其个人微博上展示了原本'),
        ),
      ],
    );
  }
}
