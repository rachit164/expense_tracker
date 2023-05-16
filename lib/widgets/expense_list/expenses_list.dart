import 'package:expense_tracker/widgets/expense_list/expense_item.dart';
import 'package:flutter/cupertino.dart';

import '../../models/expense.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList({required this.expenses, Key? key}) : super(key: key);
  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: expenses.length,
        itemBuilder: (ctx, index) {
          return Dismissible(
            key: ValueKey(
              expenses[index],
            ),
            onDismissed: ,
            child: ExpenseItem(
              expenses[index],
            ),
          );
        });
  }
}
