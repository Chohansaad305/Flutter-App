// Dart List is similar to an array, which is ordered collection of the object.
// The array is the  most popular and commonly used collection in array other programming language.

// The syntax  of declaring the list is given below.

var list1 = [10, 20, 30, 40, 50];
// The Dart list is defined by storing all elements inside the square brackets ([]) and separated by comment (,).

void main() {
  var listNum = [10, 20, 30, 40];
  var list2 = [60, 70, 80, 90, 100];

  //========Array Add=========
  listNum.add(50);
  //========Array Add All==========
  listNum.addAll(list2);

  //======Array Insert=======
  listNum.insert(0, 5);

  //========Array Update========
  listNum[1] = 50;
  //=======Array Replace Update=======
  listNum.replaceRange(0, 3, [1, 2, 3, 4, 5, 6, 7, 8, 9]);

  //=======Array Remove==========
  // print("Remove: ${listNum.remove(20)}");
  // print("Remove Last: ${listNum.removeLast()}");
  // print("Remove At: ${listNum.removeAt(2)}");
  listNum.removeRange(3, 5);

  // print("First: ${listNum.first}");
  // print("Last: ${listNum.last}");
  // print("Lenght: ${listNum.length}");
  // print("Reversed: ${listNum.reversed}");
  // print("Is Empty: ${listNum.isEmpty}");
  // print("Is Not Empty: ${listNum.isNotEmpty}");
  // print("2end Index Element: ${listNum.elementAt(2)}");

  // print(listNum);

  var names = [];

  //========Array Add=========
  names.add("saad");
  names.add("Usman");
  names.add("Talha");

  //========Array Add All==========
  names.addAll(listNum);

  //========Array Update========
  names[0] = "Saad";

  //======Array Insert=======
  names.insert(0, "Abdul Gani");

  // print(names);
}
