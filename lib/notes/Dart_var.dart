//Dart变量 常量 命名规则

/* 

    Dart 变量:

          dart是一个强大的脚本类芋圆,可以不预先定义变量类型,自动会类型推倒

          dart中定义变量可以通过var关键字,可以通过类型来申明变量

          如:

              var str = 'this is var';

              String str = 'this is var';

              int str = 123;

              注意: var 后就不要写类型,   写了类型 不要var   两者都写  var  a int = 5; 报错

      Dart的命名规则:
            1.变量名称必须由数字、字母、下划线和美元符($)组成
            2.注意:标识符开头不能是数字
            3.标识符不能是保留字和关键字
            4.变量的名字是区分大小写的 如:age和Age是不同的变量,在实际的运用中,也建议,不要用一个
            5.标识符(变量名称)一定要见名思意:变量名称建议用名词,方法名称建议用动词



      Dart 常量:  final 和 const 修饰符

          const值不变 一开始就得赋值
          final可以开始不赋值 只能赋一次; 而final不仅有const的编译时常量的特性,最重要的它是运行时常量,并且final是惰性初始化,即在运行时第一次使用前才初始化
          
          永远不改变的量,请使用final或const修饰它,而不是使用var或其他类型变量


          final name ='Bob';// Without a type annotation
          final String nickname='Bobby';

          const bar = 10000; // Unit of pressure(dynes/cm2)
          const double atm = 1.01325 * bar; // Standard atmosphere

 */


//表示main方法没有返回值
///这也是一个注释
void main1() {
  print('你好dart');
}
 void main2(){

  // 变量

  //dart里面有类型校验

  // var myNum = 1234;
  // print(str);
  // print(myNum);

  //字符串
  // String str = '你好dart';
  // print(str);

  //数字类型
  // int num = 1234;
  // print(num);


  // var str ='';
  // str = 1234;



  String str = '';






}

 void main3(){
   var str1 = '1234';
   //var 2str='xxx';  //错误
   //var if = '123';  //错误

   var age = 20;
   var Age = 30;
   print(age);
   print(Age);
 }


 void main(){
   //变量
   print('~~~~~~变量~~~~~~~');
   var str='this is a str';
   str = '你好 str';
   print(str);


    int num = 1234;
    num=3333;
    print(num);



    //const 常量
     print('~~~~~~常量~~~~~~~');
    const PI = 3.14159;
    // PI = 123.444;  //错误的写法 常量不可以修改
    print(PI);

    //final 常量
    final PI1 = 3.14159;
    // PI1 = 3.14159; //错误写法
     print(PI1);


    final a = new DateTime.now();
    print(a);

    //const b = new DateTime.now();//报错了

  


 }


