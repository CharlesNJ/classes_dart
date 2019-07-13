import 'package:classes_dart/libraries.dart' as cl;
import 'package:classes_dart/inheritance.dart';

main(){

  int a=25;
  int b=25;
  print(cl.addNum(a,b));

  var church= new cl.Church('ICA','c-116 nsp col','raj',74105);
  print(church.name);

  print(new Location(23.55, -66.5));

  var church1= new cl.Church_1('ICA','c-116 nsp col','raj',74105,' (29.55, -65.99)');
  print(church1);
  }
//you can also use another lib in a library
