import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expenses_list.dart';

class ExpensesApp extends StatefulWidget {
  const ExpensesApp({super.key});

  @override
  State<ExpensesApp> createState() {
    return _ExpensesAppState();
  }
}

class _ExpensesAppState extends State<ExpensesApp> {
  final _registeredExpensesList = [
    Expense(
        amount: 5,
        date: DateTime.now(),
        title: 'Burger',
        category: Category.food),
    Expense(
        amount: 15.45,
        date: DateTime.now(),
        title: 'Taxi',
        category: Category.travel),
    Expense(
        amount: 10.38,
        date: DateTime.now(),
        title: 'Movie',
        category: Category.leisure),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Expenses Chart'),
          Expanded(child: ExpensesList(expensesList: _registeredExpensesList)),
        ],
      ),
    );
  }
}
