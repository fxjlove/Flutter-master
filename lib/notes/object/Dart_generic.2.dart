/* 

      Dart中的泛型 泛型方法  泛型类 泛型接口(23分43秒)
            1、Dart中的泛型
            2、Dart中的泛型 泛型方法
            3、Dart中的泛型 泛型类
            4、Dart中的泛型 泛型接口



      通俗理解:泛型就是解决 类 接口 方法的复用性、以及对不特定数据类型的支持(类型校验)


      泛型接口

      Dart中的泛型接口:
          实现数据缓存的功能:有文件缓存、内存缓存. 内存缓存和文件缓存按照接口约束来实现
          1.定义一个泛型接口 约束实现他的子类必须有getByKey(key) 和 setByKey(key,value)
          2.要求setByKey的时候的value的类型和实例化子类的时候指定的类型一致

 */
/* 

abstract class ObjectCache{
  getByKey(String key);
  void setByKey(String key,Object value);
}
abstract class StringCache{
  getByKey(String key);
  void setByKey(String key,Object value);
}
//泛型
abstract class Cache<T>{
   getByKey(String key);
  void setByKey(String key,T value);
} 

*/


abstract class Cache<T>{
  getByKey(String key);
  void setByKey(String key,T value);
}
class FileCatch<T> implements Cache<T>{
 @override
  getByKey(String key) {
    return null;
  }

  @override
  void setByKey(String key, T value) {
    print('我是文件缓存 把key = ${key}   value=${value}的数据写入到了文件中');
  }
  
}

class MemoryCatch<T> implements Cache<T>{
  @override
  getByKey(String key) {
    return null;
  }

  @override
  void setByKey(String key, T value) {
    print('我是内存缓存 把key = ${key}   value=${value}的数据写入到了内存中');
  }
  
}




void main(){
  //String 只能传入String数据
  MemoryCatch m = new  MemoryCatch<String>();
  m.setByKey('index', '首页数据');


//Map 只能传入Map数据
  MemoryCatch m1 = new  MemoryCatch<Map>();
  m1.setByKey('index', {'name':'章三','age':20});

}
