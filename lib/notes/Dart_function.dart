/* 

      Dart中的函数  函数的定义 可选参数  默认参数  命名参数 箭头函数 匿名函数 闭包等（30分46秒）-上
          1、Dart中的函数定义的几种方式
          2、可选参数
          3、默认参数
          4、命名参数
          5、方法当做参数 




            内置方法/函数：

            print();

            自定义方法：
                自定义方法的基本格式：

                返回类型  方法名称（参数1，参数2,...）{
                  方法体
                  return 返回值;
                }


*/

//自定义方法：
void main1() {
  print('调用系统内置的方法');

  printInfo();

  int getNum() {
    var myNum = 123;
    return myNum;
  }

  var n = getNum();
  print(n);

  var n2 = getNum2();
  print(n2);

  var s1 = printUserInfo();
  print(s1);

  var m1 = getList();
  print(m1);

//演示方法的作用域
  void xxx() {
    //aaa方法 局部作用域
    aaa() {
      print('aaa');
      getList();
    }

    aaa();
  }

  xxx(); //调用方法
}

//全局作用域
void printInfo() {
  print('我是一个自定义方法');
}

int getNum2() {
  var myNum = 456;
  return myNum;
}

String printUserInfo() {
  return 'this is str';
}

List getList() {
  return ['111', '222', '333'];
}

//调用方法传参
void main() {
  //1.定义一个方法 求1到这个数的所有数的和    1+2+3+4+5+...+100
  int sumNum(int n) {
    var sum = 0;
    for (var i = 1; i <= n; i++) {
      sum += i;
    }
    return sum;
  }

  var n = sumNum(100);
  print(n);

  
  //2.定义一个方法然后打印用户信息
  print('~~~~~~~~~~~~~~~~~');
  String printUserInfo(String username, int age) {
    //行参
    return '姓名:$username --- 年龄:$age';
  }
  print(printUserInfo('张三',100));//实参


  //3.定义一个带可选参数的方法
  print('~~~~~~~可选参数~~~~~~~~~~');

  String printUserInfo2(String username, [int age,String sex]) { //age sex是可选参数
   
   if(age != null){
return '姓名:$username --- 年龄:$age';
   }
    return '姓名:$username --- 年龄保密';
  }
  print(printUserInfo2('张三',100));
  print(printUserInfo2('张三'));

  //4.定义一个带默认参数的方法

print('~~~~~~~带默认参数~~~~~~~~~~');
  String printUserInfo4(String username, [int age,String sex='男']) { //sex带默认参数
   
   if(age != null){ 
    return '姓名:$username --- 年龄:$age --- 性别:$sex';
   }
    return '姓名:$username --- 年龄保密 --- 性别:$sex';
  }
 print(printUserInfo4('张三'));
 print(printUserInfo4('张三',30,'女'));




 //5.定义一个命名参数的方法
 print('~~~~~~~命名参数~~~~~~~~~~');
 String printUserInfo5(String username, {int age,String sex='男'}) { 
   
   if(age != null){ 
    return '姓名:$username --- 年龄:$age --- 性别:$sex';
   }
    return '姓名:$username --- 年龄保密 --- 性别:$sex';
  }
  print(printUserInfo5('章三',age:20));
  print(printUserInfo5('章三',sex:'女'));
  print(printUserInfo5('章三',sex:'女',age:33));





 //6.实现一个 把方法当作方法参数的方法
 print('~~~~~~~把方法当作方法参数的方法~~~~~~~~~~');

 //方法
 fn1(){
   print('fn1');
 }
 //方法
 fn2(fn){
   fn();
 }
 //调用fn2这个方法 把fn1这个方法当作参数传入
 fn2(fn1);



 var fn =(){
   print('我是一个匿名方法');
 };
 fn();



  
}
