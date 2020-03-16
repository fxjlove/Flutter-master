/* 
    Dart的数据类型详解  int double String bool List Maps

          1、Dart 字符串类型
          2、Dart 数值类型
          3、Dart 布尔类型
          4、Dart List集合类型
          5、Dart Map类型
          6、Dart 类型判断



          常用数据类型:
              Numbers(数值):
                    int
                    double 
              String (字符串):
                    String
              Booleans (布尔):
                    bool
              List (数组):
                    在Dart中,数组是列表对象,所以大多数人只是称他们为列表
              Maps (字典):
                    通常来说,Map 是一个键值对相关的对象, 键和值可以是任何类型的对象,每个 键 只出



           is  关键词来判断类型

          项目中用不到的数据类型:
              Runes
                  Rune是UTF-32编码的字符串,它可以通过文字转换成符号表情或者代表特定的文字

                  main(){
                    var clapping = '\u{1f44f}';
                    print(clapping);
                  }          
              



 */

void mainString() {
  //1. 字符串定义的几种方式
  var str1 = 'this is str1';
  var str2 = "this is str2";
  print(str1);
  print(str2);

  String str3 = 'this is str3';
  String str4 = 'this is str4';
  print(str3);
  print(str4);

  String str5 = '''
            this is str5

            this is str5

            this is str5
            
            ''';

  String str6 = """
          this is str6

          this is str6

          this is str6

          """;
  print(str5);
  print(str6);

  //2.字符串的拼接
  String st1 = '你好';
  String st2 = 'Dart';
  print('$st1 $st2');
  print(st1 + ' ' + st2);
}

void mainNumbers() {
  //1. int 必须是整型
  int a = 123;
  print(a);

  //2.double 既可以是整型 也可以是浮点型
  double b = 23.5;
  b = 2;
  print(b);

  //3.运算符 + - * %
  var c = a + b;
  print(c);
}

void mainBool() {
  //1. bool  值 true false
  bool flag1 = true;
  bool flag2 = false;
  print(flag1);
  print(flag2);

  //2.条件判断语句
  var flag = true;
  if (flag) {
    print('真');
  } else {
    print('假');
  }

  // var a = 123;
  // var b = 456;
  // if (a == b) {
  //   print('a = b');
  // } else {
  //   print('a != b');
  // }

  var a = 123;
  var b = '123';
  if (a == b) {
    print('a = b');
  } else {
    print('a != b');
  }
}

void mainList() {
  //1.第一种定义List的方式
  var a = ['aaa', 'bbb', 'ccc'];
  print(a);
  print(a.length);
  print(a[1]);

  //2.第二种定义List的方式
  var b = new List();
  b.add('aaa');
  b.add('bbb');
  b.add('ccc');
  print(b);
  print(b[2]);

  //3.定义List指定类型
  var c = new List<String>();
  c.add('aa');
  // c.add(124);//报错
}

void mainMap() {
  //第一种定义 Maps的方式

  var person = {
    "name": "张三",
    "age": 20,
    'work': ["程序员", "送外卖"]
  };
  print(person);
  print(person['age']);
  print(person['name']);
  print(person['work']);

  //第二种定义 Maps的方式
  var p = new Map();
  p["name"] = "历史";
  p["age"] = 22;
  p["work"] = ["程序员", "送外卖"];
  print(p);
  print(p['age']);
  print(p['name']);
  print(p['work']);
}

void main() {
  //is  关键词来判断类型
  var str = 11;
  if (str is String) {
    print('String类型');
  } else if (str is int) {
    print('int类型');
  } else {
    print('其他类型');
  }
}
