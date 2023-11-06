import 'package:flutter/material.dart';
import 'package:flutter_widgets/flutter_03_routing/route_1/second_screen.dart';

import 'compnents/my_componets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController name = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController phone = TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextFormField(
                controller: name,
                maxLines: 1,
                cursorColor: Colors.white54,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
                decoration: InputDecoration(
                  fillColor: Colors.green,
                  filled: true,
                  labelText: 'Name',
                  hintText: 'Enter User Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide.none,
                  ),
                  hintStyle: const TextStyle(
                    fontSize: 30.0,
                    color: Colors.black,
                  ),
                  labelStyle: const TextStyle(
                    fontSize: 30.0,
                    color: Colors.black,
                  ),
                ),
              ),
              TextFormField(
                controller: email,
                maxLines: 1,
                cursorColor: Colors.white54,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
                decoration: InputDecoration(
                  fillColor: Colors.green,
                  filled: true,
                  labelText: 'Email',
                  hintText: 'Enter User Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide.none,
                  ),
                  hintStyle: const TextStyle(
                    fontSize: 30.0,
                    color: Colors.black,
                  ),
                  labelStyle: const TextStyle(
                    fontSize: 30.0,
                    color: Colors.black,
                  ),
                ),
              ),
              HomeTextField(
                  controller: phone,
                  labelName: 'phone',
                  hintText: 'Enter your phone'),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 12),
                  // backgroundColor:Colors.transparent,
                    ),
                onPressed: () {
                  if (!(name.text == null || name.text.trim().isEmpty)){
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> SecondScreen( name: name.text.trim(),email: email.text.trim(),phone: phone.text.trim()),),);
                  }

                },
                child: const Text('Click me',),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
