import 'dart:io';

bool isPalindrome(String str) {
  String reversed = str.split('').reversed.join('');
  return str == reversed;
}

void main() {
  stdout.write('Enter a string: ');
  String inputString = stdin.readLineSync()!;

  if (isPalindrome(inputString)) {
    print('The string is a palindrome.');
  } else {
    print('The string is not a palindrome.');
  }
}
