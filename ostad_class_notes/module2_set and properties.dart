void main() {
  Set<String> colors = {"red", "green", "blue"};

  // adding items in a Set
  colors.add("orange");
  print(colors);

  // finding elements at index
  print(colors.elementAt(1));

  // adding multiple items in a set
  colors.addAll({"grey", "magenta"});
  print(colors);

  // finding length
  print(colors.length);

  // checking if empty or not
  print(colors.isEmpty);
  print(colors.isNotEmpty);

  // checking if item exists or not
  print(colors.contains("green"));
}