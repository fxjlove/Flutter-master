import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';


class DatePickerPage extends StatefulWidget {
  DatePickerPage({Key key}) : super(key: key);

  _DatePickerPageState createState() => _DatePickerPageState();
}

class _DatePickerPageState extends State<DatePickerPage> {
//当前日期
  // var now = DateTime.now();

  DateTime _nowDate = DateTime.now();
  var _nowTime = TimeOfDay(hour: 12, minute: 20);

  //方法一
  _showDatePicker2() {
    showDatePicker(
      context: context,
      initialDate: _nowDate,
      firstDate: DateTime(1980),
      lastDate: DateTime(2100),
    ).then((result) {
      print(result);
    });
  }

  //方法二:
  _showDatePicker() async {
    var result = await showDatePicker(
      context: context,
      initialDate: _nowDate,
      firstDate: DateTime(1980),
      lastDate: DateTime(2100),
      // locale: Locale('zh'),//非必须
    );

    print(result); //2020-03-26 00:00:00.000

    setState(() {
      this._nowDate = result;
    });
  }

  _showTimerPicker() async {
    var result = await showTimePicker(
      context: context,
      initialTime: _nowTime,
    );
    setState(() {
      this._nowTime = result;
    });
  }

  @override
  void initState() {
    super.initState();

    // //当前日期
    // print(now); //2020-03-11 10:43:08.564247

    // //日期转化为时间戳
    // print(now.millisecondsSinceEpoch); //1583894588564

    // //时间戳转化为日期
    // print(DateTime.fromMillisecondsSinceEpoch(
    //     1583894653668)); //2020-03-11 10:44:13.668

    // //转化为固定格式  2010-06-08  2019/06/08  2019年06月08
    // print(
    //     formatDate(DateTime.now(), [yyyy, '年', 'mm', '月', 'dd'])); //2020年03月11
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Datepicker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //InkWell当作按钮组件,没有样式
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // Text("${_nowDate}"),
                    Text("${formatDate(_nowDate, [
                      yyyy,
                      '年',
                      'mm',
                      '月',
                      'dd'
                    ])}"),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
                // onTap: () {
                //   print('打开日期组件');
                // },
                onTap: _showDatePicker,
              ),
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // Text("10:30"),
                    Text("${_nowTime.format(context)}"),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
                onTap: _showTimerPicker,
              )
            ],
          )
        ],
      ),
    );
  }
}
