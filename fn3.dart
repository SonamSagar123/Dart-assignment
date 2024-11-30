import 'dart:io';

int maxOfThree(int a, int b, int c) {
  if (a >= b && a >= c) {
    return a;
  } else if (b >= a && b >= c) {
    return b;
  } else {
    return c;
  }
}

void main() {
  stdout.write('Enter first number: ');
  int num1 = int.parse(stdin.readLineSync()!);

  stdout.write('Enter second number: ');
  int num2 = int.parse(stdin.readLineSync()!);

  stdout.write('Enter third number: ');
  int num3 = int.parse(stdin.readLineSync()!);

  int result = maxOfThree(num1, num2, num3);
  print('The maximum number is: $result');
}
