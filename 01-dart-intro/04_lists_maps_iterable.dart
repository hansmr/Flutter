void main() {
  final numbers = [1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 9, 9, 10]; // List
  print('List original $numbers');
  print('Lenght ${numbers.length}');
  print('First ${numbers.first}');
  print('Last ${numbers.last}');
  print('Reverse ${numbers.reversed}');

  final reversedNumbers = numbers.reversed; // Iterable
  print('Iterable: $reversedNumbers');
  print('List: ${reversedNumbers.toList()}'); // List
  print('Set: ${reversedNumbers.toSet()}'); // Set

  final numbersGreaterThan5 = numbers.where((int num) => num > 5);
  print('>5: ${numbersGreaterThan5.toSet()}');
}
