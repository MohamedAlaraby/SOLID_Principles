class Rectangle {
  double width;
  double height;
  Rectangle({
    required this.width,
    required this.height,
  });
}

class Square extends Rectangle {
  Square(double length) : super(width: length, height: length);
}

/*
  Notice that :
  the code will compile but there is a bad logic error. A the sides must have the same 
  length but a rectange doesnt have this restriction.Howerer we can do this at the moment.

 */
void main(List<String> args) {
  final Rectangle error = Square(9);
  //erro=>creating a square with varios sides lengths....what !!!!
  error.width = 5;
  error.height = 666;
}
