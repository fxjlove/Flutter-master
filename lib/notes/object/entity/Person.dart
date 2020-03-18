class Person{
  String name;
  int age = 23;

  //默认狗找函数的简写
  Person(this.name,this.age);

  Person.now(){
    print('我是命名构造函数');
  }
  Person.setInfo(String name,int age){
    // print('我是命名构造函数');
    this.name = name;
    this.age =age;
  }

  void printInfo(){
    print("${this.name} --- ${this.age}");
  }

  

}