import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import './components/MyDialog.dart';

class DialogPage extends StatefulWidget {
  DialogPage({Key key}) : super(key: key);

  _DialogPageState createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  _alertDialog() async {
    var result = await showDialog(
        context: context,
        builder: (context) {
          // return Container(
          //     height: 100,
          //     color: Colors.red,
          // );
          return AlertDialog(
            title: Text('提示信息'),
            content: Text('您确定要删除吗?'),
            actions: <Widget>[
              FlatButton(
                child: Text('取消'),
                onPressed: () {
                  // print('取消');

                  Navigator.pop(context, 'Cancle');
                },
              ),
              FlatButton(
                child: Text('确定'),
                onPressed: () {
                  // print('确定');
                  Navigator.pop(context, 'OK');
                },
              ),
            ],
          );
        });

    print(result);
  }

  _simpleDialog() async {
    var result = await showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: Text('选择内容'),
            children: <Widget>[
              SimpleDialogOption(
                child: Text('Option A'),
                onPressed: () {
                  print('Option A');
                  Navigator.pop(context, 'A');
                },
              ),
              Divider(),
              SimpleDialogOption(
                child: Text('Option B'),
                onPressed: () {
                  print('Option B');
                  Navigator.pop(context, 'B');
                },
              ),
              Divider(),
              SimpleDialogOption(
                child: Text('Option C'),
                onPressed: () {
                  print('Option C');
                  Navigator.pop(context, 'C');
                },
              ),
              Divider(),
              SimpleDialogOption(
                child: Text('Option D'),
                onPressed: () {
                  print('Option D');
                  Navigator.pop(context, 'D');
                },
              ),
            ],
          );
        });
    print(result);
  }

  _modelBottomSheet() async {
    var actionSheet = await showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 300,
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text('分享 A'),
                  onTap: () {
                    Navigator.pop(context, '分享 A');
                  },
                ),
                Divider(),
                ListTile(
                  title: Text('分享 B'),
                  onTap: () {
                    Navigator.pop(context, '分享 B');
                  },
                ),
                Divider(),
                ListTile(
                  title: Text('分享 C'),
                  onTap: () {
                    Navigator.pop(context, '分享 C');
                  },
                ),
                Divider(),
                ListTile(
                  title: Text('分享 D'),
                  onTap: () {
                    Navigator.pop(context, '分享 D');
                  },
                ),
              ],
            ),
          );
        });
    print(actionSheet);
  }

  _toast() {
    Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIos: 1,
        backgroundColor: Colors.blue,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialog'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('alert弹出框-AlertDialog'),
              onPressed: _alertDialog,
            ),
            SizedBox(height: 20),
            RaisedButton(
              child: Text('select弹出框-SimpleDialog'),
              onPressed: _simpleDialog,
            ),
            SizedBox(height: 20),
            RaisedButton(
              child: Text('ActionSheet弹出框-showModalBottomSheet'),
              onPressed: _modelBottomSheet,
            ),
            SizedBox(height: 20),
            RaisedButton(
              child: Text('toast-fulttertoast第三方库'),
              onPressed: _toast,
            ),
            SizedBox(height: 20),
            RaisedButton(
              child: Text('自定义Dialog'),
              onPressed: (){
                showDialog(
                  context: context,
                  builder: (context){
                    return MyDialog(
                      title:'关于我们',
                      content:'当地时间11日，亚利桑那州、新墨西哥州、阿肯色州和华盛顿特区都发表声明，宣布进入紧急状态。（海外网 张霓）当地时间11日，亚利桑那州、新墨西哥州、阿肯色州和华盛顿特区都发表声明，宣布进入紧急状态。（海外网 张霓） ');
                  }
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
