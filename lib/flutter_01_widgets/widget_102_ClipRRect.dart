import 'package:flutter/material.dart';

class ClipRRectExample extends StatelessWidget {
  const ClipRRectExample({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              width: screenWidth / 3,
              height: 145,
              decoration: BoxDecoration(
                color: Colors.amberAccent,
                borderRadius: BorderRadius.circular(55),
                border: Border.all(
                  color: Colors.black26,
                  width: 3.0,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(55),
                child: Column(
                  children: [
                    Container(
                      width: screenWidth / 3,
                      height: 139,
                      color: Colors.amberAccent,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              width: screenWidth / 3,
              height: screenHeight * 0.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(55),
                border: Border.all(
                  color: Colors.black26,
                ),
              ),
              child: Column(
                children: [
                  Container(
                    width: screenWidth / 3,
                    height: (screenHeight * 0.2) - 2,
                    color: Colors.amberAccent,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
