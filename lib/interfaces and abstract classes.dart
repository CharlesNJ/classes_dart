main(){
//  var animal = new Animal(); //you can't do this because when you create an  abstract
//  object the idea is not to instantiate now because the idea is not concrete
//rather after the concrete classes are created then that will inherit from
//the ABSTRACT classes

  var jenn=new Person('Jenny', 'INdian');
  print(jenn);
}

//When do you make a class abstract? When they are so gereric
abstract class Animal{
  void breathe();//abstract method
  void noise(){
    print('Making animal noises!');
  }
}

class Person implements Animal{
  String name, nationality;

  Person(this.name, this.nationality);

  @override
  void breathe() {
    print('breathes thru nostrils!');
  }

  @override
  void noise() {
    print('can shout!');
  }

  @override
  String toString() => '$name is $nationality';
}

abstract class IsFunny {
  void makePeopleLaugh(); //abstract method

}

//creating a comedian.. that has properties of a Person and a IsFunny
class Comedian extends Person implements IsFunny{
  Comedian(String name, String nationality) : super(name, nationality);


  @override
  void makePeopleLaugh() {
    print('makes people laugh!');
  }
}

class tvShow implements IsFunny{
  String name;

  @override
  void makePeopleLaugh() {
    print('TV can make people laugh!');
  }
}