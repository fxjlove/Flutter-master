import 'package:flutter/material.dart';

class RadioPage extends StatefulWidget {
  RadioPage({Key key}) : super(key: key);

  _RadioPageState createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
  int sex = 1;
  bool flag = true;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Radio、RadioListTile单选按钮组件  '),
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text('男'),
                  Radio(
                    value: 1,
                    onChanged: (v) {
                      setState(() {
                        this.sex = v;
                      });
                    },
                    groupValue: this.sex,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text('女'),
                  Radio(
                    value: 2,
                    onChanged: (v) {
                      setState(() {
                        this.sex = v;
                      });
                    },
                    groupValue: this.sex,
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Text('${this.sex}'),
                  Text(this.sex == 1 ? "男" : "女")
                ],
              ),
              SizedBox(
                height: 20,
              ),
              RadioListTile(
                value: 1,
                onChanged: (v) {
                  setState(() {
                    this.sex = v;
                  });
                },
                groupValue: this.sex,
                title: Text('标题'),
                subtitle: Text('这是二级标题'),
                secondary: Icon(Icons.help),
                selected: this.sex == 1,
              ),
              RadioListTile(
                value: 2,
                onChanged: (v) {
                  setState(() {
                    this.sex = v;
                  });
                },
                groupValue: this.sex,
                title: Text('标题'),
                subtitle: Text('这是二级标题'),
                secondary: Image.network(
                    'https://www.itying.com/images/flutter/1.png'),
                selected: this.sex == 2, //文字选中
              ),
              SizedBox(height: 40,),
              Switch(
                value: this.flag,
                onChanged: (v){
                    setState(() {
                      this.flag =v;
                      print(v);
                    });
                },
              )
            ],
          ),
        ));
  }
}
