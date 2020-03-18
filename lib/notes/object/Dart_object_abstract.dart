/* 


      Dart中的抽象类 多态 以及接口
              1、Dart中的抽象类
              2、Dart中的多态
              3、接口 
              4、封装DB库 接口 类分类模块化 



*/

//abstract 抽象类
abstract class Animal{
  eat(); //抽象方法
  run(); //抽象方法

  
  printInfo(){
      print('我是一个抽象类里面的普通方法');
  }


}
class Dog extends Animal{
  @override
  eat() {
    print('小够在吃骨头');
  }

  @override
  run() {
    print('小够在跑');
  }
  
  

}

class Cat extends Animal{
  @override
  eat() {
    print('小猫在吃骨头');
  }

  @override
  run() {
    print('小猫在跑');
  }
  

}
void main(){
  Dog dog = new Dog(); 
  dog.eat();
  dog.printInfo();

  Cat act = new Cat(); 
  act.eat();
  act.printInfo();
}