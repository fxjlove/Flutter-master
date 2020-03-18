
/* 

    但是我们可以使用_把一个属性或者方法定义成私有


 */
class Animal{
  String _name;
  int age;
   //默认狗找函数的简写
  Animal(this._name,this.age);
  void printInfo(){
    print("${this._name} --- ${this.age}");
  }
  String  getName(){
    return this._name;
  }
  void _run(){
    print('这是一个私有方法');
  }
  execRun(){
    this._run();//类里面方法的相互调用
  }


}