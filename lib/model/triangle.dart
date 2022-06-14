import 'dart:math';

import 'package:dart_language/model/shape_interface.dart';

class Triangle implements Shape {
  final int height;
  final int length;
  final double area;
  static Random rnd = Random();

  factory Triangle(int height) {
    return Triangle._internal(height: height, length: rnd.nextInt(50));
  }

  Triangle._internal({required this.height, required this.length})
      : area = (height * length) / 2;

  @override
  void doSomethingWithArea() {
    print(area * 2);
  }
}

void main() {
  var triangle = Triangle(10);

  print(triangle.length);
  print(triangle.area);
}
