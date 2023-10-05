import 'package:flutter/material.dart';

enum SingingCharacter { lafayette, jefferson }

class RadioAndListTitleExample extends StatefulWidget {
  const RadioAndListTitleExample({super.key});

  @override
  State<RadioAndListTitleExample> createState() => _RadioAndListTitleExampleState();
}

class _RadioAndListTitleExampleState extends State<RadioAndListTitleExample> {


  SingingCharacter? _character = SingingCharacter.lafayette;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          ListTile(
            title: const Text('Lafayette'),
            leading: Radio<SingingCharacter>(
              value: SingingCharacter.lafayette,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value;
                });
              },
            ),

          ),
          ListTile(
            title: const Text('Thomas Jefferson'),
            leading: Radio<SingingCharacter>(
              value: SingingCharacter.jefferson,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Radio<SingingCharacter>(
                value: SingingCharacter.lafayette,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
              Text('Radio 1',style: TextStyle(fontSize: 20.0,color: Colors.black),),
            ],
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Radio<SingingCharacter>(
                value: SingingCharacter.lafayette,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
              Text('Radio 2',style: TextStyle(fontSize: 20.0,color: Colors.black),),
            ],
          ),
        ],
      ),
    );
  }
}







