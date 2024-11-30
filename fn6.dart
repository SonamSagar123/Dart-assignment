import 'dart:io';

int countVowels(String str) {
  int count = 0;
  for (int i = 0; i < str.length; i++) {
    if ('aeiouAEIOU'.contains(str[i])) {
      count++;
    }
  }
  return count;
}

void main() {
  stdout.write('Enter a string: ');
  String inputString = stdin.readLineSync()!;

  int vowelCount = countVowels(inputString);
  print('The number of vowels in the string is: $vowelCount');
}
