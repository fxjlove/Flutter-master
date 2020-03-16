/* 

    Dart运算符 条件表达式 Dart类型转换（35分 6秒）
    1、Dart 算术运算符
    2、Dart 关系运算符
    3、Dart 逻辑运算符
    4、Dart 赋值运算符
    5、Dart 条件表达式 if else  switch case
    6、Dart 类型转换


    算术运算符

         +   -   *  /   ~/(取整)    ~%(取余)


    关系运算符
         
         ==   !=   >   <   >=   <=


    逻辑运算符

          !    &&    ||


    赋值运算符
          
          基础赋值运算符  =   ??=
          复合赋值运算符  +=   -=  *=  /=   %=   ~/=



    条件表达式



    类型转换

    


 */

//算术运算符
void main1() {
  //+   -   *  /   ~/(取整)    ~%(取余)
  int a = 13;
  int b = 5;
  print(a + b);
  print(a - b);
  print(a * b);
  print(a / b); //除
  print(a % b); //取余
  print(a ~/ b); //取整

  print('~~~~~~~~~~~~~~');
  var c = a * b;
  print(c);
}

//关系运算符
void main2() {
  //==   !=   >   <   >=   <=
  int a = 5;
  int b = 3;

  print(a == b); //判断是否相等
  print(a != b); //判断是否不等
  print(a > b); //判断是否大于
  print(a < b); //判断是否小雨
  print(a >= b); //判断是否大于小于
  print(a <= b); //判断是否小于等于

  if (a > b) {
    print('a大于b');
  } else {
    print('a小于b');
  }
}

//逻辑运算符
void main3() {
  //!    &&    ||

  // ! 取反
  bool flag = true;
  print(!flag);

  // && 并且:全部为true的话值为true  否则值为false
  bool a = true;
  bool b = false;
  print(a && b);

  // || 或者:全部为false的话值为false  否则值为true
  bool c = true;
  bool d = false;
  print(c || d);

  //如果一个人的年龄是20 并且 sex 是女的话打印这个人

  int age = 30;
  String sex = '女';
  if (age == 20 && sex == '女') {
    print('$age --- $sex');
  } else {
    print('no');
  }

  print('~~~~~~~');

  if (age == 20 || sex == '女') {
    print('$age --- $sex');
  } else {
    print('no');
  }
}

//赋值运算符
void main4() {
  //1.基础赋值运算符  =   ??=
  int a1 = 10;
  int b1 = 3;
  print(a1);

  int c1 = a1 + b1; //从右向左边

  //b??=23; 表示如果b为空的话把 23赋值给b
  int b = 10;
  b ?? 23;
  print(b);

  int c;
  c ??= 8;
  print(c);

  //2.复合赋值运算符  +=   -=  *=  /=   %=   ~/=
  print('~~~~~~~~~~~~~~~~~~~');
  var a = 12;
  a = a + 10;
  print(a);

  var d = 12;
  d += 10; //表示d=d+10
  print(d);
}

//条件表达式
void main5() {
  //1.if else  switch case
  bool flag = true;
  if (flag) {
    print('ok');
  } else {
    print('no');
  }

  var score = 80;
  if (score > 90) {
    print('优秀');
  } else if (score > 70) {
    print('优秀');
  } else if (score >= 60) {
    print('及格');
  } else {
    print('不及格');
  }

  var sex = '女';
  switch (sex) {
    case '男':
      print('性别是男');
      break;

    case '女':
      print('性别是女');
      print('性别是女');
      print('性别是女');

      break;

    default:
      print('传入参数错误');
      break;
  }

  //2.三目运算符
  var flag1 = true;
  var c;
  if (flag1) {
    c = '我是true';
  } else {
    c = '我是false';
  }

  print(c);

  bool flag2 = true;
  String d = flag2 ? '我是true' : '我是false';
  print(d);

  //3. ??运算符
  var e;
  var f = e ?? 10; //e不为空返回e,为空返回10
  print(f); //10

  var e1 = 22;
  var f1 = e1 ?? 10;
  print(f1); //22
}

//类型转换
void main() {
  /* 
     1. Number与String类型之间的转换
            Number类型转换成String类型 toString()
             String类型转换成Number类型 parse 
   */

  String str = '123';
  var num = int.parse(str);
  print(num is int);

  String str2 = '123';
  var num2 = double.parse(str2);
  print(num2 is double);

  String price = '12.5';
  var num3 = double.parse(price);
  print(num3 is double);

  //try  catch
  try {
    String price4 = '';
    var num4 = double.parse(price4);
    print(num4);
  } catch (err) {
    print(0);
  }

  var n = 12;
  var st = n.toString();
  print(st is String);

  /* 
     2. 其他类型转换成Booleans类型
            isEmpty:判断字符串是否为空




   */

  var b = '';
  if (b.isEmpty) {
    print('str为空');
  } else {
    print('str不为空');
  }

  var myNum;
  if (myNum == null) {
    print('空');
  } else {
    print('非空');
  }

  var myNum2 = 0/0;
  //  print(myNum2);
  if (myNum2.isNaN) {
    print('Nan');
  } else {
    print('非Nan');
  }
}
