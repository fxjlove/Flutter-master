import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

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





DateTime _dateTime = DateTime.now();
 _showDatePicker3() {
   DatePicker.showDatePicker(
     context,
     pickerTheme: DateTimePickerTheme(
       showTitle: true,
       confirm: Text('确定', style: TextStyle(color: Colors.red)),
       cancel: Text('取消',style: TextStyle(color: Colors.cyan)),
     ),
     minDateTime: DateTime.parse('1980-05-12'),
     maxDateTime: DateTime.parse('2100-05-12'),
     initialDateTime: DateTime.now(),
     dateFormat: 'yyyy-MMMM-dd',
     locale: DateTimePickerLocale.zh_cn,
     onCancel: (){
       debugPrint('onCancel');
     },
    //  onChange: (dateTime,List<int> index){

    //  },
     onConfirm: (dateTime,List<int> index){
        setState(() {
            _dateTime = dateTime;
        });
     }

     
   );
 }

DateTime _dateTime4 = DateTime.now();
  _showDatePicker4() {
   DatePicker.showDatePicker(
     context,
     pickerTheme: DateTimePickerTheme(
       showTitle: true,
       confirm: Text('确定', style: TextStyle(color: Colors.red)),
       cancel: Text('取消',style: TextStyle(color: Colors.cyan)),
     ),
     minDateTime: DateTime.parse('1980-05-12'),
     maxDateTime: DateTime.parse('2100-05-12'),
     initialDateTime: DateTime.now(),
     //dateFormat: 'yyyy-MMMM-dd',

      dateFormat: 'yyyy年M月d日  EEE,H时:m分',
      pickerMode: DateTimePickerMode.datetime,


     locale: DateTimePickerLocale.zh_cn,
     onCancel: (){
       debugPrint('onCancel');
     },
    //  onChange: (dateTime,List<int> index){

    //  },
     onConfirm: (dateTime,List<int> index){
        setState(() {
            _dateTime4 = dateTime;
        });
     }

     
   );
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
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //InkWell当作按钮组件,没有样式
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // Text('2019-06-14'),
                    //  Text("${_dateTime}"),
                     Text("${formatDate(_dateTime, [
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
                onTap: _showDatePicker3,
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
          ),
           SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //InkWell当作按钮组件,没有样式
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // Text('2019-06-14'),
                    //  Text("${_dateTime}"),
                    //  Text("${formatDate(_dateTime4, [
                    //   yyyy,
                    //   '年',
                    //   'mm',
                    //   '月',
                    //   'dd'
                    // ])}"),
                    Text("${formatDate(_dateTime4,[yyyy,'年',mm,'月',dd,'  ' ,HH,':',mm ])}"),
                    
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
                onTap: _showDatePicker4,
              ),
              
            ],
          ),
        ],
      ),
    );
  }
}
