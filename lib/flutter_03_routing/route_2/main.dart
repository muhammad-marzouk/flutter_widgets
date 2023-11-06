import 'package:flutter/material.dart';
import 'second_page.dart';
import 'Home.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        "first_Screen": (context) => const MyHomePage(title: 'Flutter Demo Home Page'),
        "second_Screen": (context) => const SecondPage(name: '', email: '', phone: ''),
      },
    );
  }
}
