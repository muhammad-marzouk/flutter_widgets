import 'package:flutter/material.dart';

import 'flutter_01/widget_028_drawer_bottomnav/widget_028_drawer_BottomNavigation.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DrawerExample(),
    );
  }
}

