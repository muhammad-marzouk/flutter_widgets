
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class MyTheme {
  static MyTheme myTheme = MyTheme();

  Future<ThemeData> myDefault() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('name',ThemeMode.light as String);
    return ThemeData();
  }
  void saveData(String name) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('name',name);
  }

  Future<ThemeData> getData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
     prefs.getString('name') ?? 'ThemeMode.light';
    return ThemeData.dark();
  }
}
