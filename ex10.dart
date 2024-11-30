import 'dart:io';

void main() {
  stdout.write('Enter an integer: ');
  int number = int.parse(stdin.readLineSync()!);
  int reversed = 0;

  while (number != 0) {
    int digit = number % 10;
    reversed = reversed * 10 + digit;
    number ~/= 10;
  }

  print('Reversed number: $reversed');
}
