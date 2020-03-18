/* 

      Dart中一个类实现多个接口 以及Dart中的Mixins（
          2、Dart中的mixins 使用
          3、Dart中的mixins 实现类似多继承功能
          4、Dart中的mixins 的类型



    mixins的中文意思是混入,就是在类中混入其他的功能
    在Dart中可以使用mixins实现类似多继承的功能

    因为mixins使用的条件,随着Dart版本一直在边,这里讲的是Dart2.x中使用mixins的条件

        1.作为mixins的类只能继承自Object,不能继承其他类
        2.作为mixins的类不能有构造函数
        3.一个类可以mixins多个mixins类
        4.mixins绝不是继承,也不是接口,而是一种全新的特性
 */
 class A{
   String info = 'this is a';
  void printA() {
    print('printA');
  }
}
 class B{
   void printB() {
     print('printB');
  }
}
class C with A , B{
 

}

void main(){
 var c = new C();
 c.printA();
 c.printB();
 print(c.info);
}