import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

//渲染动态数据
class HttpGetPage extends StatefulWidget {
  HttpGetPage({Key key}) : super(key: key);

  _HttpGetPageState createState() => _HttpGetPageState();
}

class _HttpGetPageState extends State<HttpGetPage> {
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
          ? ListView.builder(
            itemCount: this._list.length,
            itemBuilder: (context,index){
                return ListTile(
                  title: Text('${this._list[index]['title']}'),
                );
            },
          )
          : Text('加载中...'),
    );
  }
}
 