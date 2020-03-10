import 'package:flutter/material.dart';

//Flutter中的按钮组件介绍
/* 
 RaisedButton凸起的按钮,其实就是Material Design风格的Button
  FlatButton:扁平化按钮
  OutlineButton:线框按钮
  IconButton:图标按钮
  ButtonBar:按钮组
  FloatingActionButton:浮动按钮
 */
class ButtonPage extends StatelessWidget {
  const ButtonPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('按钮演示页面'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          )
        ],
      ),


      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add,color: Colors.red,size: 24),
        backgroundColor: Colors.yellow,

        onPressed: (){
          print('FloatingActionButton');
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text('普通按钮'),
                onPressed: () {
                  print('普通按钮');
                },
              ),
              SizedBox(width: 10),
              //RaisedButton凸起的按钮,其实就是Material Design风格的Button
              //FlatButton:扁平化按钮
              //OutlineButton:线框按钮
              //IconButton:图标按钮
              //ButtonBar:按钮组
              //FloatingActionButton:浮动按钮
              RaisedButton(
                child: Text('有颜色按钮'),
                color: Colors.orange,
                textColor: Colors.white,
                onPressed: () {
                  print('有颜色按钮');
                },
              ),
              SizedBox(width: 20),
              RaisedButton(
                child: Text('有阴影按钮'),
                color: Colors.orange,
                textColor: Colors.white,
                elevation: 10,
                onPressed: () {
                  print('有阴影按钮');
                },
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 50,
                width: 300,
                child: RaisedButton(
                  child: Text('宽度高度'),
                  color: Colors.orange,
                  textColor: Colors.white,
                  elevation: 10,
                  onPressed: () {
                    print('宽度高度');
                  },
                ),
              )
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                  child: Container(
                height: 60,
                margin: EdgeInsets.all(10),
                child: RaisedButton(
                  child: Text('自适应按钮'),
                  color: Colors.orange,
                  textColor: Colors.white,
                  elevation: 10,
                  onPressed: () {
                    print('自适应按钮');
                  },
                ),
              ))
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton.icon(
                icon: Icon(Icons.search),
                label: Text('图标按钮'),
                onPressed: null,
              ),
              SizedBox(width: 10),
              RaisedButton(
                child: Text('圆角按钮'),
                color: Colors.orange,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onPressed: () {
                  print('圆角按钮');
                },
              ),
              SizedBox(width: 10),
              Container(
                height: 80,
                child: RaisedButton(
                  child: Text('圆形按钮'),
                  color: Colors.orange,
                  textColor: Colors.white,
                  splashColor: Colors.grey, //水波纹效果 长按有水波纹效果
                  shape: CircleBorder(side: BorderSide(color: Colors.red)),
                  onPressed: () {
                    print('圆形按钮');
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('扁平化按钮FlatButton'),
                color: Colors.blue,
                textColor: Colors.yellow,
                onPressed: () {},
              ),
              SizedBox(width: 10),
              OutlineButton(
                child: Text('OutlineButton按钮'),
                color: Colors.blue, //设置背景颜色没有效果
                textColor: Colors.yellow,
                onPressed: () {
                  print('OutlineButton按钮');
                },
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                  child: Container(
                margin: EdgeInsets.all(20),
                height: 50,
                child: OutlineButton(
                  child: Text('OutlineButton'),
                  onPressed: () {
                    print('OutlineButton');
                  },
                ),
              ))
            ],
          ),
          // SizedBox(
          //   height: 10,
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              ButtonBar(
                children: <Widget>[
                  //RaisedButton按钮组
                  RaisedButton(
                    child: Text('登陆'),
                    color: Colors.orange,
                    textColor: Colors.white,
                    onPressed: () {
                      print('登陆');
                    },
                  ),
                  RaisedButton(
                    child: Text('注册'),
                    color: Colors.orange,
                    textColor: Colors.white,
                    onPressed: () {
                      print('注册');
                    },
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MyButton(
                text: '自定义按钮',
                heigth: 60,
                width: 120,
                pressed: () {
                  print('自定义按钮');
                },
              )
            ],
          )
        ],
      ),
    );
  }
}

//自定义按钮组件
class MyButton extends StatelessWidget {
  final text;
  final pressed;
  final double width;
  final double heigth;
  const MyButton(
      {this.text = '', this.pressed = null, this.width = 80, this.heigth = 30});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: this.heigth,
        width: this.width,
        child: RaisedButton(
          child: Text(this.text),
          onPressed: this.pressed,
        ));
  }
}
