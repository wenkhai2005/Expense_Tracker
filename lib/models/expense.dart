import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

final uuid = Uuid();
enum Category { food, leisure, travel, work }

const categoryIcon = {
  Category.food: Icons.lunch_dining,
  Category.leisure: Icons.local_movies_sharp,
  Category.travel: Icons.flight_takeoff,
  Category.work: Icons.work,
};

class Expense {
  Expense({required this.title, required this.amount, required this.date, required this.category}) : id = uuid.v4();
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  String get formatedDate {
    return formatter.format(date);
  }

}
