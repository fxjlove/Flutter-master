import 'package:flutter/material.dart';

class FormsPage extends StatefulWidget {
  FormsPage({Key key}) : super(key: key);

  _FormsPageState createState() => _FormsPageState();
}

class _FormsPageState extends State<FormsPage> {
  String username;
  int sex = 1;
  String info = '';

  //爱好
  List hobby = [
    {"heckedc": true, "title": '吃饭'},
    {"heckedc": false, "title": '睡觉'},
    {"heckedc": true, "title": '打游戏'}
  ];
  List<Widget> _getHobby() {
    List<Widget> tempList = [];
    for (var i = 0; i < this.hobby.length; i++) {
      tempList.add(Row(
        children: <Widget>[
          Text(this.hobby[i]['title'] + ":"),
          Checkbox(
            value: this.hobby[i]['heckedc'],
            onChanged: (value) {
              setState(() {
                this.hobby[i]['heckedc'] = value;
              });
            },
          ),
        ],
      ));
    }
    return tempList;
  }

  void _secChanged(value) {
    setState(() {
      this.sex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('学员信息登记系统'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: '输入用户信息',
              ),
              onChanged: (value) {
                setState(() {
                  this.username = value;
                });
              },
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Text('男'),
                Radio(
                  value: 1,
                  onChanged:
                      this._secChanged, //_secChanged加括号表示调用 不加括号表示赋值给onChanged
                  groupValue: this.sex,
                ),
                SizedBox(
                  width: 20,
                ),
                Text('女'),
                Radio(
                  value: 2,
                  onChanged: this._secChanged,
                  groupValue: this.sex,
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            //爱好
            Wrap(
              children: this._getHobby(),
            ),
            SizedBox(
              height: 40,
            ),
            TextField(
              maxLines: 4,
              decoration: InputDecoration(
                hintText: '描述信息',
                border: OutlineInputBorder()
              ),
              onChanged: (value){
                setState(() {
                  this.info=value;
                });
              },

            ),

            SizedBox(
              height: 40,
            ),
            Container(
              width: double.infinity, //表示Container宽度和外面容器的宽度一样(宽度自适应)
              height: 50,
              child: RaisedButton(
                child: Text('提交信息'),
                onPressed: () {
                  print(this.sex);
                  print(this.username);
                  print(this.username);
                  print(this.info);
                },
                color: Colors.blue,
                textColor: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
