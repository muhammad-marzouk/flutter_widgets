import 'package:flutter/material.dart';
import 'package:flutter_widgets/flutter_01/widget_01_material_banner.dart';
import 'package:flutter_widgets/flutter_01/widget_02_material_banner.dart';
import 'package:flutter_widgets/flutter_01/widget_04_banner_.dart';
import 'package:flutter_widgets/flutter_01/widget_05_snack_bar.dart';
import 'package:flutter_widgets/flutter_01/widget_06_snack_bar.dart';
import 'package:flutter_widgets/flutter_01/widget_100_Slidable.dart';

import 'flutter_01/widget_03_material_banner_stateless.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return const SlidableBar();
  }
}
