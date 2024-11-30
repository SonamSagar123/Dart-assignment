import 'dart:io';

void main() {
  stdout.write("Enter a character: ");
  String char = stdin.readLineSync()!.toLowerCase();

  switch (char) {
    case 'a':
    case 'e':
    case 'i':
    case 'o':
    case 'u':
      print("$char is a vowel.");
      break;
    default:
      if (char.length == 1 && char.contains(RegExp(r'[a-z]'))) {
        print("$char is a consonant.");
      } else {
        print("Invalid input. Please enter a single alphabetic character.");
      }
  }
}
