import 'dart:io';

void main() {
  print('Enter the first number:');
  int num1 = int.parse(stdin.readLineSync()!);

  print('Enter the second number:');
  int num2 = int.parse(stdin.readLineSync()!);

  int max = (num1 > num2) ? num1 : num2;
  
  print('The maximum number is: $max');
}
