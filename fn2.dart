import 'dart:io';

bool isEven(int num) {
  return num % 2 == 0;
}

void main() {
  stdout.write('Enter a number: ');
  int number = int.parse(stdin.readLineSync()!);

  bool result = isEven(number);
  if (result) {
    print('$number is even.');
  } else {
    print('$number is odd.');
  }
}

