import 'dart:io';

// Class to represent a student
class Student {
  int id;
  String name;
  int age;
  String course;

  Student(this.id, this.name, this.age, this.course);
}

// Student Management System
class StudentManagementSystem {
  List<Student> students = [];

  // Add a student to the system
  void addStudent() {
    stdout.write('Enter student ID: ');
    int id = int.parse(stdin.readLineSync()!);

    stdout.write('Enter student name: ');
    String name = stdin.readLineSync()!;

    stdout.write('Enter student age: ');
    int age = int.parse(stdin.readLineSync()!);

    stdout.write('Enter student course: ');
    String course = stdin.readLineSync()!;

    students.add(Student(id, name, age, course));
    print('Student added successfully!');
  }

  // View all students
  void viewStudents() {
    if (students.isEmpty) {
      print('No students available.');
    } else {
      print('List of Students:');
      for (var student in students) {
        print('ID: ${student.id}, Name: ${student.name}, Age: ${student.age}, Course: ${student.course}');
      }
    }
  }

  // Search for a student by ID
  void searchStudent() {
    stdout.write('Enter student ID to search: ');
    int id = int.parse(stdin.readLineSync()!);

    var student = students.firstWhere(
      (s) => s.id == id, 
      orElse: () => Student(0, 'Not Found', 0, 'N/A')
    );

    if (student.id == 0) {
      print('Student not found.');
    } else {
      print('Student Found: ID: ${student.id}, Name: ${student.name}, Age: ${student.age}, Course: ${student.course}');
    }
  }

  // Delete a student by ID
  void deleteStudent() {
    stdout.write('Enter student ID to delete: ');
    int id = int.parse(stdin.readLineSync()!);

    var studentIndex = students.indexWhere((s) => s.id == id);

    if (studentIndex != -1) {
      students.removeAt(studentIndex);
      print('Student with ID $id has been deleted.');
    } else {
      print('Student not found.');
    }
  }
}

void main() {
  StudentManagementSystem system = StudentManagementSystem();
  bool isRunning = true;

  while (isRunning) {
    print('\nStudent Management System');
    print('1. Add Student');
    print('2. View All Students');
    print('3. Search Student by ID');
    print('4. Delete Student by ID');
    print('5. Exit');
    stdout.write('Choose an option: ');

    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        system.addStudent();
        break;
      case 2:
        system.viewStudents();
        break;
      case 3:
        system.searchStudent();
        break;
      case 4:
        system.deleteStudent();
        break;
      case 5:
        isRunning = false;
        print('Exiting the program.');
        break;
      default:
        print('Invalid choice. Please try again.');
    }
  }
}
