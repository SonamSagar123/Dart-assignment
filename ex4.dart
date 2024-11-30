import 'dart:io';

void main() {
  stdout.write("Enter a number: ");
  int number = int.parse(stdin.readLineSync()!);

  int count = 0;
  
  while (number != 0) {
    number ~/= 10; // Remove the last digit
    count++;
  }
  
  print("Total number of digits: $count");
}
