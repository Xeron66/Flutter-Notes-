main () {
  // Note:
  // A Set can never have a duplicate Value!!


  // comparatively list <String> varName = []
  Set<String> names = {'Taufiq', 'Rahim', 'Sejan', 'Tanvir', 'Sakib'};  

  print(names);

  // Adding new stuffs in the set
  names.add('Fahim');
  print(names);

  // Adding multiple stuffs
  names.addAll({'Bobo', 'Rahat','Nasim'});
  print(names);

  // Removing stuffs
  names.remove('Rahim');
  print(names);

  // Removing multiple stuffs
  names.removeAll({'Tanvir','Bobo','Sakib'});
  print(names);

  // To check if any stuffs are in the Set or not
  print(names.contains('Rafi')); // This return true if it exists, false if it doesnt!

  // To check if multiple items exists or not!
  print(names.containsAll({'Rahat','Nasim'}));

  // Searching via indexes
  print(names.elementAt(3));

  // Accessing the first index in the set
  print(names.first);

  // Accessing the last index in the set
  print(names.last);

  // getting the length of the set
  print(names.length);

  // checking if the set is empty or not
  print(names.isEmpty);
  print(names.isNotEmpty);

  // Taking stuffs from a set to a list
  var nameList = names.toList();
  print(nameList);

  // Even if we tried to add duplicates in a Set, it will just not take it
  // and only keep one of the values
  names.add('Taufiq');
  print(names);

  // but in a list you can add multiple duplicates
  nameList.add('Taufiq');
  print(nameList);

  // taking another set
  Set<String> names1 = {'Taifuq', 'Farhan', 'Subha'};
  Set<String> names2 = {'Taifuq', 'Sezan', 'Ridoy'};
  print("----------------------------------------------");
  print(names1);
  print(names2);

  // Set union and intersection!
  print("Intersection value: ${names1.intersection(names2)}");
  print("Union value: ${names1.union(names2)}");
} 