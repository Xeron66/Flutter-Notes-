
main () {
  print("Hello World!");

// addition, subtraction, multiplication, division
  int a = 20;
  int b = 30;

  print(a+b);
  print(a-b);
  print(a*b);
  print(a/b);

// pre and post incrementation
  print(++a); //pre

  print(a++); //post
  print(a);
  // same way works for decrement

// comparison/relational operators
  print(a>b); // will output false cause a is < b 
  print(b>a); // will output true cause b > a

  // >= called greater or equal
  // <= called less or equal
  // == compares whether two are equal or not
  // != compares whether two are not equal or not

// logical operators
  // or = othoba symbol: ||
  // and = ebong symbol: &&

  print("--------------------------");
  bool isLoggedIn1 = true;
  bool isAdmin1 = true;

  print(isLoggedIn1&& isAdmin1);

  print("--------------------------");
  bool isLoggedIn = true;
  bool isAdmin = false;
  print(isLoggedIn || isAdmin);

// Assignment Operator
  print("--------------------------");

  int number1 = 5;
  number1 = number1 + 2;
  print(number1);
  // better version is +=
  number1 += 2;
  print(number1);
  // similarly *= /=

// Type Testing 
  print("--------------------------");
  int number2 = 20;
  var name = "Dart";
  print(name.runtimeType); //this will return the type

  //checking specifically
  print(name is String); // this will check if its a String or not (Returns bool)
  print(number2 is int);

// Nullable or Null Safety
  print("--------------------------");
  String ? isNull; // using ? causes it to set the var to a null by default
  print(isNull); // will show null
}