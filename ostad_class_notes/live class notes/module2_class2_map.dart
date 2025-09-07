main() {
  // map is key value pair type
  // each value is connected with a key
  // both key and value can be of any data types

  Map<String, String> person = {
    'name': 'Taufiq',
    'age': '27',
    'address': 'Dhaka',
    'Ex': '5 Years'
  };
  print(person);

  // trying to acces a single item in a map
  print(person['name']);

  // changing a particular value
  person['adress'] = 'Dhanmondi';
  print(person['adress']);

  person['age'] = '28';
  print(person['age']); 

  // removing a particular key
  person.remove('age');
  print("Age: ${person['age']}");

  // to check a particular key if it exists or not
  print(person.containsKey('age'));
  print(person.containsKey('address'));
  // to check if a particular value exists or not
  print(person.containsValue('Taufiq'));

  // adding a new value
  person.addAll({
    'Sub': 'CSE',
    'CGPA': '3.8'
  });
  print(person);

  // converting from map to list 
  var keylist = person.keys.toList();
  var valueList = person.values.toList();
  print(keylist);
  print(valueList);

  // dynamic type map
  var person2 = {

  };
  print(person2.runtimeType);

  // specifically declaring dynamic
  Map<dynamic, dynamic> person3 = {

  };
  print(person3.runtimeType);
}