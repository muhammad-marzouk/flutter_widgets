import 'package:flutter/material.dart';
import 'flutter_01/widget_011_imag.dart';
import 'flutter_01/widget_013_listview_separated.dart';
import 'flutter_01/widget_014_radio_ListTile.dart';
import 'flutter_01/widget_015_buttom_row_Switch.dart';
import 'flutter_01/widget_016_table.dart';
import 'flutter_01/widget_017_tab_bar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TabBarExample(),
    );
  }
}

