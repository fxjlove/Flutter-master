

import 'Db.dart';

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
