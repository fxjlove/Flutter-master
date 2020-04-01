import 'package:flutter/material.dart';

class RefreshIndicatorPage extends StatefulWidget {
  RefreshIndicatorPage({Key key}) : super(key: key);

  _RefreshIndicatorPageState createState() => _RefreshIndicatorPageState();
}

class _RefreshIndicatorPageState extends State<RefreshIndicatorPage> {
  List list = new List(); //列表要展示的数据
  ScrollController _scrollController = ScrollController(); //listview的控制器
  int _page = 1; //加载的页数
  bool isLoading = false; //是否正在加载数据

  @override
  void initState() {
    super.initState();
    getData();
    //_scrollController是我们初始化的ScrollController对象，通过监听我们可以判断现在的位置是否是最大的下滑位置来判断是否下滑到了底部
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        print('滑动到了最底部');
        _getMore();
      }
    });
  }

  /**
   * 初始化list数据 加延时模仿网络请求
   */
  Future getData() async {
    await Future.delayed(Duration(seconds: 2), () {
      setState(() {
        list = List.generate(15, (i) => '哈喽,我是原始数据 $i');
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: new Text('RefreshIndicator'),
      ),
      body: RefreshIndicator(
        onRefresh: _onRefresh,
        child: ListView.builder(
          itemBuilder: _renderRow,
          // itemCount: list.length,
          itemCount: list.length +
              1, //listview的itemcount那里把count+1,相当于我们给listview加了个尾部的组件.
          controller: _scrollController,
        ),
      ),
    );
  }

  Widget _renderRow(BuildContext context, int index) {
    // return ListTile(
    //   title: Text(list[index]),
    // );

    if (index < list.length) {
      return ListTile(
        title: Text(list[index]),
      );
    }
    return _getMoreWidget();
  }

  /**
   * 下拉刷新方法,为list重新赋值
   */
  Future<Null> _onRefresh() async {
    //Future.delayed（）方法可以选择延迟处理任务，这里我们假设网络的延迟是3秒.
    await Future.delayed(Duration(seconds: 3), () {
      print('refresh');
      setState(() {
        list = List.generate(20, (i) => '哈喽,我是新刷新的 $i');
      });
    });
  }

  /**
   * 上拉加载更多
   */
  Future _getMore() async {
    if (!isLoading) {
      setState(() {
        isLoading = true;
      });
      await Future.delayed(Duration(seconds: 1), () {
        print('加载更多');
        setState(() {
          list.addAll(List.generate(5, (i) => '第$_page次上拉来的数据'));
          _page++;
          isLoading = false;
        });
      });
    }
  }

  /**
   * 加载更多时显示的组件,给用户提示
   */
  Widget _getMoreWidget() {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              '加载中...',
              style: TextStyle(fontSize: 16.0),
            ),
            /* 
             圆形进度条
             可以在外面包一层SizedBox，间接改变进度条的大小
             const CircularProgressIndicator({
                Key key,
                double value,//0~1的浮点数，用来表示进度多少;如果 value 为 null 或空，则显示一个动画，否则显示一个定值
                Color backgroundColor,//背景颜色
                Animation<Color> valueColor,//animation类型的参数，用来设定进度值的颜色，默认为主题色
                this.strokeWidth = 4.0,//进度条宽度
                String semanticsLabel,
                String semanticsValue,
                }) 
              */
            SizedBox(
              //改变进度条的大小
              width: 20.0,
              height: 20.0,
              //https://www.cnblogs.com/lxlx1798/p/11156047.html
              child: CircularProgressIndicator(
                strokeWidth: 2, //进度条宽度
                backgroundColor: Colors.grey, //背景颜色
                //value: 0.1,//0~1的浮点数，用来表示进度多少;如果 value 为 null 或空，则显示一个动画，否则显示一个定值
                valueColor:
                    new AlwaysStoppedAnimation<Color>(Colors.red), //进度条颜色
              ),
            )
          ],
        ),
      ),
    );
  }
}
