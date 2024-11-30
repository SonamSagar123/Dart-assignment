import 'dart:io';

List<int> filterEvenNumbers(List<int> numbers) {
  List<int> evenNumbers = [];
  for (int num in numbers) {
    if (num % 2 == 0) {
      evenNumbers.add(num);
    }
  }
  return evenNumbers;
}

void main() {
  stdout.write('Enter a list of integers (comma separated): ');
  String input = stdin.readLineSync()!;
  List<int> numbers = input.split(',').map((e) => int.parse(e.trim())).toList();

  List<int> evenNumbers = filterEvenNumbers(numbers);
  print('The even numbers in the list are: $evenNumbers');
}
