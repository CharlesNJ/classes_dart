class Person{
  String name;

  Person(this.name);
}

main(){
  var list=[0,01,2,3,4,5,6];

//creating lists with specific types. Here Str and Int
  var onlyStrings=new List<String>();
  var onlyInt=new List<int>();
  onlyStrings.add('Char');
  onlyStrings.add('Jenn');
  onlyInt.add(1);

  print(onlyInt);//just checking

//Initializing our own types created using classes
  var jenn=new Person('Jenn');
  var benn=new Person('Benn');
  var kenn=new Person('Kenn');
//  print(jenn);
//  print(benn);

//Adding those initialized classes to a list
  var personList = new List<Person>();
  personList.add(jenn);
  personList.add(benn);
  personList.add(kenn);

//printing that list of classes
  for (int i=0;i<personList.length;i++){
    print(personList[i].name);
  }


//Basics of lists
  print(list[4]);
  print(list.length);
  print(list[list.length-1]);

  for (int i=0;i<list.length;i++){
    if(list[i]%2==0) print('${list[i]} is multiple of 2');
    else print('Index $i contains ${list[i]} and is not a multiple 2!');
  }
}