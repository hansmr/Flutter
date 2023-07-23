void main() {
  final Hero wolverine = new Hero(name: 'Logan', power: 'Regenerate');
  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);
}

class Hero {
  String name;
  String power;

  // Constructor with named parameters
  Hero({required this.name, this.power = 'Sin poder'});

  // Constructor with positional parameters
  // Hero(this.name, this.power);

  // Initialize parameters name and power earlier in constructor
  //Hero(String pName, String pPower)
  //    : name = pName,
  //      power = pPower;

  // Use this tag to show that a native method as "toString"is being overriding in this class
  // this is considered as good practice
  @override
  String toString() {
    return '$name - $power';
  }
}
