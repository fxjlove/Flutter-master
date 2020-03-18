/* 


          Dart中的类 静态成员 操作符 类的继承（31分13秒）
                  1、Dart 类中的静态成员 静态方法
                  2、Dart 中的对象操作符
                  3、Dart 类的继承-简单继承
                  4、类的继承 super关键词的使用  实例化自类给父类构造函数传参
                  5、Dart 类的继承 实例化自类给命名构造函数传参
                  6、Dart 类的继承 覆写父类的方法 
                  7、Dart 自类里面调用父类的方法


          Dart中的静态成员:
                  1.使用static 关键字来实现类级别的变量和函数
                  2.静态方法不能访问非静态成员,非静态方法可以访问静态成员

 */

class Person {
  //静属性s
  static String name = "张三";
  int age = 20;
  //静态方法
  static void show() {
    print(name);
  }

  //非静态方法可以访问静态成员 以及 非静态成员
  void printInfo() {
    print(name); //访问静态属性
    print(this.age); //访问非静态属性

    show(); //调用静态方法
  }

  //静态方法
  static void printUserInfo() {
    print(name); //静态属性
    show(); //静态方法

    //静态方法不能访问非静态成员
    //print(age);//静态方法不能访问非静态的属性
    //print(this.age);
    //printInfo();
  }
}

void main1() {
  //var p = new Person();
  //p.show();

  print(Person.name);
  Person.show();

  print('~~~~~~~~~~~~~~');
  Person person = new Person();
  person.printInfo();

  print('~~~~~~~~~~~~~~');
  Person.printUserInfo();
}

/* 


Dart中的对象操作符

?     条件运算符(了解)
as    类型转换
is    类型判断
..    级联操作(连缀)

 */
class Person2 {
  String name;
  num age;
  Person2(this.name, this.age);
  void printInfo() {
    print("${this.name}---${this.age}");
  }
}

void main2() {
  // Person2 p;
  // p?.printInfo();

//is
  Person2 p = new Person2('张三', 20);
  // p.printInfo();
  if (p is Person2) {
    p.name = '李四';
  }
  p.printInfo();
  print(p is Object);

//as
  print("as~~~~~~~~~~~~~");
  var p1;
  p1 = '';
  p1 = new Person2('张三', 20);
  // p1.printInfo();

  (p1 as Person2).printInfo();

  //..
  print("级联操作~~~~~~~~~~~~~");
  // Person2 p2 = new Person2('张三', 200);
  // p2.printInfo();
  // p2.name='aaa';
  // p2.age=100;
  // p2.printInfo();

  Person2 p2 = new Person2('张三', 200);
  p2.printInfo();
  p2
    ..name = '李四'
    ..age = 30
    ..printInfo();
}

/* 

  面试对象的三大特性:封装 、 继承 、 多态

  Dart中的类的继承:
        1.子类使用extends关键词来继承父类
        2.子类会继承父类里面可见的属性和方法 但是不会继承构造函数
        3.子类能复写父类的方法 getter和setter

 */

class Person3 {
  String name = '张三';
  num age = 20;
  void printInfo() {
    print("${this.name}---${this.age}");
  }
}

class Web extends Person3 {}

class Person4 {
  String name;
  num age;
  Person4(this.name, this.age);
  Person4.xxx(this.name, this.age);
  void printInfo() {
    print("${this.name}---${this.age}");
  }
}

class Web4 extends Person4 {
  String sex;
  // Web4(String name, num age,String sex) : super(name, age){
  //   this.sex =sex;
  // }
  Web4(String name, num age, String sex) : super.xxx(name, age) {
    this.sex = sex;
  }
  run() {
    print("${this.name} --- ${this.age} --- ${this.sex}");
  }
}

void main3() {
  Web web = new Web();
  print(web.name);
  web.printInfo();

  print('~~~~~~~~~~~~~~');
  Person4 person4 = new Person4('李四', 23);
  person4.printInfo();
  // Web4 web4 = new Web4('李四-1', 233);
  // web4.printInfo();
  print('~~~~~~~~~~~~~~');
  Web4 web4 = new Web4('李四-1', 233, '女');
  web4.printInfo();
}

class Person5 {
  String name;
  num age;
  Person5(this.name, this.age);
  void printInfo() {
    print("${this.name}---${this.age}");
  }

  work() {
    print('${this.name}在工作');
  }
}

class Web5 extends Person5 {
  Web5(String name, num age) : super(name, age);
  run() {
    print('run');
    super.work(); //子类调用父类的方法
  }

  //复写父类的方法
  @override //可以写也可以不写 建议在覆写父类方法的时候加上
  void printInfo() {
    print("姓名:${this.name}---年龄:${this.age}");
  }

  @override
  work() {
    print('${this.name}的工作是写代码');
  }
}

void main() {
  Web5 web5 = new Web5('aaaa', 20);
  web5.printInfo();
  web5.work();
  web5.run();
}
