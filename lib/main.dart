import 'package:app/views/newOrder.dart';
import 'package:flutter/material.dart';
import 'package:app/views/home.dart';
import 'package:app/views/chose.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/home': (context) => HomePage(),
        '/add': (context) => NewOrder(),
        '/chose': (context) => ChoosePage(),
      },
        title: 'Registro del bar',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: HomePage(),
    );
  }
}