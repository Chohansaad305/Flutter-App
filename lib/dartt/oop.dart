void main() {
  final s1 = Student('Ali', 20);
  s1.greet();
}

class Student {
  final String name;
  final int age;

  Student(this.name, this.age);

  void greet() {
    // print('Hello, my name is $name and I am $age years old.');
  }
}
