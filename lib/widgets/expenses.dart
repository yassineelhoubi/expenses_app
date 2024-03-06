import 'package:expenses_app/models/expense.dart';
import 'package:expenses_app/widgets/expenses_list/expenses_list.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registredExpenses = [
    Expense(
      title: "Flutter Course",
      amount: 15.32,
      category: Category.work,
      date: DateTime.now(),
    ),
    Expense(
      title: "Cinema",
      amount: 11,
      category: Category.leisure,
      date: DateTime.now(),
    ),
    Expense(
      title: "Travel",
      amount: 30.62,
      category: Category.travel,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('the chart'),
          Expanded(
            child: ExpensesList(
              expenses: _registredExpenses,
            ),
          )
        ],
      ),
    );
  }
}
