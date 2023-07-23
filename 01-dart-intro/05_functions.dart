void main() {
  print(greetEveryone());
  print('Suma: ${addTwoNumbers(10, 20)}');
  print(greetPerson(name: 'Fernando', message: 'Hi,'));
}

String greetEveryone() => 'Hello Everyone';

// Positional parameters
int addTwoNumbers(int a, int b) => a + b;

// b as optional parameter
int addTwoNumbersOptional(int a, [int b = 0]) {
  // Conditional to check b value andset to zero for default if is null
  // b ??= 0; // Equivalent --> b = b ?? 0;
  return a + b;
}

// Parameter by name, configuring a required parameter and optional parameter
String greetPerson({required String name, String message = 'Hola,'}) {
  return '$message Fernando';
}
