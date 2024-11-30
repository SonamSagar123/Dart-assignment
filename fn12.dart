import 'dart:io';

int findLargest(List<int> numbers) {
  int largest = numbers[0];
  for (int num in numbers) {
    if (num > largest) {
      largest = num;
    }
  }
  return largest;
}

void main() {
  stdout.write('Enter a list of integers (comma separated): ');
  String input = stdin.readLineSync()!;
  List<int> numbers = input.split(',').map((e) => int.parse(e.trim())).toList();

  int largestElement = findLargest(numbers);
  print('The largest element in the list is: $largestElement');
}
