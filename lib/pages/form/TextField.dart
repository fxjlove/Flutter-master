import 'package:flutter/material.dart';

class TextFieldPage extends StatefulWidget {
  TextFieldPage({Key key}) : super(key: key);

  _TextFieldPageState createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {

var _userName = new TextEditingController();//初始化的时候赋值
var _passWord;

@override
  void initState() {
    super.initState();
    _userName.text='初始值';
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('TextFieldPage '),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        // child: TextDemo(),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: '请输入用户名'
              ),
              controller: _userName,
              onChanged: (value){
                setState(() {
                     _userName.text = value;
                });
               
              },
            ),
            SizedBox(height: 40,),
             TextField(
               obscureText: true,
              decoration: InputDecoration(
                hintText: '请输入密码'
              ),
              onChanged: (value){
                setState(() {
                     _passWord = value;
                });
               
              },
            ),
            SizedBox(height: 20,),
            Container(
              width: double.infinity,//表示Container宽度和外面容器的宽度一样(宽度自适应)
              height: 50,
              child: RaisedButton(
                child: Text('登陆(点击获取文本框里的值)'),
                onPressed: (){
                    print(this._userName.text);
                    print(this._passWord);
                },
                color: Colors.blue,
                textColor: Colors.white,
              ),
            )
          ],
        ),
      )
    );
  }
}
class TextDemo extends StatelessWidget {
  const TextDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          children: <Widget>[
            TextField(),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                hintText: '请输入搜索的内容',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              maxLines: 4,
              decoration: InputDecoration(
                hintText: '多行文本框',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: '密码框',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: '用户名'
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: '密码'
              ),
            ),
             SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.people),
                hintText: '请输入用户名'
                
              ),
            ),

          ],
        ),
    );
  }
}