/* 

      Dart中一个类实现多个接口 以及Dart中的Mixins（15分10秒）
          1、Dart中implements实现多个接口
          2、Dart中的mixins 使用
          3、Dart中的mixins 实现类似多继承功能
          4、Dart中的mixins 的类型



    Dart中一个类实现多个接口:
 */

abstract class A{
  String name;
  printA();
}
abstract class B{
  printB();
}
class C implements A,B{
  @override
  String name;

  @override
  printA() {
    print('printA');
  }

  @override
  printB() {
     print('printB');
  }

}

void main(){
 C c = new C();
 c.printA();
 c.printB();
}