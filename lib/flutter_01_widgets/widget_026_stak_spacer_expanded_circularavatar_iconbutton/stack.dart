
import 'package:flutter/material.dart';

class StackAndMore extends StatelessWidget {
  const StackAndMore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Icon(Icons.icecream_outlined),
            Spacer(flex: 2,),
            Stack(
              children: [
                Container(
                  width: 250,
                  height: 100,
                  color: Colors.blue,
                ),
                Container(
                  width: 200,
                  height: 70,
                  color: Colors.black,
                ),
                Container(
                  width: 150,
                  height: 50,
                  color: Colors.orange,
                ),
              ],
            ),
            Spacer(flex: 4,),
            Icon(Icons.icecream_outlined),
          ],
        ),
      ),
    );
  }
}
