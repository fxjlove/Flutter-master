/* 


  Dart中的多态:
        允许将子类类型的指针赋值给父类类型的指针,同一个函数调用会有不同的执行效果

        子类的实例赋值给父类的引用

        多态就是父类定义一个方法不去实现,让继承他的子类去实现,没有子类有不同的表现

 */

abstract class Animal{
  eat(); //抽象方法

  
 


}
class Dog extends Animal{
  @override
  eat() {
    print('小够在吃骨头');
  }

  run(){
    print('run');
  }
  

}

class Cat extends Animal{
  @override
  eat() {
    print('小猫在吃骨头');
  }

  run(){
    print('run');
  }
  

}
//多态
void main(){
  // Dog dog = new Dog(); 
  // dog.eat();

  // Cat act = new Cat(); 
  // act.eat();


  Animal dog = new Dog(); 
  dog.eat();


  Animal cat = new Cat(); 
  //cat.run();
  cat.eat();



}