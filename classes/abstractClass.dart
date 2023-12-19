abstract class Vehicle{
  String brand="";
  String _model="";
  int __year=0;

  Vehicle(String brand,String model,int year){
    this.brand=brand;
    this._model=model;
    this.__year=year;
  }

  void startEngine();

  String getInfo(){
    return "$brand $_model $__year";
  }
}

class Car extends Vehicle{
  int numberOfDoors=0;
  Car(String brand,String model,int year,int numberOfDoors):super(brand,model,year){
    this.numberOfDoors=numberOfDoors;
  }

  @override
  void startEngine(){
    print("Car engine started.");
  }
   void getModel(){
     print(_model);
   }
   //override is not required in dart
}

main(){
  Car myCar=Car("Toyota","Camry",2022,4);
  myCar.getModel();
  print(myCar.brand);
  print(myCar.getInfo());
  myCar.startEngine();
  print(myCar._model);
  print(myCar.__year);
  //but i am able to access private and protected members
}