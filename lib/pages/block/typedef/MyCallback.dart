
//1.一个抽象类中只有一个方法，建议使用typedef。

abstract class MyCallback{
  void onCallback(String result);
}


 
//上面的代码可以替换为
// typedef void MyCallback(result);