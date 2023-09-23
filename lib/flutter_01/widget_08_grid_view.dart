import 'package:flutter/material.dart';

class GridViewExample extends StatelessWidget {
  const GridViewExample({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Grid View')),
      body: Center(
        child: GridView.count(
          primary: false,
          padding: EdgeInsets.all(10),
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          crossAxisCount:3 ,
          children: [
            Container(
              alignment: Alignment.center,
              child: Text('muhammad'),
              color: Colors.grey,
            ),
            Container(
              child: Text('muhammad',textAlign: TextAlign.center),
              color: Colors.lightBlue,
            ),
            Container(
              child: Text('muhammad'),
              color: Colors.greenAccent,
            ),
            Container(
              child: Text('muhammad'),
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}

