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

  //Constructor
  //this. = this object/class
  Microphone(String name, String color, int model){
    this.name=name;
    this.color=color;
    this.model=model;

  }

}

class Wire{
  int length;
  String color;
  String model;
}

main(){
//  var mic = new Microphone();
//  mic.name='Stage Fire';
//  mic.color='black';
//  mic.model=2019;

//CREATING ANOTHER INSTANCE WITH THE CONSTRUCTOR
  var mic_1 = new Microphone('XLR 125', "Black", 2019);
  var wir = new Wire();
  wir.color='yellow';
  wir.length=10;
  wir.model='xlr';


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

}

