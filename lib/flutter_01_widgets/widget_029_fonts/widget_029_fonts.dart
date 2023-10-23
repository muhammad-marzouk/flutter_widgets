import 'package:flutter/material.dart';

class FontsExample extends StatefulWidget {
  const FontsExample({super.key});

  @override
  State<FontsExample> createState() => _FontsExampleState();
}

class _FontsExampleState extends State<FontsExample> {
  bool isChecked = false;
  bool isChecked2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ListView(
          children: [
            const SizedBox(height: 20.0,),
            CheckboxListTile(
              value: isChecked,
              onChanged: (value){
              setState(() {
                isChecked = value!;
              });
            },
              title: const Text('مصري',style: TextStyle(fontFamily: 'Gulzar')),
              subtitle: const Text('انا اعيش في مصر',style: TextStyle(fontFamily: 'Gulzar')),
            ),
            const SizedBox(height: 20.0,),
            CheckboxListTile(
              value: isChecked2,
              onChanged: (value){
                setState(() {
                  isChecked2 = value!;
                });
              },
              title: const Text('Egyptian',style: TextStyle(fontFamily: 'YoungSerif')),
              subtitle: const Text('Iam live in egypt',style: TextStyle(fontFamily: 'YoungSerif')),
            ),
          ],
        ),
      ),
    );
  }
}
