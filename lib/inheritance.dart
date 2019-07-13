class Person{
  String name, lastName, nationality;
  int age;


  void showName(){
    print(this.name);
  }

  void sayHello(){
    print('Hello!');
  }
  //Person(this.name,this.lastName,this.nationality,this.age);
}

//Inheriting; keyword is extends
class Charles extends Person{

//This can also have some additional properties
  String profession;

  //Charles(String name, String lastName, String nationality, int age) : super(name, lastName, nationality, age);

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

  //Chelsea(String name, String lastName, String nationality, int age) : super(name, lastName, nationality, age);

  result(){
    print('\nBIO of $name  $lastName: \nAn $nationality and \n can draw: $canDraw.' );
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
  chelsea.sayHello();

//Calling the parent with a constructor
  var location=new LocationEL(23.11, -22.99, 72);
  print('location=(${location.lat}, ${location.lag}) and the temparature is ${location.temp} ');
  
//Because you use the toString method you don't have to give the parameters as above
  print(location); //you don't have to say (location.toString) when you override
                  //  toString it knows to take from there

}

//Inheritance from a class that has a constructor
class Location{
  num lat, lag;

  Location(this.lat,this.lag);
  Location.create(this.lat,this.lag); //using name constructor
}

class LocationEL extends Location{
  num temp;

//Inserting by clicking on the above LocationEL when it shows red and
//and create to call that from the parent class
  LocationEL(num lat, num lag,this.temp) : super(lat, lag);

//for name constructor use the below line observe _super.create_
//  LocationEL(num lat, num lag,this.temp) : super.create(lat, lag);
  @override
  String toString() {
    String result = 'This is how you can use inherentiance using toString:\n'
        'The coordinates are ($lag, $lat) and the temp is $temp';
    return result;
  }

}

int calculate(int a, int b){

  return a+b;
}