import 'dart:io';

String longerString(String str1, String str2) {
  if (str1.length > str2.length) {
    return str1;
  } else {
    return str2;
  }
}

void main() {
  stdout.write('Enter first string: ');
  String string1 = stdin.readLineSync()!;

  stdout.write('Enter second string: ');
  String string2 = stdin.readLineSync()!;

  String result = longerString(string1, string2);
  print('The longer string is: "$result"');
}
