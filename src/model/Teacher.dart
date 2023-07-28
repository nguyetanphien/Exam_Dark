import 'dart:io';

import 'Person.dart';

class Teacher extends Person {
  late double salary;
  late int numberWorkDay;

  Teacher();

  Teacher.c(this.salary, this.numberWorkDay);

  @override
  void input() {
    print('Enter teacherId : ');
    id = int.parse(stdin.readLineSync() ?? "0");
    print('Enter teacherName: ');
    name = stdin.readLineSync() ?? "";
    print('Enter numberPhone: ');
    phone = stdin.readLineSync() ?? "";
    print('Enter address: ');
    address = stdin.readLineSync() ?? "";
    print('Enter salary: ');
    salary = double.parse(stdin.readLineSync() ?? "0");
    print('Enter numberWorkDay: ');
    numberWorkDay = int.parse(stdin.readLineSync() ?? "0");
  }

  @override
  void output() {
    print('teacherId: $id');
    print('teacherName: $name');
    print('numberPhone: $phone');
    print('address: $address');
    print('salary: $salary');
    print('numberWorkDay: $numberWorkDay');
    print('Salary: ' + getSalary().toString());
  }

  double getSalary() {
    return numberWorkDay * 800000;
  }
}
