//============Introduction Section==================//
//Every app requires the top-level main() function
// void don't return any value
void main() {
  // print('Hello, World!');

  //============Variables and Data Types Section==================//
/*
1.var: The var keyword is used to declare a variable without specifying its type explicitly. The type is inferred from the assigned value.
2.final: The final keyword is used to declare a variable that can be assigned only once.
3.const: The const keyword is used to declare a compile-time constant. The value must be known at compile time and cannot be changed.
*/
// Using var
// var name = 'Voyager I';
// var year = 1977;
// var antennaDiameter = 3.7;
// var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
// var image = {
//   'tags': ['saturn'],
//   'url': '//path/to/saturn.jpg',
// };
// print(name);
// print(year);
// print(antennaDiameter);
// print(flybyObjects);
// print(image);
// Using final
// final missionName = 'Voyager I';
// final launchYear = 1977;
// final flybyObject = 'Saturn';
// final imageDetails = {
//   'tags': ['saturn'],
//   'url': '//path/to/saturn.jpg',
// };
// print(missionName);
// print(launchYear);
// print(flybyObject);
// print(imageDetails);
// Using const
// const pi = 3.14159;
// const earthRadius = 6371; // in kilometers
// const gravity = 9.8; // in m/s^2
// const planckConstant = 6.626e-34; // in Js
// const speedOfLight = 3.0e8; // in m/s
// const au = 1.496e11; // in meters
// print(pi);
// print(earthRadius);
// print(gravity);
// print(planckConstant);
// print(speedOfLight);
// print(au);
//============End of Variables and Data Types Section==================//

//============Control flow statements==================//
//Dart supports the usual control flow statements:
// if (year >= 2001) {
//   print('21st century');
// } else if (year >= 1901) {
//   print('20th century');
// }

// for (final object in flybyObjects) {
//   print(object);
// }

// for (int month = 1; month <= 12; month++) {
//   print(month);
// }

// while (year < 2016) {
//   year += 1;
// }
// print(year);
//============End of Control flow statements==================//

//============Functions Section==================//
// int fibonacci(int n) {
//   if (n == 0 || n == 1) return n;
//   return fibonacci(n - 1) + fibonacci(n - 2);
// }

// var result = fibonacci(20);
// print(result);
//============End of Functions Section==================//

//============Comments Section==================//
//Single-line comment:
// This is a normal, one-line comment.

/* multi-line comment*:*/
/*
This is a multi-line comment
that spans multiple lines.
*/

/// Documentation comment:
/// This is a documentation comment, used to document libraries,
/// classes, and their members. Tools like IDEs and dartdoc treat
/// doc comments specially.

//============End of Comments Section==================//

//============Imports Section==================//
//To access APIs defined in other libraries, use import statements.

/*
// Importing core libraries
import 'dart:math';

// Importing libraries from external packages
import 'package:test/test.dart';

// Importing files
import 'path/to/my_other_file.dart';
*/
//============End of Imports Section==================//

//============Classes and Objects Section==================//
// var voyager = Spacecraft('Voyager I', DateTime(1977, 9, 5));
// voyager.describe();
// var voyager2 = Spacecraft.unlaunched('Voyager II');
// voyager2.describe();
// //============Classes and Objects Section==================//

// //============Exceptions Section==================//
// try {
//   var result = 12 ~/ 0;
//   print(result);
// } on UnsupportedError {
//   print('Cannot divide by zero');
// } finally {
//   print('This line always executes');
// }

//============End of Exceptions Section==================//
}

//============Classes and Objects Section==================//
// class Spacecraft {
//   String name;
//   DateTime? launchDate;

//   // Read-only non-final property
//   int? get launchYear => launchDate?.year;

//   // Constructor, with syntactic sugar for assignment to members.
//   Spacecraft(this.name, this.launchDate) {
//     // Initialization code goes here.
//   }

//   // Named constructor that forwards to the default one.
//   Spacecraft.unlaunched(String name) : this(name, null);

//   // Method.
//   void describe() {
//     print('Spacecraft: $name');
//     // Type promotion doesn't work on getters.
//     var launchDate = this.launchDate;
//     if (launchDate != null) {
//       int years = DateTime.now().difference(launchDate).inDays ~/ 365;
//       print('Launched: $launchYear ($years years ago)');
//     } else {
//       print('Unlaunched');
//     }
//   }
// }
//============End of Classes and Objects Section==================//

//============Enums Section==================//
enum PlanetType { terrestrial, gas, ice }


/// Enum that enumerates the different planets in our solar system
/// and some of their properties.
enum Planet {
  mercury(planetType: PlanetType.terrestrial, moons: 0, hasRings: false),
  venus(planetType: PlanetType.terrestrial, moons: 0, hasRings: false),
  // ···
  uranus(planetType: PlanetType.ice, moons: 27, hasRings: true),
  neptune(planetType: PlanetType.ice, moons: 14, hasRings: true);

  /// A constant generating constructor
  const Planet({
    required this.planetType,
    required this.moons,
    required this.hasRings,
  });

  /// All instance variables are final
  final PlanetType planetType;
  final int moons;
  final bool hasRings;

  /// Enhanced enums support getters and other methods
  bool get isGiant =>
      planetType == PlanetType.gas || planetType == PlanetType.ice;
}
//============End of Enums Section==================//

//============Inheritance Section==================//
// class Orbiter extends Spacecraft {
//   double altitude;

//   Orbiter(super.name, DateTime super.launchDate, this.altitude);
// }
// //============End of Inheritance Section==================//

//============Mixins Section==================//
// mixin Piloted {
//   int astronauts = 1;

//   void describeCrew() {
//     print('Number of astronauts: $astronauts');
//   }
// }
// class PilotedCraft extends Spacecraft with Piloted {
//   PilotedCraft(super.name, DateTime super.launchDate);
// }
//============End of Mixins Section==================//

//============Interfaces and abstract classes Section==================//
// abstract class Describable {
//   void describe();

//   void describeWithEmphasis() {
//     print('=========');
//     describe();
//     print('=========');
//   }
// }
//============End of Interfaces and abstract classes Section==================//

//============Async programming Section==================//
// Dart uses the async and await keywords to support asynchronous programming.
const oneSecond = Duration(seconds: 1);
// ···
// Future<void> printWithDelay(String message) async {
//   await Future.delayed(oneSecond);
//   print(message);
// }

// Stream<String> report(Spacecraft craft, Iterable<String> objects) async* {
//   for (final object in objects) {
//     await Future.delayed(oneSecond);
//     yield '${craft.name} flies by $object';
//   }
// }
//============End of Async programming Section==================//

//============End of Introduction Section==================//