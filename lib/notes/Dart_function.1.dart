/* 

      Dart中的函数  箭头函数 匿名函数 闭包等(22分20秒)-下
          2、函数相互调用
          3、匿名函数 
          4、递归
          5、闭包 



          闭包:
            1.全局变量的特点: 全局变量常驻内存、全局变量污染全局
            2.局部变量的特点: 不常驻内存会被垃圾机回收、不回污染全局



            想实现的功能:
                1.常驻内存
                2.不污染全局

                 产生了闭包,闭包可以解决这个问题...

                 闭包:函数嵌套函数,内部函数会调用外部函数的百年来或参数,变量或参数不会被系统回收

                 闭包的写法: 函数嵌套函数,并return 里面的函数,这样就形成了闭包


*/

void main1() {
  //需求: 使用forEach打印下面List里面的数据
  List list = ['苹果', '香蕉', '西瓜', '车厘子'];
  list.forEach((value) {
    print(value);
  });

  print('~~~~箭头函数~~~~~~~~~~~');
//箭头函数
  list.forEach((value) => print(value));

  list.forEach((value) => {print(value)});

  //需求: 修改下面List里面的数据,让数组中大于2的值乘以2
  List list2 = [4, 1, 2, 3, 4];
  var newList = list2.map((value) {
    if (value > 2) {
      return value * 2;
    }
    return value;
  });
  print(newList.toList());
  print('~~~~~~~~~~~~~~~');

  var newList2 = list2.map((value) => value > 2 ? value * 2 : value);
  print(newList2);

  /* 

      需求:  
        1.定义一个方法isEvenNumber来判断一个数是否是偶数
        2.定义一个方法答应1-n以内的所有偶数
  
   */

  bool sEvenNumber(int n) {
    if (n % 2 == 0) {
      return true;
    }
    return false;
  }

  printNum(int n) {
    for (var i = 1; i <= n; i++) {
      if (sEvenNumber(i)) {
        print(i);
      }
    }
  }

  printNum(10);
}

int getNum(int n) {
  return n;
}

void main2() {
  print(getNum(12));


  //匿名方法
  var printNum=(){
      print(123);
  };
  printNum();


  var printNum2=(int n){
      print(n+2);
  };
  printNum2(12);



  //自执行方法
  //()()

  ((){
      print('我是自执行方法');
  })();

  ((int n){
      print('我是自执行方法');
      print(n);
  })(12);


  //方法的递归
  print('方法的递归~~~~~~~~');
  var sum=1;
  fn(n){
      sum *= n;
      if(n == 1){
          return;
      }
      fn(n-1);

  }
  fn(5);
  print(sum);


  //通过方法的递归 求1-100的和
  var summ = 0;
  fnn(int n){
    summ+=n;
    if(n==0){
      return;
    }
    fnn(n-1);

  }
  fnn(100);
  print(summ);



}

var a = 123;//全局变量 常驻内存

void main(){

 /*   闭包:
            1.全局变量的特点: 全局变量常驻内存、全局变量污染全局
            2.局部变量的特点: 不常驻内存会被垃圾机回收、不回污染全局



            想实现的功能:
                1.常驻内存
                2.不污染全局

                 产生了闭包,闭包可以解决这个问题...

                 闭包:函数嵌套函数,内部函数会调用外部函数的百年来或参数,变量或参数不会被系统回收

                 闭包的写法: 函数嵌套函数,并return 里面的函数,这样就形成了闭包 */
  print(a);

  fn1(){
    print(a);
  }
  fn1();


  printInfo(){
    var b = 123; //局部变量
    b++;
    print(b);
  }

 print('~~~~闭包~~~~~~~~~~~~');
  //闭包
  fn(){
      var c = 123; //不回污染全局 常驻内存
      return(){
        a++;
        print(c);
      };

  }
  var f = fn();
  f();
   f();
    f();


}
