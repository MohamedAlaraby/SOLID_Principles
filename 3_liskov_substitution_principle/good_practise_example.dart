class Rectangle {
  double _width;
  double _height;
  Rectangle(
    this._width,
    this._height,
  );
  double area() => _width * _width;
}

class Square {
  double _side;
  Square(this._side);
  double area() => _side * _side;
}

void main(List<String> args) {
  final Rectangle rectangle = Rectangle(5, 5);
  final Square square = Square(5);
}
