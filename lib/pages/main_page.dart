import 'package:flutter/material.dart';
import 'package:tobetoapp/models/expense.dart';
import 'package:tobetoapp/pages/expense_list.dart';
import 'package:tobetoapp/widgets/new_expense.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<Expense> expenses = [
    Expense(
        name: "Yiyecek",
        price: 200.524,
        date: DateTime.now(),
        category: Category.food),
    Expense(
        name: "Flutter Udemy Course",
        price: 200,
        date: DateTime.now(),
        category: Category.education),
  ];

  void addExpense(Expense expense) {
    setState(() {
      expenses.add(expense);
    });
  }

  void removeExpense(Expense expense) {
    setState(() {
      expenses.remove(expense);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text("Expense App"),
        actions: [
          IconButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (ctx) => NewExpense(
                          onAdd: (expense) => addExpense(expense),
                        ));
              },
              icon: const Icon(Icons.add)),
        ],
      ),
      body: ExpenseList(expenses, removeExpense),
    );
  }
}