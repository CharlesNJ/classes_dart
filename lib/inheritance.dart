class Person{
  String name, lastName, nationality;
  int age;

  void showName(){
    print(this.name);
  }

  void sayHello(){
    print('Hello!');
  }
//  Person(this.name,this.lastName,this.nationality,this.age);
}

//Inheriting; keyword is extends
class Charles extends Person{

//This can also have some additional properties
  String profession;

//overriding the existing method from the parent
  @override
  void sayHello() {
    // TODO: implement sayHello
    print('Namasthe!');
  }
  void showProf() => print(profession);
}

class Chelsea extends Person{
  bool canDraw;
  String lastName='Ruth';
  String nationality='Indian';

  result(){
    print('BIO of $name  $lastName: \nAn $nationality and \n can draw: $canDraw.' );
  }
}

main(){
  var charles = new Charles();
  charles.name='Charl';
  charles.showName();
  charles.profession='Data Scientist';
  charles.showProf();
  charles.sayHello();

  var chelsea = Chelsea();
  chelsea.canDraw=true;
  chelsea.name='Chelsea';
  print(chelsea.result());
}

