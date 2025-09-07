void main () {

  // basic iteration of for loop
  print("--------------------------------");
  print("For loop");
  for (int i = 0; i<5; i++) {
    print("Iteration $i");
  }

  // for in loops

  // Lists
  print("--------------------------------");
  print("For loops: Lists");
  List<String> fruits = ["Apple", "Banana", "Cherry"];
  for (var a in fruits) {
    print(a);
  }

  // Sets
  print("--------------------------------");
  print("For loops: Sets");
  Set<int> numbers = {1, 2, 3, 4};
  for (var b in numbers) {
    print(b);
  }

  // Maps
  // this is basically how json lists are iterated using for in loops!
  print("--------------------------------");
  print("Iterating through json maps");
  List<Map<String, dynamic>> users = [
    {"Name": "Alice", "Age": 25},
    {"Name": "Billy", "Age": 20},
    {"Name": "Jack", "Age": 45},
  ];

  for (var a in users) {
    print("Name: ${a["Name"]}, Age: ${a["Age"]}");
  }

  // While loop
  print("--------------------------------");
  print("While Loops!");
  int i = 0;
  while (i < 5) {
    print(i);
    i++;
  }

  // do while loop
  print("--------------------------------");
  print("do while loop");
  int j = 0;
  do {
    print(j);
    j++;
  } while (j<5);
}