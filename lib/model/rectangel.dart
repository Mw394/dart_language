import 'package:dart_language/model/shape_interface.dart';

class Rectangle implements Shape {
  // Final betyder at variablen ikke kan ændres. Bliver sat i runtime.
  final double width;
  final double height;
  final double area;

  // Const er ligesom final, men bliver sat i complietime.
  static const double pi = 3.14;

  /*
  Constructor med en initializer list. Kode efter : køres før kroppen køres, men efter oprettelse af objekt.
  Hvis alle medlemmer af en klasse er final, kan constuctor gøres til en const. Dette tillader klassen til at blive konstrukteret ved complie time.
  */
  const Rectangle(this.width, this.height) : area = width * height;

  @override
  void doSomethingWithArea() {
    print(area / 2);
  }
}

void main() {
  var rectangel = Rectangle(10, 10);

  print(rectangel.area);

  rectangel.doSomethingWithArea();
}
