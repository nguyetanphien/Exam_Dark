import 'dart:io';

import 'util/MainFu.dart';

void main() {
  MainFu f = MainFu();
  while (true) {
    f.menu();
    int chosse;
    chosse = int.parse(stdin.readLineSync() ?? "0");
    switch (chosse) {
      case 1:
        f.inputTeacher();
        break;
      case 2:
        f.inputSudent();
        break;

      case 3:
        f.ouputStudent();
        break;
      case 4:
        f.ouputTeacher();
        break;
      case 5:
        f.filter();
        break;
      case 6:
        f.sortNameStudent();
        break;
      case 7:
        f.sortNameTeacher();
        break;
      case 8:
        f.sumSalary();
        break;
      case 9:
        exit(0);
    }
  }
}
