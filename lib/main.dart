//CLASSES IN DART

class Microphone{
  //Instance variables, member variables
  String color;
  String name;
  int model = 2019;//default is set to 2019

  //Methods
  void turnOn(){
    print('$name is on!');
}

  bool isOn() => true;

  int modelNum()=> model;

  void turnOff(){
    print('$name is turned off!');
  }

  void setVolume(){
    print('$name with color: $color volume is up!');
  }

//  Constructor (general)
//  this. = this object/class
//  Stay away from this if you use Dart!
  Microphone(String name, String color, int model){
    this.name=name;
    this.color=color;
    this.model=model;

  }

//Getter and Setter
  String get getName => name;
  set setName(String value) =>name=value;

}

class Wire{
  int length;
  String color;
  String model;

}


class Stand{
  int length;
  String color;
  String model;

//Syntactic sugar constructor
  Stand(this.length,this.color,this.model);

//  Using Named Constructor
  Stand.initiall(){
    length=12;
    color='Silver-Black';
  }
}


main(){
//  var mic = new Microphone();
//  mic.name='Stage Fire';
//  mic.color='black';
//  mic.model=2019;

//CREATING ANOTHER INSTANCE WITH THE CONSTRUCTOR
  var mic_1 = new Microphone('XLR 125', "Black", 2019);

//Without the constructor
  var wir = new Wire();
  wir.color='yellow';
  wir.length=10;
  wir.model='xlr';

//Passing attributes with the sugar constructor
  var stan=new Stand(7,'Black','Mic flex');

//With the named constructor
  var stan_2=new Stand.initiall();
  print(stan_2.model);

//  print(mic);
//  print(mic.name);
//  print(mic.color);//. gives access to the operator
//
  print('${wir.model} this is a check');
  print(wir.color);
//  mic.turnOff(); //accessing the method
//  mic.setVolume();
//  mic.isOn(); //won't print anything because it just returns the value
//  print(mic.isOn());
//  print(mic.modelNum());
  print(mic_1);
  print(stan);

//Using Setter Getter
//  You don't have to use these if you use only static instances.. you really
//  don't have to because these are implicit in the variables
mic_1.setName="New Name";
print(mic_1.getName);
}

//------------------------------------------------------------------------//
//  Inheritance


