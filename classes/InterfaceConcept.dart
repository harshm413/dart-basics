abstract class MyInterface{
  void doSomething();
  void doAnotherThing();
  int calculateSum(int a,int b);
}
class MyClass implements MyInterface{
  @override
  void doSomething(){
    print("Doing something");
  }
  @override
  void doAnotherThing(){
    print("Doing Another Thing");
  }
  @override
  int calculateSum(int a,int b){
    return a+b;
  }
  //override is not required but keep it a practice
  //dart is more like cpp and don't have interface
}
void main(){
  var myObj=MyClass();
  myObj.doSomething();
  myObj.doAnotherThing();
  print(myObj.calculateSum(5,10));
}