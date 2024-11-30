import 'dart:io';

void main() {
  stdout.write('Enter the start of the range: ');
  int start = int.parse(stdin.readLineSync()!);
  stdout.write('Enter the end of the range: ');
  int end = int.parse(stdin.readLineSync()!);

  for (int i = start; i <= end; i++) {
    if (isPrime(i)) {
      print(i);
    }
  }
}

bool isPrime(int num) {
  if (num < 2) return false;
  for (int i = 2; i <= num ~/ 2; i++) {
    if (num % i == 0) return false;
  }
  return true;
}
 