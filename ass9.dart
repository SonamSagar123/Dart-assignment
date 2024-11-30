import 'dart:io';

void main() {
  stdout.write("Enter the month number (1-12): ");
  int month = int.parse(stdin.readLineSync()!);

  switch (month) {
    case 1:
    case 3:
    case 5:
    case 7:
    case 8:
    case 10:
    case 12:
      print("31 days");
      break;
    case 4:
    case 6:
    case 9:
    case 11:
      print("30 days");
      break;
    case 2:
      print("28 or 29 days");
      break;
    default:
      print("Invalid month number");
  }
}
