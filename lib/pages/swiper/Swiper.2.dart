import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperPage extends StatefulWidget {
  SwiperPage({Key key}) : super(key: key);

  _SwiperPageState createState() => _SwiperPageState();
}

class _SwiperPageState extends State<SwiperPage> {
  List<Map> imgList = [
    {"url": 'https://www.itying.com/images/flutter/1.png'},
    {"url": 'https://www.itying.com/images/flutter/2.png'},
    {"url": 'https://www.itying.com/images/flutter/3.png'},
    {"url": 'https://www.itying.com/images/flutter/4.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('轮播图组件演示'),
        ),
        body: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              // height: 150,
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    return Image.network(
                      imgList[index]['url'],
                      fit: BoxFit.fill,
                    );
                  },
                  itemCount: imgList.length,
                  pagination: SwiperPagination(),//设置 new SwiperPagination() 展示默认分页指示器
                  control: SwiperControl(), //设置 new SwiperControl() 展示默认分页按钮
                  loop: true,//无限轮播模式开关
                  autoplay: true,//自动播放开关

                ),
              ),
            ),
            Row(
              children: <Widget>[
                Text('我是一个文本'),
              ],
            )
          ],
        ));
  }
}
