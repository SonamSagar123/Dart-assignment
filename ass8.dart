import 'dart:io';

void main() {
  stdout.write("Enter the basic salary of the employee: ");
  double basicSalary = double.parse(stdin.readLineSync()!);

  double hra, da;

  if (basicSalary <= 10000) {
    hra = basicSalary * 0.2;
    da = basicSalary * 0.8;
  } else if (basicSalary <= 20000) {
    hra = basicSalary * 0.25;
    da = basicSalary * 0.9;
  } else {
    hra = basicSalary * 0.3;
    da = basicSalary * 0.95;
  }

  double grossSalary = basicSalary + hra + da;
  print("Gross Salary: ${grossSalary.toStringAsFixed(2)}");
}
