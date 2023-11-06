import 'package:flutter/material.dart';

import 'second_page.dart';


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
             themeMode: currentMode,
             home: MyHomePage(),
           );
         });

  }
}


class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      actions: [
        IconButton(
            onPressed: (){
                      MyApp.themeNotifier.value =
                      MyApp.themeNotifier.value == ThemeMode.light
                      ? ThemeMode.dark
                      : ThemeMode.light;
                       },
            icon: Icon(MyApp.themeNotifier.value == ThemeMode.light
            ?Icons.dark_mode
            :Icons.light_mode )
            )
      ],
        title: Text('themes'),
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



