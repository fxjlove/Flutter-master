
import 'Db.dart';

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

  remove(){
    
  }
}
