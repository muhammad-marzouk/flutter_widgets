import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Clean Code',
        home: AnimatedSplashScreen(
            duration: 3000,
            // splash: Icons.home,
            splash: Image.asset("assets/images/hongkong.jpg",fit: BoxFit.fill),
            nextScreen: MainScreen(),
            pageTransitionType: PageTransitionType.bottomToTop,
            splashTransition: SplashTransition.decoratedBoxTransition,
            backgroundColor: Colors.blue),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('hme'),
      ),
    );
  }
}