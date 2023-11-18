import 'package:flutter/material.dart';
import 'package:flutter_widgets/flutter_04_themes/shared_preferences.dart';

import 'my_home.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static final ValueNotifier<ThemeMode> themeNotifier = ValueNotifier(ThemeMode.light);
  const MyApp({super.key});

   @override
  Widget build(BuildContext context) {
     return ValueListenableBuilder(valueListenable: themeNotifier,
         builder: (_,ThemeMode currentMode, __){
           return MaterialApp(
             title: 'Flutter Demo',
             debugShowCheckedModeBanner: false,
             theme: ThemeData(primarySwatch: Colors.blue, ),
             darkTheme: ThemeData.dark(),
             themeMode: MyTheme.myTheme.getData(),
             home: MyHomePage(),
           );
         },
     );

  }
}





