import 'package:flutter/material.dart';

class TextFieldExample extends StatefulWidget {
  const TextFieldExample({super.key});

  @override
  State<TextFieldExample> createState() => _TextFieldExampleState();
}

TextEditingController _textNameController = TextEditingController();

class _TextFieldExampleState extends State<TextFieldExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Field'),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                maxLines: 1,
                cursorColor: Colors.white54,
                style: const TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  fillColor: Colors.green,
                  filled: true,
                  labelText: 'Name',
                  hintText: 'Enter User Name',
                  // label: const Text('User Name'),
                  prefixIcon: const Icon(Icons.person, color: Colors.white),
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
                controller: _textNameController,
              ),
              TextField(
                controller: _textNameController,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
