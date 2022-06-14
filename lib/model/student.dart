import 'package:dart_language/model/person.dart';

class Student extends Person {
  String education;
  int graduationYear;

  Student(String name, int age, this.education, this.graduationYear)
      : super(name, age);

  /*
  Følgende datatyper er supported i json: Numbers(int, float, double), bool, String, null, liste, Map(med String keys)
  Hvis en værdi ikke er en af overstående typer vil encoder prøve at kalde toJson på den. 
  */
  Map<String, dynamic> toJson() => {
        "name": name,
        "age": age,
        "education": education,
        "graduationYear": graduationYear
      };

  Student.fromJson(Map<String, dynamic> json)
      : graduationYear = json["graduationYear"],
        education = json["education"],
        super(json["name"], json["age"]);

  @override
  String toString() {
    return super.toString() +
        "| Education: $education | Graduation Year: $graduationYear";
  }
}

void main() {
  var student = Student("Martin", 27, "Datamatiker", 2023);

  print(student.toString());

  //Instance of operator
  if (student is Person) {
    print(true);
  }

  // Casting
  print((student as Student).education);
}
