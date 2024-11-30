import 'dart:io';

void main() {
  print('Enter a number:');
  int num = int.parse(stdin.readLineSync()!);
  if (num > 0) {
    print('The number is positive.');
  } else if (num < 0) {
    print('The number is negative.');
  } else {
    print('The number is zero.');
  }
}
