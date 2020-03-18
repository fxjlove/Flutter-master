/* 


  

 */

/* 

定义一个DB库 支持 mysql  mssql  mongodb 

mysql  mssql  mongodb 三个类里面都有同样的方法

*/
/* //当作接口 接口就是约定 规范
abstract class Db {
  String uri; //数据库的链接地址
  add(String data);
  save();
  delete();
}

class MySql implements Db {
  @override
  String uri;

  MySql(this.uri);

  @override
  add(data) {
    print('这是MySql的add方法');
  }

  @override
  delete() {
    return null;
  }

  @override
  save() {
    return null;
  }
}

class MsSql implements Db {
  @override
  String uri;

  @override
  add(data) {
   print('这是MsSql的add方法');
  }

  @override
  delete() {
    return null;
  }

  @override
  save() {
    return null;
  }
} */

import 'package:fluttertest/notes/object/entity/MsSql.dart';

import 'entity/MySql.dart';

void main(){
  MySql mySql = new MySql('xxxxxx');
  mySql.add('123456');

  MsSql msSql = new MsSql();
  msSql.uri = 'xxxx';
  msSql.add('增加的数据');
}
