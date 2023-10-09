import 'package:flutter/material.dart';

import 'flutter_01/widget_023_024_text_fild/widget_023_024_text_fild.dart';
import 'flutter_01/widget_028_drawer_bottomnav/widget_028_drawer_BottomNavigation.dart';
import 'flutter_01/widget_028_drawer_bottomnav/widget_028_drawer_BottomNavigation2.dart';
import 'flutter_01/widget_028_drawer_bottomnav/widget_028_drawer_BottomNavigation3.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DrawerExample(),
    );
  }
}

