//This is the best practise.

//resposibility 1:calculations and logic.
import 'dart:math';

abstract class Shape {
  double area();
}

class Cirle extends Shape {
  double raduis;
  Cirle({
    required this.raduis,
  });
  @override
  double area() {
    return pi * raduis * raduis;
  }
}

class Square extends Shape {
  double side;
  Square({
    required this.side,
  });

  @override
  double area() {
    return side * side;
  }
}

class Triangle extends Shape {
  double base;
  double height;
  Triangle({
    required this.base,
    required this.height,
  });
  @override
  double area() {
    return 0.5 * base * height;
  }
}

//resposibility 2: paint to the screen.
// class ShapePainter {
//   void paintSquare(Canvas c) {}
//   void paintCirle(Canvas c) {}
//   void paintTriangle(Canvas c) {}
// }

//resposibility 3: Get requests
class ShapeOnline {
  String? wikiArtticle(String figues) {
    return null;
  }

  String? _cacheElements(String text) {
    return null;
  }
}

void main(List<String> args) {
  Shape shape1 = Cirle(raduis: 5);
  print(shape1.area());
}
