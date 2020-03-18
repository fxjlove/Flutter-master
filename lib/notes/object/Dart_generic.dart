/* 

      Dart中的泛型 泛型方法  泛型类 泛型接口(23分43秒)
            1、Dart中的泛型
            2、Dart中的泛型 泛型方法
            3、Dart中的泛型 泛型类
            4、Dart中的泛型 泛型接口



      通俗理解:泛型就是解决 类 接口 方法的复用性、以及对不特定数据类型的支持(类型校验)


      泛型方法

 */

//只能返回String类型的数据
String getData1(String value){
  return value;
}

int getData2(int value){
  return value;
}


//泛型 泛型方法
//不指定类型放弃了类型检查,我们现在想实现的是传入什么 返回什么 比如:传入number类型 必须返回number类型
T getData<T>(T value){
  return value;
}





void main(){
  print(getData(21));
  print(getData('xxx'));

  getData<String>('你好');

  getData<int>(123);


  
}