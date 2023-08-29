class Rectangle {
  final double width;
  final double height;

  Rectangle(this.width, this.height);
}

class Circle {
  final double raduis;

  Circle(this.raduis);
  //getter
  double get PI => 3.14;
}

//this is bad because it is required now to change the existing code if i want to add
//another shape.and this violate the 2nd principle of the solid pricples.
//
class AreaCalculator {
  double calculate(Object shape) {
    if (shape is Rectangle) {
      return shape.width * shape.height;
    } else if (shape is Circle) {
      return shape.raduis * shape.raduis * shape.PI;
    }
    return 0.0;
  }
}
