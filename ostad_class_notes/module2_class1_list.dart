void main () {

// List and properties

  // in explicit declaration of a list, the values are what the declared data types are
  List<int> numbers = [1,2,3,4]; // this is explicit declaration of a list
  List<String> fruits = ["mango","Apple","banana"];

  print("---------------------------");
  print("Numerics");
  print(numbers.length);
  print(numbers.isEmpty);
  print(numbers[0]);

  print("---------------------------");
  print("Strings");
  print(fruits.first);
  print(fruits.last);

// Another way of using Lists

  var list = [1,2,"Apple"]; // this is implicit declaration of a list!
  // here the list values are taken in as Objects
  print(list);
  print(list.runtimeType);
  print(numbers.runtimeType);
  print(fruits.runtimeType);


  // insertion and deletion
  print("---------------------------");
  print("Insertion and Deletion");
  fruits.insert(1, "coconut"); // inserting single item ".insert()""
  print(fruits);

  fruits.insertAll(1, ["pineapple", "lichi"]); // inserting multiple items ".insertALL()"
  print(fruits);

  fruits.removeAt(2); // this is removes the item from 2nd index
  print(fruits);
  fruits.remove("Apple"); // this removes the item using its value
  print(fruits);

  // Updating a list
  print("---------------------------");
  print("Updating a list");
  fruits[1] = "jackfruit";
  print(fruits);

  // fixed lenght list

  print("---------------------------");
  print("Fixed Lists");
  List<int> fixedList = List<int>.filled(3,0); // here .filled() is a constructor
  // .filled( lenght    , fill with ) 
  fixedList[0] = 1;
  fixedList[1] = 2;
  fixedList[2] = 3;
  print(fixedList);

  // Growable Lists
  print("---------------------------");
  print("Growable Lists");

  List<int> growableList = [];
  growableList.add(4);
  growableList.add(5);
  print(growableList);
  print(growableList.length);

}