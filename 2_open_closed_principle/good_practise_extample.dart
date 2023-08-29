abstract class Shape {
  double calcArea();
}

class Rectangle extends Shape {
  final double width;
  final double height;

  Rectangle(this.width, this.height);

  @override
  double calcArea() {
    return width * height;
  }
}

class Circle extends Shape {
  final double raduis;

  Circle(this.raduis);
  //getter
  double get PI => 3.14;

  @override
  double calcArea() {
    return raduis * raduis * PI;
  }
}

class ShapePrinter {
  double calcArea(Shape shape) {
    return shape.calcArea();
  }
}

void main(List<String> args) {
  Shape shape = Rectangle(5, 5);
  print(shape.calcArea());
}
