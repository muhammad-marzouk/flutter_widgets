import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/came.webp'),
            fit: BoxFit.fill,
            opacity: 0.7,
          ),
        ),
        child: Center(child: Text('muhammad',style: TextStyle(color: Colors.white),)),
      ),
    );
  }
}