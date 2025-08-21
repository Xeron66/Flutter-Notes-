void main () {
  // Set will always have unique values, there will be NO DUPLICATES
  print("------------------------");
  print("Creating a Set");
  Set<String> colors = {"red","green","Blue"};
  print(colors);

  print("------------------------");
  print("Adding a single value");
  // adding a new value
  colors.add("orange"); // .add is used to insert single value
  print(colors);
  
  print("------------------------");
  print("Adding multiple values");
  colors.addAll({"yellow","magenta"}); // .addAll is used to insert multiple values
  print(colors);
  
  // printing an element by position
  print("------------------------");
  print("printing an element by position");
  print(colors.elementAt(2));

  // clearing a set using 
  // "colors.clear()" 

  // Length
  print(colors.length);
  // checking if its empty
  print(colors.isEmpty);
  // checking if its not empty
  print(colors.isNotEmpty);
  // checking if it contains a particular value
  print(colors.contains("orange"));

}