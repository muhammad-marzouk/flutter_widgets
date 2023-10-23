import 'package:flutter/material.dart';
import 'flutter_02_http/on_line/on_line_mode.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OfLineMode(),
    );
  }
}

