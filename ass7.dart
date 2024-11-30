import 'dart:io';

void main() {
  print('Enter marks for Physics:');
  int physics = int.parse(stdin.readLineSync()!);

  print('Enter marks for Chemistry:');
  int chemistry = int.parse(stdin.readLineSync()!);

  print('Enter marks for Biology:');
  int biology = int.parse(stdin.readLineSync()!);

  print('Enter marks for Mathematics:');
  int mathematics = int.parse(stdin.readLineSync()!);

  print('Enter marks for Computer:');
  int computer = int.parse(stdin.readLineSync()!);

  // Calculate total marks and percentage
  int totalMarks = physics + chemistry + biology + mathematics + computer;
  double percentage = (totalMarks / 500) * 100;

  // Determine grade based on percentage
  String grade;
  if (percentage >= 90) {
    grade = 'A';
  } else if (percentage >= 80) {
    grade = 'B';
  } else if (percentage >= 70) {
    grade = 'C';
  } else if (percentage >= 60) {
    grade = 'D';
  } else {
    grade = 'F';
  }

  // Output the result
  print('Total Marks: $totalMarks/500');
  print('Percentage: ${percentage.toStringAsFixed(2)}%');
  print('Grade: $grade');
}
