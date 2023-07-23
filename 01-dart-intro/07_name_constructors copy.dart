void main() {
  final Map<String, dynamic> rawJson = {
    'name': 'Tony Stark',
    'power': 'Money',
    'isAlive': true
  };

  // Construtor 2 receiving Json
  final ironman = Hero.fromJson(rawJson);

  // Constructor 1
  // final ironman = Hero(
  //isAlive: false,
  //power: 'Money',
  //name: 'Tony Stark'
  //);

  print(ironman.toString());
}

class Hero {
  String name;
  String power;
  bool isAlive;

  //Constructor with parameters by name
  Hero({required this.name, required this.power, required this.isAlive});

  Hero.fromJson(Map<String, dynamic> json)
      : name = json['name'] ?? 'No name found',
        power = json['power'] ?? 'No power found',
        isAlive = json['isAlive'] ?? 'No isAlive found';

  @override
  String toString() {
    return '$name, $power, isAlive: ${isAlive ? 'YES!' : 'Nope'}';
  }
}
