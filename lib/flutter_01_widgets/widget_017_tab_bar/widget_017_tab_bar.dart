import 'package:flutter/material.dart';

/// Flutter code sample for [TabBar].

class TabBarExample extends StatelessWidget {
  const TabBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar Sample'),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.cloud_outlined),
                child: Text('tab 1'),
              ),
              Tab(
                icon: Icon(Icons.beach_access_sharp),
                child: Text('tab 2'),
              ),
              Tab(
                icon: Icon(Icons.brightness_5_sharp),
                child: Text('tab 3'),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(
              child: Text("It's cloudy here"),
            ),
            Center(
              child: Text("It's rainy here"),
            ),
            Center(
              child: Text("It's sunny here"),
            ),
          ],
        ),
      ),
    );
  }
}
