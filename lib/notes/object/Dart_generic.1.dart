/* 

      Dart中的泛型 泛型方法  泛型类 泛型接口(23分43秒)
            1、Dart中的泛型
            2、Dart中的泛型 泛型方法
            3、Dart中的泛型 泛型类
            4、Dart中的泛型 泛型接口



      通俗理解:泛型就是解决 类 接口 方法的复用性、以及对不特定数据类型的支持(类型校验)


      泛型类

 */

//集合List 泛型类的用法
void main1() {
  List list = new List();
  list.add(12);
  list.add('你就');
  print(list);

  print("~~~~~~~~~~~~~~~~");
  List list1 = new List<String>();
  //list1.add(12);//错误的写法
  list1.add('你就');
  print(list1);

  print("~~~~~~~~~~~~~~~~");
  List list2 = new List<int>();
  list.add('kdkd '); //错误写法
  list.add(12);
  print(list2);
}

//案例: 把下面类转换成泛型类,要求List里面可以增加int类型的数据,也可以增加String类型的数据
class PrintClass {
  List list = new List<int>();
  void add(int value) {
    this.list.add(value);
  }

  void printInfo() {
    for (var i = 0; i < this.list.length; i++) {
      print(this.list[i]);
    }
  }
}

//泛型
class PrintClass1<T> {
  List list = new List<T>();
  void add(T value) {
    this.list.add(value);
  }

  void printInfo() {
    for (var i = 0; i < this.list.length; i++) {
      print(this.list[i]);
    }
  }
}

void main() {
  PrintClass printClass = new PrintClass();
  printClass.add(1);
  printClass.add(12);
  printClass.add(5);
  printClass.printInfo();
  print('~~~~~~~~~~~~~~~~~~');

  PrintClass1 p = new PrintClass1();
  p.add(1);
  p.add('xxx');
  p.add(5);
  p.printInfo();
  print('~~~~~~~~~~~~~~~~~~');

  //只能增加String类型的数据
  PrintClass1 p1 = new PrintClass1<String>();
  // p1.add(1);//错误写法
  p1.add('xxx');
  p1.printInfo();

  //只能增加int类型的数据
  PrintClass1 p3 = new PrintClass1<int>();
}
