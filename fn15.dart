import 'dart:io';

List<int> mergeLists(List<int> list1, List<int> list2) {
  return list1 + list2;
}

void main() {
  stdout.write('Enter the first list of integers (comma separated): ');
  String input1 = stdin.readLineSync()!;
  List<int> list1 = input1.split(',').map((e) => int.parse(e.trim())).toList();

  stdout.write('Enter the second list of integers (comma separated): ');
  String input2 = stdin.readLineSync()!;
  List<int> list2 = input2.split(',').map((e) => int.parse(e.trim())).toList();

  List<int> mergedList = mergeLists(list1, list2);
  print('The merged list is: $mergedList');
}
