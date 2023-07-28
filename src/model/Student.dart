import 'dart:io';

import 'Person.dart';

class Student extends Person {
  late String batch;
  late double mark1;
  late double mark2;

  Student();

  // Student.c(super.id, super.name, super.phone, super.address);

  @override
  void input() {
    print('Enter studentID: ');
    id = int.parse(stdin.readLineSync() ?? "0");
    print('Enter studentName: ');
    name = stdin.readLineSync() ?? "";
    print('Enter numberPhone: ');
    phone = stdin.readLineSync() ?? "";
    print('Enter address: ');
    address = stdin.readLineSync() ?? "";
    print('Enter batch: ');
    batch = stdin.readLineSync() ?? "";
    print('Enter mark1: ');
    mark1 = double.parse(stdin.readLineSync() ?? "0");
    print('Enter mark2: ');
    mark2 = double.parse(stdin.readLineSync() ?? "0");
  }

  @override
  void output() {
    print('studentID: $id');
    print('studentName: $name');
    print('numberPhone: $phone');
    print('address: $address');
    print('batch: $batch');
    print('mark1: $mark1');
    print('mark2: $mark2');
    print('avgMark' + avgMark().toString());
  }

  double avgMark() {
    return (mark1 + mark2) / 2;
  }
}
