/*


 Dart中导入自己本地库  自定义库


*/
import '../object/entity/Animal.dart';

main(){
  var a=new Animal('小黑狗', 20);
  print(a.getName());
}