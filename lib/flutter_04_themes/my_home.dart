import 'package:flutter/material.dart';
import 'package:flutter_widgets/flutter_04_themes/second_page.dart';
import 'package:flutter_widgets/flutter_04_themes/shared_preferences.dart';
import 'main.dart';

class MyHomePage extends StatelessWidget {

  ThemeMode lightMode = ThemeMode.light;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: (){
                if(MyApp.themeNotifier.value == ThemeMode.light) {
                  MyApp.themeNotifier.value = ThemeMode.dark;
                  MyTheme.myTheme.saveData('ThemeMode.dark');
                }else{
                  MyApp.themeNotifier.value = ThemeMode.light;
                  MyTheme.myTheme.saveData('ThemeMode.light');
                }
              },
              icon: Icon(MyApp.themeNotifier.value == ThemeMode.light
                  ?Icons.dark_mode
                  :Icons.light_mode )
          )
        ],
        title: const Text('themes'),
      ),
      body: Center(
        child: Column(
          children: [
            const  SizedBox(height: 30.0,),
            const Text('Muhammed Essa'),
            const  SizedBox(height: 30.0,),
            ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const SecondPage()));
              },
              child: const Text('Muhammed Essa'),
            )
          ],
        ),
      ),
    );
  }
}
