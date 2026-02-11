import 'dart:io';

void main() {
  hotal();
}

void hotal() {
  // print("Welcome to Hotal");
  // print("Sir, Please select the menu:");
  var costumer = stdin.readLineSync();
  if (costumer != null) {
    // print("1. Pizza\n2. Burger\n3. Pasta\n4. Biryani");
    var choice = stdin.readLineSync();
    switch (choice) {
      case '1':
        // print("You selected Pizza. Enjoy your meal!");
        break;
      case '2':
        // print("You selected Burger. Enjoy your meal!");
        break;
      case '3':
        // print("You selected Pasta. Enjoy your meal!");
        break;
      case '4':
      // print("You selected Biryani. Enjoy your meal!");
      default:
      // print("Invalid choice. Please try again.");
    }
  } else {
    // print("No input received. Exiting.");
  }
}
