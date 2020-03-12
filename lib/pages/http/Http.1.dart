import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

//Json字符串和Map类型的转换
class HttpPage extends StatefulWidget {
  HttpPage({Key key}) : super(key: key);

  _HttpPageState createState() => _HttpPageState();
}

class _HttpPageState extends State<HttpPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    /* Map userInfo = {
      'username':'张三',
      'age':20,
    };
    var a = json.encode(userInfo);//把Map类型数据转换成json字符串
    print(userInfo is Map);
    print(a is String); */

    String userinfo = '{"username":"张三","age":20}';
    Map u = json.decode(userinfo); //json把类型数据转换成Map字符串
    print(u["username"]);
  }

  String _news = "";

  //请求数据
  _getData() async {
    var apiUrl = "http://192.168.0.5:3000/news";
    var result = await http.get(apiUrl);
    if (result.statusCode == 200) {
      print(json.decode(result.body));
      setState(() {
        this._news = json.decode(result.body)["msg"];
      });
      
    } else {
      print(result.statusCode);
    }
  }

  //提交数据
  _postData() async{
     var apiUrl = "http://192.168.0.5:3000/dologin";
    var result = await http.post(apiUrl,body:{"username":"张三","age":"20"});
    if (result.statusCode == 200) {
      print(json.decode(result.body));
      // setState(() {
      //   this._news = json.decode(result.body)["msg"];
      // });
      
    } else {
      print(result.statusCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('网络请求'),
      ),
      //Json字符串和Map类型的转换
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(this._news),
            RaisedButton(
              child: Text('Get请求数据'),
              onPressed: _getData,
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              child: Text('Post提交数据'),
              onPressed: _postData,
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              child: Text('Get请求数据、渲染数据演示demo'),
              onPressed: () {},
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
