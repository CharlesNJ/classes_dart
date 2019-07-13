import 'package:classes_dart/inheritance.dart';
int addNum(int a, int b) => a+b;

class Church{
  String name;
  String address;
  String pastor;
  int zip;

  Church(this.name,this.address, this.pastor, this.zip);

  @override
  String toString() => 'Church details $name \n$address \n${this.pastor} \n$zip ';

  }

class Church_1 extends Church {

  String loc;

  void location() {
    print("{$name}'s location is $address!");
  }

  Church_1(String name, String address, String pastor, int zip,this.loc)
      : super(name, address, pastor, zip);

  @override
  String toString() {
    var p='church details $name, $address, $pastor, $zip,$loc\nThis is from lib in lib- ${calculate(7,9)}';
    return p;
  }
}