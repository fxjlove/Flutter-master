import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckBoxPage extends StatefulWidget {
  CheckBoxPage({Key key}) : super(key: key);

  _CheckBoxPageState createState() => _CheckBoxPageState();
}

class _CheckBoxPageState extends State<CheckBoxPage> {
  var flag = true;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('CheckBoxPage  '),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Checkbox(
                value: this.flag,
                onChanged: (v) {
                  setState(() {
                    this.flag = v;
                  });
                },
                activeColor: Colors.red, //选中颜色
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(this.flag ? "选中" : "未选中"),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CheckboxListTile(
                value: this.flag,
                onChanged: (v) {
                  setState(() {
                    this.flag = v;
                  });
                },
                title: Text('标题'),
                subtitle: Text('这是二级标题'),
              ),
              Divider(),
              CheckboxListTile(
                value: this.flag,
                onChanged: (v) {
                  setState(() {
                    this.flag = v;
                  });
                },
                title: Text('标题'),
                subtitle: Text('这是二级标题'),
                secondary: Icon(Icons.help),
                //  selected:,//文字选中
              ),
            ],
          ),
        ],
      ),
    );
  }
}
