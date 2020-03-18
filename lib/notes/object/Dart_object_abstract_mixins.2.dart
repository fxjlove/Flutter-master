/* 

     mixins 的类型是什么?

     很简单,mixins的类型是其超类的子类型
 */
 class A{
  void printA() {
    print('printA');
  }
}
 class B{
   void printB() {
     print('printB');
  }
}
class C with A , B{
 

}

void main(){
 var c = new C();
 print(c is C);
 print(c is A);
 print(c is B);

 var a = new A();
print(a is Object);

 
 
}