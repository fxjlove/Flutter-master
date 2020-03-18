import './entity/Person.dart';
import './entity/Animal.dart';
/* 

      Dart中的对象 类
            1、Dart面向对象的介绍 以及Data内置对象
            2、Dart中创建义类使用类
            3、Dart中自定义类的默认构造函数 
            4、Dart中自定义类的命名构造函数
            5、Dart中把类单独抽离成一个模块
            6、Dart中的私有方法 和私有属性
            7、类中的getter和setter修饰符的用法
            8、类中的初始化列表



        面向对象编程(OOP)的三个基本特征是:封装、继承、多态

            封装: 封装是对象和类概念的主要特性.封装,把客户



        Dart所有的东西都是对象,所有的对象都继承自Object类

        Dart是一门使用类和单继承的面向对象语言,所有的对象都是类的实例,并且所有的类都是Object的子类

        一个类通常由属性和方法组成





        Dart和其他面向对象语言不一样,Date中没有 public private protected这些访问修饰符
        但是我们可以使用_把一个属性或者方法定义成私有




*/

class Person3{
  // String name='张三';
  // int age = 23;
  String name;
  int age;

  //默认构造函数
  // Person(){
  //   print('这是构造函数里的内容 这个方法在实例化的时候触发');
  // }
  Person3(String name,int age){
    // print('这是构造函数里的内容 这个方法在实例化的时候触发');
    this.name = name;
    this.age =age;
  }

  void getInfo(){
    // print("$name---$age");
    print("${this.name} --- ${this.age}");
  }

  void setInfo(int age){
    this.age =age;
  }

}

/* 
dart里面构造函数可以写多个
 */
class Person1{
  String name;
  int age;

  //默认狗找函数的简写
  Person1(this.name,this.age);

  void printInfo(){
    print("${this.name} --- ${this.age}");
  }

  

}

class Person2{
  String name;
  int age = 23;

  //默认狗找函数的简写
  Person2(this.name,this.age);

  Person2.now(){
    print('我是命名构造函数');
  }
  Person2.setInfo(String name,int age){
    // print('我是命名构造函数');
    this.name = name;
    this.age =age;
  }

  void printInfo(){
    print("${this.name} --- ${this.age}");
  }

  

}

class Animal2{
  String _name;
  int age;
   //默认狗找函数的简写
  Animal2(this._name,this.age);
  void printInfo(){
    print("${this._name} --- ${this.age}");
  }
}

class Rect2{
  num height;
  num width;
  Rect2(this.height,this.width);
  area2(){
    return this.height * this.width;
  }

 get area{
    return this.height * this.width;
  }
  set areaHeight(value){
    this.height = value;
  }
}
//Dart中我们也可以在构造函数体运行之前初始化实例变量
class Rect3{
  num height;
  num width;
  Rect3():height=2,width=10{
    print("${this.height}---${this.width}");

  }
  getArea(){
    return this.height * this.width;
  }
}

void main(){
  //实例化
  // var p1 = new Person();
  // print(p1.name);
  // p1.getInfo();

  // Person p2 = new Person();
  // print(p2.name);
  // p2.setInfo(100);
  // p2.getInfo();


  Person3 p3 = new Person3('张三', 20);
  p3.getInfo();



  Person1 p1 = new Person1('李四', 25);
  p1.printInfo();


  //命名构造函数
  print('命名构造函数~~~~~~~~~~~~~~~~~');
  var d = new DateTime.now();//实例化DateTime调用它的命名构造函数
  print(d);
  Person2 p2= new Person2('张三', 20);// 默认实例化类的时候调用的是默认构造函数

  Person2 p2_1 = Person2.now();//命名构造函数

  Person2 p2_2 = Person2.setInfo('张三', 20);//命名构造函数
  p2_2.printInfo();


print('~~~~~~~~~~~~~~~~~');
  Person p = Person.setInfo('张三11', 200);//命名构造函数
  p.printInfo();



print('Animal~~~~~~~~~~~~~~~~~');

Animal2 a2 =new Animal2('小狗', 3);
print(a2._name);

Animal a = new Animal('泰迪', 3);
//print(a._name);//私有属性不能访问
print(a.getName());//间接的调用私有属性
a.execRun();//间接的调用私有方法


print('Rect2~~~~~~~~~~~~~~~~~');
Rect2 r2 = new Rect2(10,2);
print("面积:${r2.area2()}");


print("面积:${r2.area}");//注意调用直接通过访问属性的方式访问area


r2.areaHeight=6;
print(r2.area);


Rect3 r3 = new Rect3();
print(r3.getArea());






  
  

}