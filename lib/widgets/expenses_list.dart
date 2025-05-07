import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expense_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expensesList,
    required this.onDeleteExpense,
  });

  final List<Expense> expensesList;

  final void Function(Expense) onDeleteExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expensesList.length,
      itemBuilder: (context, index) => Dismissible(
        background: Container(
          padding: EdgeInsets.only(left: 12),
          color: Colors.red,
          alignment: Alignment.centerLeft,
          child: Icon(
            Icons.delete,
            color: Colors.white,
            size: 25,
          ),
        ),
        key: ValueKey(expensesList[index]),
        child: ExpenseItem(expensesList[index]),
        onDismissed: (direction) {
          onDeleteExpense(expensesList[index]);
        },
        // confirmDismiss: (direction) {
        //   return showDialog(
        //     context: context,
        //     builder: (ctx) => AlertDialog(
        //       actions: [
        //         TextButton(
        //           onPressed: () {
        //             Navigator.pop(context, false);
        //           },
        //           child: Text('No'),
        //         ),
        //         TextButton(
        //           onPressed: () {
        //             Navigator.pop(context, true);
        //           },
        //           child: Text('Yes'),
        //         )
        //       ],
        //       title: Text('Delete Expense'),
        //       content: Text('Are you sure you want to delete this expense?'),
        //     ),
        //   );
        // },
      ),
    );
  }
}
