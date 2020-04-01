import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

/* 
    Http请求-Dio http库

          dio是一个强大的Dart Http请求库，支持Restful API、FormData、拦截器、请求取消、Cookie管理、文件上传/下载、超时等

 */
class DioPage extends StatefulWidget {
  DioPage({Key key}) : super(key: key);

  _DioPageState createState() => _DioPageState();
}

class _DioPageState extends State<DioPage> {
  Dio _dio = new Dio();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Http请求-Dio http库'),
        ),
        body: Container(
          alignment: Alignment.center,
          child: FutureBuilder(
              future:
                  _dio.get("https://api.github.com/orgs/flutterchina/repos"),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                //请求完成
                if (snapshot.connectionState == ConnectionState.done) {
                  Response response = snapshot.data;
                  //发生错误
                  if (snapshot.hasError) {
                    return Text(snapshot.error.toString());
                  }
                  //请求成功，通过项目信息构建用于显示项目名称的ListView
                  return ListView(
                    children: response.data
                        .map<Widget>(
                            (e) => ListTile(title: Text(e["full_name"])))
                        .toList(),
                  );
                }
                //请求未完成时弹出loading
                return CircularProgressIndicator();
              }),
        ));
  }
}
