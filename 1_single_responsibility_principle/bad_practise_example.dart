// ignore_for_file: public_member_api_docs, sort_constructors_first
//Bad practise

class Shapes {
  List<String> cache = [];
  //resposibility 1: calculations
  double? squareArea(double l) {
    return null;
  }

  double? circleArea(double r) {
    return null;
  }

  double? triangleArea(double b, double h) {
    return null;
  }

  //resposibility 2: paint to the screen.
  // void paintSquare(Canvas c) {}
  // void paintCirle(Canvas c) {}
  // void paintTriangle(Canvas c) {}
  //resposibility 3: Get requests
  String? wikiArtticle(String figues) {
    return null;
  }

  String? _cacheElements(String figues) {
    return null;
  }

  //this class is totally distroys the SRP as it handles internet request ,paintings,
  //and calculations all in one place .this class is going to change very often in the futue:
  //when ever a method requries maintenance,You will have to change some code and this may
  //potentially break other parts of the class .
}
