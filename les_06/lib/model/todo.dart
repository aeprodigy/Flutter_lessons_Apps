import 'package:flutter/material.dart';

class ToDo {
  String? id;
  String? todoText;
  bool? isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(id: "01", todoText: "Morning Affirmations", isDone: true),
      ToDo(id: "02", todoText: "Buy Clothes", isDone: true),
      ToDo(id: "03", todoText: "CHeck Mail", ),
      ToDo(id: "04", todoText: "StandUp meeting",),
      ToDo(id: "05", todoText: "Spend time working on your Career.",),
      ToDo(id: "06", todoText: "Push to Github", ),
    ];
  }
}
