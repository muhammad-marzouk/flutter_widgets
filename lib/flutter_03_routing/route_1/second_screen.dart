import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  String? name;
  String? email;
  String? phone;
  SecondScreen({required this.email,required this.phone,required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // simple way to remove the back button in the AppBar
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center,children: [const Text('name : '),Text(name?? "null")]),
          Row(mainAxisAlignment: MainAxisAlignment.center,children: [const Text('Email : '),Text(email ?? "null")]),
          Row(mainAxisAlignment: MainAxisAlignment.center,children: [const Text('Phone : '),Text(phone ?? "null")]),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              textStyle: const TextStyle(fontSize: 12),
              // backgroundColor:Colors.transparent,
            ),
            onPressed: () {
                Navigator.pop(context);
            },
            child: const Text('Click me',),
          ),
        ],
      ),
    );
  }
}