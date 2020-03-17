/* 

        Dart 集合类型List Set Map详解 以及循环语句 forEach map where any every（37分47秒）
                1、List详解，List里面常用的属性和方法
                2、Set定义集合
                3、Map详解，Map里面常用属性和方法
                4、其他类型转换成List类型
                5、forEach map where any every 详解




        List里面常用的属性和方法：

                  常用属性：
                      length          长度
                      reversed        翻转
                      isEmpty         是否为空
                      isNotEmpty      是否不为空
                  常用方法：  
                      add         增加
                      addAll      拼接数组
                      indexOf     查找  传入具体值
                      remove      删除  传入具体值
                      removeAt    删除  传入索引值
                      fillRange   修改   
                      insert(index,value);            指定位置插入    
                      insertAll(index,list)           指定位置插入List
                      toList()    其他类型转换成List  
                      join()      List转换成字符串
                      split()     字符串转化成List
                      forEach   
                      map
                      where
                      any
                      every





          Set 

                      用它最主要的功能就是去除数组重复内容

                      Set是没有顺序且不能重复的集合，所以不能通过索引去获取值





          映射(Maps)是无序的键值对：
                  常用属性：
                      keys            获取所有的key值
                      values          获取所有的value值
                      isEmpty         是否为空
                      isNotEmpty      是否不为空
                  常用方法:
                      remove(key)     删除指定key的数据
                      addAll({...})   合并映射  给映射内增加属性
                      containsValue   查看映射内的值  返回true/false
                      forEach   
                      map
                      where
                      any
                      every

 */

//List详解，List里面常用的属性和方法
void mainList() {
  //List里面的属性
  List myList = ['香蕉', '苹果', '西瓜', '车厘子'];
  print(myList.length);
  print(myList.isEmpty);
  print(myList.isNotEmpty);
  print(myList.reversed); //对列表倒叙排序

  var newList = myList.reversed.toList();
  print(newList);

//List里面的方法
  List list1 = ['香蕉', '苹果', '西瓜', '车厘子'];
  list1.add('桃子'); //增加数据 增加一个

  list1.addAll(['葡萄', '橙子']); //拼接数组

  print(list1);

  print(list1.indexOf('车厘子')); //查找  传入具体值   indexOf查找不到返回-1  查找到返回索引

// list1.remove('苹果');
  list1.removeAt(2);

  print(list1);
  print('------------------');
  List list2 = ['香蕉', '苹果', '西瓜', '车厘子'];
// list2.fillRange(1, 2,'aaa');//修改
// list2.fillRange(1, 3,'aaa');//修改

// list2.insert(1, 'aaa');//插入 一个
  list2.insertAll(1, ['aaa', 'bbb']); //插入 多个
  print(list2);

  print('------------------');
  List list3 = ['香蕉', '苹果', '西瓜', '车厘子'];
  var str = list3.join('-'); //list转换称字符串
  print(str);
  print(str is String);

  print('------------------');
  var str4 = '香蕉-苹果-西瓜-车厘子';
  var list4 = str4.split('-'); //字符串转换成list
  print(list4);
  print(list4 is List);
}

//2、Set定义集合
void mainSet() {
  /*   Set 
          用它最主要的功能就是去除数组重复内容
          Set是没有顺序且不能重复的集合，所以不能通过索引去获取值 */

  var s = new Set();
  s.add('aa');
  s.add('bb');
  s.add('bb');
  print(s);
  print(s.toList());

  List list1 = ['香蕉', '苹果', '车厘子', '西瓜', '车厘子', '苹果', '车厘子', '苹果'];
  var s1 = new Set();
  s1.addAll(list1);
  print(s1);
  print(s1.toList());
}

//Map详解，Map里面常用属性和方法
void mainMap() {
/*   

      映射(Maps)是无序的键值对：

            常用属性：
                keys            获取所有的key值
                values          获取所有的value值
                isEmpty         是否为空
                isNotEmpty      是否不为空
            常用方法:
                remove(key)     删除指定key的数据
                addAll({...})   合并映射  给映射内增加属性
                containsValue   查看映射内的值  返回true/false
                forEach   
                map
                where
                any
                every
        
        
        */

  var person = {'name': '张三', 'age': 20};

  Map person3 = {'name': '张三', 'age': 20};

  var person2 = new Map();
  person2['name'] = '李四';
  print(person);
  print(person2);

  print('~~~~~~~~~~~~~~');
  //常用属性

  Map p1 = {'name': '张三', 'age': 20};
  print(p1.keys.toList());
  print(p1.values.toList());
  print(p1.isEmpty);
  print(p1.isNotEmpty);

  //常用方法:
  Map p2 = {'name': '张三', 'age': 20, 'sex': '男'};
  p2.addAll({
    'work': ['写代码', '送外卖'],
    'height': 160
  });
  print(p2);

  p2.remove('age');
  print(p2);

  print('~~~~~~~~~~~~~~');
  print(p2.containsValue('张三'));
  print(p2.containsKey('sex'));
}

void main() {
  /* forEach     
        map         
        where       
        any
        every */

  List list = ['香蕉', '苹果', '西瓜', '车厘子'];
  for (int i = 0; i < list.length; i++) {
    print(list[i]);
  }
  print('~~~~~~~~~~~~~~');
  for (var item in list) {
    print(item);
  }
  print('~~~~~~~~~~~~~~');

  list.forEach((value) {
    print('$value');
  });

  print('~~~~~~~~~~~~~~');
  List list2 = [1, 3, 4];
  List newList = new List();
  for (var item in list2) {
    newList.add(item * 2);
  }
  print(newList);
  print('~~~~~~~map~~~~~~~');
  List list3 = [1, 3, 4];
  var newList3 = list3.map((value) {
    return value * 2;
  });
  print(newList3.toList());

  print('~~~~where~~~~~~~~~~');
  List list4 = [1, 3, 4, 7, 9];
  var newList4 = list4.where((value) {
    return value > 5;
  });
  print(newList4.toList());

  print('~~~~any~~~~~~~~~~');
  List list5 = [1, 3, 4, 7, 9];
  var newList5 = list5.any((value) {
    //只要集合里面有满足条件的就返回true
    return value > 5;
  });
  print(newList5);
  print('~~~~every~~~~~~~~~~');
  List list6 = [1, 3, 4, 7, 9];
  var newList6 = list6.every((value){//每一个都满足条件返回true  否则返回false
     return value > 5;
  });
  print(newList6);


   print('~~~~set~~~~~~~~~~');
   var s = new Set();
   s.add([111,222,333]);
   s.forEach((value){
print(value);
   });
   print('~~~~Map~~~~~~~~~~');
Map p1 ={
  'name':'aaa',
  'age':20
};
p1.forEach((key,value){
print('$key---$value');
});
}
