import 'dart:io';

abstract class Person {
  late int id;
  late String name;
  late String phone;
  late String address;

  Person();

  Person.c(this.id, this.name, this.phone, this.address);

  void input();

  void output();
}
