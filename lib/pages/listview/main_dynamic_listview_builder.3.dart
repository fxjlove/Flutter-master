import 'package:flutter/material.dart';

import 'package:fluttertest/res/listData1.dart';

//Flutter ListView动态列表组件 以及循环动态数据 -- 动态列表 点击事件

//自定义组件(创建一个类)
class ListviewBuilderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('动态列表'),
      ),
      body: HomeContent(),
    );
  }
}

class HomeContent extends StatelessWidget {
//自定义方法
  Widget _getListData(context, index) {
    return ListTile(
      leading: Image.network(listData[index]["imageUrl"]),
      subtitle: Text(listData[index]["author"]),
      title: Text(listData[index]["title"]),
    );
  }

  Widget _getListData2(context, index) {
    return InkWell(
        onTap: () {
          print(index);
        },
        child: Container(
          // padding: EdgeInsets.all(10),
          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Column(
            //CrossAxisAlignment.center，默认是水平居中
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      //Flutter Decoration背景设定（边框、圆角、阴影、形状、渐变、背景图像等）
                      Container(
                        padding: EdgeInsets.fromLTRB(5, 1, 5, 1),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.blue,
                            width: 0.5,
                          ), // 边色与边宽度
                          // color: Color(0xFF9E9E9E), // 底色
                          borderRadius: BorderRadius.circular((4.0)), // 圆角度
                        ),
                        child: Text(
                          '分支疫情上报',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),

                      // Text('OA流程管理员'),
                      Text(listData[index]["title"]),
                    ],
                  ),
                  Text('2020-03-20'),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              // Text('吉林长春人民大街2020年03月20日疫情情况填报'),
              Text(listData[index]["description"]),

              // SizedBox(
              //   height: 10,
              // ),
              // 线
              Divider(),
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    //builder 顾名思义 构造 可以非常方便的构建我们自己定义的child布局，所以在Flutter中非常的常用。
    return ListView.builder(
      itemCount: listData.length,

      itemBuilder: this._getListData2,

      // itemBuilder: (context,index){
      //     return ListTile(
      //       title: Text(listData[index]["title"]),
      //     );
      // },

      //   itemBuilder: (context, index) {
      //     return Container(
      //       padding: EdgeInsets.all(10),
      //       child: Column(
      //         //CrossAxisAlignment.center，默认是水平居中
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: <Widget>[
      //           Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //             children: <Widget>[
      //               Row(
      //                 children: <Widget>[
      //                   //Flutter Decoration背景设定（边框、圆角、阴影、形状、渐变、背景图像等）
      //                   Container(
      //                     padding: EdgeInsets.fromLTRB(5, 1, 5, 1),
      //                     decoration: BoxDecoration(
      //                       border: Border.all(
      //                         color: Colors.blue,
      //                         width: 0.5,
      //                       ), // 边色与边宽度
      //                       // color: Color(0xFF9E9E9E), // 底色
      //                       borderRadius: BorderRadius.circular((4.0)), // 圆角度
      //                     ),
      //                     child: Text(
      //                       '分支疫情上报',
      //                       style: TextStyle(color: Colors.blue),
      //                     ),
      //                   ),
      //                   SizedBox(
      //                     width: 10,
      //                   ),

      //                   Text('OA流程管理员'),
      //                 ],
      //               ),
      //               Text('2020-03-20'),
      //             ],
      //           ),
      //           SizedBox(height: 10,),
      //           Text('吉林长春人民大街2020年03月20日疫情情况填报'),
      //         ],
      //       ),
      //     );
      //   },
    );
  }
}
