//当作接口 接口就是约定 规范
abstract class Db {
  String uri; //数据库的链接地址
  add(String data);
  save();
  delete();
}