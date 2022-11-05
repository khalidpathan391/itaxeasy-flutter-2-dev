import 'package:flutter/material.dart';
import 'home_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Income Tax Calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue.shade900,
      ),
      home: const Home(title: 'Income Tax Calculator'),
    );
  }
}
