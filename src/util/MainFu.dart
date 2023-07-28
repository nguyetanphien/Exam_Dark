import 'dart:io';

import '../model/Person.dart';

import '../model/Student.dart';
import '../model/Teacher.dart';

class MainFu {
  List<Person> list = [];

  void inputTeacher() {
    Teacher t = Teacher();
    t.input();
    list.add(t);
  }

  void inputSudent() {
    Student s = Student();
    s.input();
    list.add(s);
  }

  void ouputTeacher() {
    print('--------------Teacher-------------------');
    for (Person p in list) if (p is Teacher) p.output();
  }

  void ouputStudent() {
    print('--------------Student-------------------');
    for (Person p in list)
      if (p is Student) {
        p.output();
        print('----');
      }
  }

  void filter() {
    String filter;
    print('Enter name or id:');
    filter = stdin.readLineSync() ?? "";

    List<Person> filteredPersons = list
        .where((person) =>
            person.name.toLowerCase().contains(filter.toLowerCase()) ||
            person.id.toString().contains(filter))
        .toList();

    if (filteredPersons.isEmpty) {
      print("Không tìm thấy kết quả phù hợp.");
    } else {
      for (var person in filteredPersons) {
        print('ID: ' + person.id.toString());
        print('Name: ' + person.name);
        print('Phone: ' + person.phone);
        print('address: ' + person.address);
      }
    }
  }

  void sortNameStudent() {
    for (Person p in list) {
      if (p is Student)
        list.sort((a, b) {
          return a.name.toLowerCase().compareTo(b.name.toLowerCase());
        });
    }
    ouputStudent();
  }

  void sortNameTeacher() {
    for (Person p in list) {
      if (p is Teacher)
        list.sort((a, b) {
          return a.name.toLowerCase().compareTo(b.name.toLowerCase());
        });
    }
    ouputTeacher();
  }

  void sumSalary() {
    for (Person p in list) {
      if (p is Teacher) {
        String name = p.name;
        double salary = p.getSalary();
        print('Name----------Salary------');
        print('$name-------------$salary');
      }
    }
  }

  void menu() {
    print('');
    print('1.input Teacher');
    print('2.input Student');
    print('3.ouput Student');
    print('4.ouput Teacher');
    print('5.Filer Name or id in list');
    print('6 sort name student');
    print('7 sort name teacher');
    print('8 Sum salary');
    print('9. exit');
  }
}
