import 'package:flutter/material.dart';
import 'flutter_01/widget_030_carousel/on_boarding_screen.dart';
import 'flutter_01/widget_031_Dialog_async_future/alter_dialog.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AlterDialogExample(),
    );
  }
}

