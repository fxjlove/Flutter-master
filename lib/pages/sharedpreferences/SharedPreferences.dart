import 'dart:wasm';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharePreferencesPage extends StatefulWidget {
  SharePreferencesPage({Key key}) : super(key: key);

  _SharePreferencesPageState createState() => _SharePreferencesPageState();
}

class _SharePreferencesPageState extends State<SharePreferencesPage> {
  // SharedPreferences prefs;
  //增
  void _addData() async {
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('nameS', 'String');
    prefs.setBool('nameB', true);
    prefs.setDouble('nameD', 11.11);
    prefs.setInt('nameI', 10);
    prefs.setStringList('nameSL', ['aaa', 'bbb', 'ccc']);

    // print('getString:' + prefs.getString('nameS'));
    // print('setBool:${prefs.getBool('nameB')}' );
  }

  void _remove() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove('nameD'); //删除指定键
    // prefs.clear();//清空键值对
  }

  void _clear() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    // prefs.remove('nameD'); //删除指定键
    prefs.clear(); //清空键值对
  }

  //改：
  void _update() async {
    //改和增是一样的，只需要再执行一次setXXX()方法即可覆盖之前的数据。
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('nameS', '啦啦啦啦啦啦');
  }

  //查询
  void _query() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var str = prefs.getString('nameS');
    var sBool = prefs.get('nameB');
    var sDouble = prefs.getDouble('nameD');
    var sInt = prefs.getInt('nameI');
    var sStringList = prefs.getStringList('nameSL');
    print('getString:' + str);
    print('getBool:$sBool');
    print('getDouble:$sDouble');
    print('getInt:$sInt');
    print('getStringList:$sStringList');
  }
  void _querNo() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    // var str = prefs.getDouble('nameB');
    // print(str);
    // print('str1:${prefs.getDouble('nameB')}');
    // print('str2:${str}');
    // print('str3:$str');
    //type 'bool' is not a subtype of type 'double'
    //如果存在 key nameB(Bool类型) 但是取的时候 prefs.getDouble('nameB') 就会报错 type 'bool' is not a subtype of type 'double'
    var str = prefs.get('nameB');
    // print(str);
    // print(str is Object);
    // print(str is bool);
    // print(str is Double);

    // print(prefs.containsKey('nameB11'));

    // 获取所有键值名。
    print(prefs.getKeys());
    
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('shared_preferences'),
      ),
      body: new Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('增'),
              onPressed: () {
                _addData();
              },
            ),
            RaisedButton(
              child: Text('删除指定键'),
              onPressed: () {
                _remove();
              },
            ),
            RaisedButton(
              child: Text('清空键值对'),
              onPressed: () {
                _clear();
              },
            ),
            RaisedButton(
              child: Text('改变'),
              onPressed: () {
                _update();
              },
            ),
            RaisedButton(
              child: Text('查询'),
              onPressed: () {
                _query();
              },
            ),
              RaisedButton(
              child: Text('查询2'),
              onPressed: () {
                _querNo();
              },
            )
          ],
        ),
      ),
    );
  }
}

// class SharePreferencesPage extends StatelessWidget {

//   SharedPreferences prefs;
//   //增
//   void _addData() async{
//       // SharedPreferences prefs = await SharedPreferences.getInstance();
//       prefs = await SharedPreferences.getInstance();
//       prefs.setString('nameS', 'String');
//       prefs.setBool('nameB', true);
//       prefs.setDouble('nameD', 11.11);
//       prefs.setInt('nameI', 10);
//       prefs.setStringList('nameSL', ['aaa', 'bbb', 'ccc']);
//   }

//   // const SharePreferencesPage({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text('shared_preferences'),
//       ),
//       body: new Center(
//         child: Column(
//           children: <Widget>[
//             RaisedButton(
//               child: Text('增'),
//               onPressed: (){

//               },

//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
