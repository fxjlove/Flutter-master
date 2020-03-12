import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

//渲染动态数据
class HttpPage extends StatefulWidget {
  HttpPage({Key key}) : super(key: key);

  _HttpPageState createState() => _HttpPageState();
}

class _HttpPageState extends State<HttpPage> {
  List _list = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this._getData();
  }

  _getData() async {
    var apiUrl = "http://a.itying.com/api/productlist";
    var result = await http.get(apiUrl);
    if (result.statusCode == 200) {
      print(result.body);
      setState(() {
        this._list = json.decode(result.body)['result'];
      });
    } else {
      print("失败${result.statusCode}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('请求数据'),
      ),
      body: this._list.length > 0
          ? ListView(
              children: this._list.map((value) {
                return ListTile(
                  title: Text(value["title"]),
                );
              }).toList(),
            )
          : Text('加载中...'),
    );
  }
}
