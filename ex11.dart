import 'dart:io';

void main() {
  stdout.write('Enter a number: ');
  int number = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= number; i++) {
    int cube = i * i * i;
    print('Cube of $i is $cube');
  }
}
