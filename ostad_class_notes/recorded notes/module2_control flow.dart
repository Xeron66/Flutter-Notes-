void main () {
    // If elses
    int mathMarks = 85;
    if (mathMarks >= 80) {
      print("A+");
    } else {
      print("B+");
    }

    int age = 20;

    if (age >= 18) {
      print("You can vote!");
    } else {
      print("You cant vote!");
    }

    // switch cases

    String grade = "A";

    switch(grade) {
      case "A+":
        print("Excelent");
        break;
      case "B+":
        print("Good");
        break;
      case "C+":
        print("Average");
        break;
      default: 
        print("Invalid Value!");
    }
}