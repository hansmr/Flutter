void main() {
  final mySquare = new Square(side: -10);
  // mySquare.side = -5;
  print('Area: ${mySquare.calculateArea()}');
}

class Square {
  double _side;

  Square({required double side})
      : assert(side >= 0,
            'side must be >= 0'), // allow to check value with assertion before to assign to variable
        _side = side;

  double get area {
    return _side * _side;
  }

  set side(double value) {
    print('setting new value $value');
    if (value < 0) throw 'Value muest be greater than zero';
    _side = value;
  }

  double calculateArea() {
    return _side * _side;
  }
}
