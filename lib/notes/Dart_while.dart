/* 

  Dart 循环语句 for while do...while  break continue 多维列表循环
        1、for基本语法
        2、for遍历集合
        3、for循环嵌套
        4、 while do...while
        5、break continue用法区别

 */

//for基本语法
void main1() {
  /* 
   
        ++  -- 表示自曾 自减 1
        在赋值运算里面 如果++ -- 写在前面 这时候先运算 再赋值,如果++ -- 写在后面 先赋值后运算
 
 */
  var a = 10;
  var b = a++; //先把a赋值给b 然后自增
  print(a); //11
  print(b); //10

  var c = 10;
  var d = ++c; //先把自增 然后d赋值给d
  print(c); //11
  print(d); //11

  var e = 10;
  var f = --e;
  print(e); //9
  print(f); //9

  var g = 10;
  var h = g--;
  print(g); //9
  print(h); //10
}

//3、for循环嵌套
void main2() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
  print('~~~~~~~~~~~~~~');
  //1.打印0-50所有的偶数
  for (int i = 0; i <= 50; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }
  print('~~~~~~~~~~~~~~');
  //2.求1+2+3+4+...100的和
  var sum = 0;
  for (var i = 0; i <= 100; i++) {
    sum += i;
  }
  print(sum);

  print('~~~~~~~~~~~~~~');
  //3. 计算5的阶乘(1*2*3*4*5 n的阶乘1*2....*n)
  var sum1 = 1;
  for (var i = 1; i <= 5; i++) {
    sum1 *= i;
  }
  print(sum1);

  print('~~~~~~~~~~~~~~');
//4.打印List ['张三','李四','王五']里面的内容
  List list = ['张三', '李四', '王五'];
  // print(list[1]);
  for (var i = 0; i < list.length; i++) {
    print(list[i]);
  }
  print('~~~~~~~~~~~~~~');

  //5.打印List
  List list2 = [
    {"title": "新闻111"},
    {"title": "新闻222"},
    {"title": "新闻333"},
  ];
  for (var i = 0; i < list2.length; i++) {
    print(list2[i]['title']);
  }
  print('6~~~~~~~~~~~~~~');
  //6.定义一个二维数组 打印里面的内容
  List list3 = [
    {
      "cate": '国内',
      "news": [
        {"title": "国内新闻1"},
        {"title": "国内新闻2"},
        {"title": "国内新闻3"},
      ]
    },
    {
      "cate": '国际',
      "news": [
        {"title": "国际新闻1"},
        {"title": "国际新闻1"},
        {"title": "国际新闻1"}
      ]
    },
  ];

  for (var i = 0; i < list3.length; i++) {
    print(list3[i]['cate']);
    print('-----------');
    List li = list3[i]['news'];
    for (var j = 0; j < li.length; j++) {
      // print(li[j]);
      print(li[j]["title"]);
    }
  }
}

//while do...while
void main3() {
  /* 
  死循环
  int i = 1;
  while (i < 10) {
    print(i);
  } */

  int i = 1;
  while (i <= 10) {
    print(i);
    i++;
  }

  //1.求1+2+3+4...+100的和

  int a = 1;
  var sum = 0;
  while (a <= 100) {
    sum += a;
    a++;
  }
  print(sum);

  int b = 1;
  var sum2 = 0;
  do {
    sum2 += b;
    b++;
  } while (b <= 100);
  print(sum2);

  //while 和 do while的区别   第一次循环条件不成立的情况下
  int c = 10;
  while (c < 2) {
    print('执行代码');
  }
  var d = 10;
  do {
    print('执行代码2');
  } while (d < 2);
}

//break continue用法区别
void main() {
/* 
  continue 跳过本次循环
 */
//1.如果i等于4的话跳过
  for (var i = 0; i <= 10; i++) {
    if (i == 4) {
      continue; //跳过当前循环体,循环还会继续执行
    }
    print(i);
  }
  print("~~~~~~~~~~~~~~");
  //2.如果i等于4的话跳出循环
  for (var i = 0; i <= 10; i++) {
    if (i == 4) {
      break; //跳出循环体
    }
    print(i);
  }
  print("~~~~~~~~~~~~~~");
//3.break语句只能向外跳出一层
  for (var i = 0; i < 5; i++) {
    print('外层---$i');
    for (var j = 0; j < 3; j++) {
      if (j == 1) {
        break;
      }
      print('里层$j');
    }
  }
  print("~~~~~~~~~~~~~~");
  //4.break语句只能向外跳出一层

  var i = 1;
  while (i <= 10) {
    if (i == 4) {
      break;
    }
    print(i);
    i++;
  }
  print("~~~~~~~~~~~~~~");
  var sex = '男';
  switch (sex) {
    case '男':
      print("男");
      break;
    case '女':
      print("女");
      break;
    default:
  }
}
