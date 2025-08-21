void main () {

// Map works like a key value pair in a list like structure

  // making a Map 
  Map<String, dynamic> students = {
    "name": "Rahim",
    "age": 23,
    "isPassed": true
  };
  print(students);

  // accessing values & updating
  print(students["name"]); // prints the name
  print(students["age"]); // prints the age
  
  // updating
  print("------------------------------");
  print("Updating Map");
  students["grade"] = "A+";
  print(students["grade"]);

  // adding new values
  print("------------------------------");
  print("Adding New key value pairs");
  students["city"] = "Dhaka";
  print(students["city"]);

  // removing values
  print("------------------------------");
  print("Removing a value");
  students.remove("city");
  print(students);

  // checking if a key exists or not
  print("------------------------------");
  print("Checking a value");

  if(students.containsKey("city")){
    print("Yes it contains!");
  }
  else {
    print("No it doesn't contain!");
  }

  // printing a particularly keys or values
  print("keys ${students.keys}");
  print("Values ${students.values}");
}