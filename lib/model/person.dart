class Person {
  String name;

  // Static samme for alle instancer
  static String gender = "Male";
  int age;

  Person(this.name, this.age);

  // Constructor hvor age er optional og hvis ikke sat per defeault er 0.
  // Person({required this.name, this.age = 0});

  @override
  String toString() {
    return "Name: $name | Age:$age";
  }
}

void main() {
  var person = Person("Martin", 27);

  // var person = Person(name: "Martin");

  print(person.toString());
}
