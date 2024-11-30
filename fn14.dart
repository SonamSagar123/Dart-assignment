import 'dart:io';

List<int> reverseList(List<int> numbers) {
  return numbers.reversed.toList();
}

void main() {
  stdout.write('Enter a list of integers (comma separated): ');
  String input = stdin.readLineSync()!;
  List<int> numbers = input.split(',').map((e) => int.parse(e.trim())).toList();

  List<int> reversedNumbers = reverseList(numbers);
  print('The reversed list is: $reversedNumbers');
}
