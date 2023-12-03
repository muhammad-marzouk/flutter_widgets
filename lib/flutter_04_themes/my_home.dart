import 'package:flutter/material.dart';
import 'package:flutter_widgets/flutter_04_themes/second_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'main.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

@override
class _MyHomePageState extends State<MyHomePage> {

  bool isLight = true;

  void _saveData(bool val)async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      prefs.setBool('is_dark', false);
    });
  }

  void _getData()async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isLight =  prefs.getBool('is_dark') ?? true;
    });
  }

  ThemeMode lightMode = ThemeMode.light;

  @override
  void initState(){
    super.initState();
    _getData();
    print('initState => $isLight');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: (){
                if(isLight) {
                  MyApp.themeNotifier.value = ThemeMode.dark;
                  isLight = false;
                  _saveData(isLight);
                  print('if $isLight');
                }else{
                  MyApp.themeNotifier.value = ThemeMode.light;
                  isLight = true;
                  _saveData(isLight);
                  print("else $isLight");
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
