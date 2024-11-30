import 'dart:io';

String replaceSpacesWithUnderscore(String str) {
  return str.replaceAll(' ', '_');
}

void main() {
  stdout.write('Enter a string: ');
  String inputString = stdin.readLineSync()!;

  String result = replaceSpacesWithUnderscore(inputString);
  print('Modified string: $result');
}
