/*ให้สร้างคลาสหลัก (Super class) ชื่อว่า Vehicle ซึ่งมีคุณสมบัติ brand และ
model พร้อมทั้งสร้างเมธอด drive() เพื่อแสดงข้อความว่า "Vehicle is driving.”*/

class Vehicle { //superclass
  String? brand; //propery คุณสมบัติ
  String? model;
  @override

  Vehicle(this.brand,this.model); //สร้าง constutor ของตัว super class
  String toString() => 'ชื่อ : $brand \nโมเดล : $model '; //เป็นการกำหนดเพื่อไปเเสดงตอน print

  void drive(){ //สร้าง method
    print("Vehicle is driving.");
  }
}
class Car extends Vehicle{ //subclass
  int? numOfDoors;
  @override

  void drive() => print("Car is driving.");

  Car(brand,model,this.numOfDoors):super(brand,model);//สร้าง constutor ส่งไปยัง Super class
  String toString() => 'ชื่อ : $brand \nโมเดล : $model \nประตูรถ : $numOfDoors';//เป็นการกำหนดเพื่อไปเเสดงตอน print
}
void main(List<String> args) {
  var car1 = Car("Musroom", "Forrari", 5);
  print(car1);
  car1.drive();
  var vv1 = Vehicle("Honda", "Forza");
  print(vv1);
  vv1.drive();
}
