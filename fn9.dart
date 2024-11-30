
import 'dart:io';

int countWords(String sentence) {
  List<String> words = sentence.trim().split(RegExp(r'\s+'));
  return words.isEmpty ? 0 : words.length;
}

void main() {
  stdout.write('Enter a sentence: ');
  String sentence = stdin.readLineSync()!;

  int wordCount = countWords(sentence);
  print('The number of words in the sentence is: $wordCount');
}
