import 'package:flutter/material.dart';
import 'package:flutter_widgets/flutter_03_routing/route_1/home_screen.dart';

void main(){
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
