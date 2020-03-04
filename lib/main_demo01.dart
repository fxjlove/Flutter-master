class Persion{
  String name;
  int age;
  Persion(this.name,this.age);
  run(){
    print("${this.name}---${this.age}");
  }
}
main() {
  // var p = new Persion("章三", 20);
  //new关键字可以省略
  var p = Persion("章三", 20);
  p.run();
}