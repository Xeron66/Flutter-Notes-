//  void functions dont return anything!
void greet(String name){  // here name is the parameter of the function!
  print("Hello $name"); 
}

// functions with return types!
int addNumber(int a, int b) {
  return a + b;
}

void main () {
  greet("Jack"); // here Jack is the argument being passed on
  
  int result = addNumber(5, 6);
  print(result);
}