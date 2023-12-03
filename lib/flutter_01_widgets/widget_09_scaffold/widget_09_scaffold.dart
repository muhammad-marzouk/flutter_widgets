import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/1.png'),
                    fit: BoxFit.cover),
              ),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Theme(
                    data: Theme.of(context)
                        .copyWith(canvasColor: Colors.transparent),
                    child: BottomNavigationBar(
                      currentIndex: 0,
                      items: [
                        BottomNavigationBarItem(
                          icon: Icon(Icons.home),
                          label: 'Home',
                          // backgroundColor: Colors.white,
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(Icons.business),
                          label: 'Business',
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(Icons.school),
                          label: 'School',
                        ),
                      ],
                    ))),
          ],
        ),
      ),
    );
  }
}
