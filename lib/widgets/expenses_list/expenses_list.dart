import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList(
      {super.key, required this.expenses, required this.onRemoveExpense});

  final void Function(Expense expense) onRemoveExpense;
  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) => Dismissible(
        key: ValueKey(expenses[index]),
        background: Container(
          color: Theme.of(context).colorScheme.error.withOpacity(0.75),
          margin: EdgeInsets.symmetric(horizontal: 16),
          child: Center(
            child: Text("Deleted", style: Theme.of(context).textTheme.titleLarge,),
          ),
        ),
        onDismissed: (dicrection) => onRemoveExpense(expenses[index]),
        child: ExpenseItem(
          expenses[index],
        ),
      ),
    );
  }
}
