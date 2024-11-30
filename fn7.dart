import 'dart:io';

String reverseString(String str) {
  return str.split('').reversed.join('');
}

void main() {
  stdout.write('Enter a string: ');
  String inputString = stdin.readLineSync()!;

  String reversedString = reverseString(inputString);
  print('Reversed string: $reversedString');
}
