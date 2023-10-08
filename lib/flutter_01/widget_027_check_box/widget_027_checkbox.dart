import 'package:flutter/material.dart';

class CheckboxExample extends StatefulWidget {
  const CheckboxExample({super.key});

  @override
  State<CheckboxExample> createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<CheckboxExample> {
  bool isChecked = false;
  bool isChecked2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Checkbox(
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value!;
                });
              },
            ),
            SizedBox(height: 20.0,),
            CheckboxListTile(
              value: isChecked2,
              onChanged: (value){
              setState(() {
                isChecked2 = value!;
              });
            },
              title: Text('اي كلام هنا بقى'),
              subtitle: Text('شرح مفصل لاي كلام هنا بقى'),
            ),
          ],
        ),
      ),
    );
  }
}
