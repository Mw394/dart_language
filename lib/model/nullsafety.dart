import 'package:dart_language/model/student.dart';

void main() {
  var student = null;
  // Prints "Student Not initialized"
  print(student ?? "Student not initialized");

  // Prints null
  print(student?.toString());

  // Sets student to new Student.
  student ??= Student("Martin", 27, "Datamatiker", 2023);

  // prints student.
  print(student?.toString());
}
