import 'dart:io';

void main() {
  print('Enter a number:');
  int num = int.parse(stdin.readLineSync()!);

  if (num % 5 == 0 && num % 11 == 0) {
    print('The number is divisible by both 5 and 11.');
  } else {
    print('The number is not divisible by both 5 and 11.');
  }
}
