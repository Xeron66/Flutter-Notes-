/// -----------------Example 1------------------------
// class Car {
//   String? brand; // ? is used here; meaning the variables can have null values.
//   String? model;
//   int? year;

//   void displayInfo() {
//     print("Name: $brand, Model: $model, Year: $year");
//   }
// }

// void main () {
//   // creating an object
//   Car mycar = Car();

//   // setting values
//   mycar.brand = "Toyota";
//   mycar.model = "Corolla";
//   mycar.year = 2020;

//   // printing all values
//   mycar.displayInfo();

//   // printing specific values
//   print("Car Model: ${mycar.brand}");
// }

/// -----------------Example 2-----------------------
/// static functions dont need an object to iniate
/// just use the class name!
// class MathUtils{
//   static const double pi = 3.1415;

//   static double circleArea (double r) {
//     return r * pi;
//   }
// }

// void main () {

//   print(MathUtils.pi);
//   print(MathUtils.circleArea(5));
// }

/// -----------------Example 3-----------------------
class Car {
  String? brand; // ? is used here; meaning the variables can have null values.
  String? model;
  int? year;

  // using a constructor to assign the values
  Car ({required this.brand, required this.model, required this.year});


  void displayInfo() {
    print("Name: $brand, Model: $model, Year: $year");
  }
}

void main () {
  // creating an object
  // here the constructor is taking in the values
  Car mycar = Car(brand:"Toyota", model: "Corolla", year: 2020);

  // printing all values
  mycar.displayInfo();

  // printing specific values
  print("Car Model: ${mycar.brand}");
}