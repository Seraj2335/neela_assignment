import 'package:flutter/material.dart';
import 'package:neela_assignment/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Neela Assignment',
        home: HomeScreen());
  }
}
