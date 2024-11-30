import 'dart:io';

int sumOfIntegers(List<int> numbers) {
  int sum = 0;
  for (int num in numbers) {
    sum += num;
  }
  return sum;
}

void main() {
  stdout.write('Enter a list of integers (comma separated): ');
  String input = stdin.readLineSync()!;
  List<int> numbers = input.split(',').map((e) => int.parse(e.trim())).toList();

  int result = sumOfIntegers(numbers);
  print('The sum of the integers is: $result');
}
