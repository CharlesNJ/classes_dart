main(){

  var winners={
    'first':'Char', 2:'Nel', 'third':3, 'second':'Nel'
  };
// you can have any kind of dicts but the keys should not be repeated. eg: 'char':1, 'char':2, 1:'char',2:'char'
  print(winners['second']);
  
//iterating thru the dictionary
  winners.forEach((k,v)=>print('$k:$v'));

//another method to print keys and values using .keys and .values
  var keis=winners.keys;
  var vals=winners.values;
  print(keis);
  print(vals);


}