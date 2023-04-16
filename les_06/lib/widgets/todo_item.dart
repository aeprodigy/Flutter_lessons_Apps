import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:les_06/model/todo.dart';
import 'package:les_06/widgets/todo_item.dart';

class Todoitem extends StatelessWidget {
  final ToDo todo;
  const Todoitem({super.key, required this.todo});
  
  

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Colors.white,
        leading: Icon(
        todo.isDone !=null?  Icons.check_box : Icons.check_box_outline_blank,
          color: Colors.greenAccent,
        ),
        title: Text(
         todo.todoText!,
          style: TextStyle(
            fontSize: 16,
            color: Colors.greenAccent,
            decoration: todo.isDone != null?TextDecoration.lineThrough:null,
          ),
        ),
        trailing: Container(
          padding: EdgeInsets.all(0),
          //margin: EdgeInsets.symmetric(vertical: 15),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            color: Colors.white,
            iconSize: 18,
            onPressed: () {},
            icon: Icon(Icons.delete),
          ),
        ),
        //the todo list view and stile
      ),
    );
  }
}
