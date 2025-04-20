import 'package:flutter/material.dart';
import 'package:expense_tracker/expensesApp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ExpensesApp(),
    );
  }
}
