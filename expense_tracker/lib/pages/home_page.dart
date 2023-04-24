import 'package:expense_tracker/components/expense_summary.dart';
import 'package:expense_tracker/components/expense_tile.dart';
import 'package:expense_tracker/data/expense_data.dart';
import 'package:expense_tracker/models/expense_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //controllers for the textfields
  final newExpenseNameController = TextEditingController();
  final newExpenseAmountController = TextEditingController();

  //addNew expense method
  void addNewExpense() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text('Add new expense'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  //name of the expense in the TextField().
                  TextField(
                    controller: newExpenseNameController,
                    decoration: InputDecoration(
                      hintText: "Expense Name"
                    ) ,
                  ),
                  //name of the expense amount in the TextField().
                  TextField(
                    controller: newExpenseAmountController,
                    coration:const InputDecoration(
                      hintText: "Kwacha"
                    ) 
                  ),
                ],
              ),
              actions: [
                //buttons
                //save button
                MaterialButton(
                  onPressed: save,
                  child: Text("Save"),
                ),
                //cancel button
                MaterialButton(
                  onPressed: cancel,
                  child: Text("Cancel"),
                )
              ],
            ));
  }

  //save and cancel methods
  void save() {
    //create expense item
    ExpenseItem newExpense = ExpenseItem(
      name: newExpenseNameController.text,
      amount: newExpenseAmountController.text,
      dateTime: DateTime.now(),
    );
    //add the new expense
    Provider.of<ExpenseData>(context, listen: false).addNewExpense(newExpense);
    Navigator.pop(context);
    clear();
  }

  void cancel() {
    Navigator.pop(context);
    clear();
  }

  void clear() {
    newExpenseAmountController.clear();
    newExpenseNameController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ExpenseData>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: Colors.grey[200],
        floatingActionButton: FloatingActionButton(
          onPressed: addNewExpense,
          child: const Icon(
            Icons.add,
          ),
        ),
        body: ListView(
          children: [
          //weekly summary
          ExpenseSummary(startOfWeek: value.startOfWeekDate()),
         const SizedBox(
            height: 20,
          ),
          //expense list
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: value.getAllExpenses().length,
            itemBuilder: (context, index) => ExpenseTile(
              name: value.getAllExpenses()[index].name,
              amount: value.getAllExpenses()[index].amount,
              dateTime: value.getAllExpenses()[index].dateTime,
            ),
          ),
          ]
        ),
      ),
    );
  }
}
