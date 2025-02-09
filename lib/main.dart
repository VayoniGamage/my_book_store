/*import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyBooksStoreApp());
}

class MyBooksStoreApp extends StatelessWidget {
  const MyBooksStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyBooksStore',
      theme: ThemeData(
        primarySwatch: Colors.blue, // Changed to a MaterialColor
        fontFamily: 'Roboto',
      ),
      home: const HomeScreen(),
    );
  }
}*/

import 'package:flutter/material.dart';
import 'package:my_books_store/screens/home_screen.dart';
// ignore: unused_import



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Library App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}
