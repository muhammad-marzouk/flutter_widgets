
import 'package:flutter/material.dart';

class TextExample extends StatefulWidget {
  const TextExample({super.key});

  @override
  State<TextExample> createState() => _TextExampleState();
}

class _TextExampleState extends State<TextExample> {

  int _index = 0;
  final List _listOfString =[
    '0',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300.0,
              height: 300.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.blue,
              ),

              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  _listOfString[_index%_listOfString.length],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: (){
                  setState(() {
                    _index += 1;
                  });
                },
                child: Text('Next Text'))
          ],
        ),
      ),
    );
  }
}
