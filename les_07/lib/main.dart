import 'package:flutter/material.dart';
import 'package:les_07/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Confetti App',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home:HomePage(),
    );
  }
}
