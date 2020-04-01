
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';

//通过HttpClient发起HTTP请求

class HttpClientPage extends StatefulWidget {
  HttpClientPage({Key key}) : super(key: key);

  _HttpClientPageState createState() => _HttpClientPageState();
}

class _HttpClientPageState extends State<HttpClientPage> {
  List _list = [];

  @override
  void initState() {
    super.initState();

    // this._getData2();

    this._getData3();
  }


  _getData2() async {
    print('~~~~~~~~~~~~~~~~~~~~');
    //创建一个HttpClient
    HttpClient httpClient = new HttpClient();
    //打开Http连接
    HttpClientRequest request = await httpClient.getUrl(Uri.parse("https://www.baidu.com"));
    //使用iPhone的UA
    request.headers.add("user-agent", "Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.0 Mobile/14E304 Safari/602.1");
    //等待连接服务器（会将请求信息发送给服务器）
    HttpClientResponse response = await request.close();
    //读取响应内容
    var str = await response.transform(utf8.decoder).join();
    //输出响应头
    print("headers:${response.headers}");
    print('内容:$str');

    //关闭client后，通过该client发起的所有请求都会中止。
    httpClient.close();
  }
  _getData3() async{
    
    print('~~~~~~~~~~~~~~~~~~~~');
    //http://a.itying.com/api/productlist
    //http://news-at.zhihu.com/api/3/stories/latest


    //创建一个HttpClient
    HttpClient httpClient = new HttpClient();
    //打开Http连接
    HttpClientRequest request = await httpClient.getUrl(Uri.parse("http://a.itying.com/api/productlist"));
    //使用iPhone的UA
    request.headers.add("user-agent", "Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.0 Mobile/14E304 Safari/602.1");
    //等待连接服务器（会将请求信息发送给服务器）
    HttpClientResponse response = await request.close();
    //读取响应内容
    var str = await response.transform(utf8.decoder).join();
    //输出响应头
    print("headers:${response.headers}");
    print('内容:$str');
    setState(() {
        this._list = json.decode(str)['result'];
      });

    //关闭client后，通过该client发起的所有请求都会中止。
    httpClient.close();

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
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('${this._list[index]['title']}'),
                );
              },
            )
          : Text('加载中...'),
    );
  }
}
