import 'package:flutter/material.dart';

class DrawerExample extends StatefulWidget {
  const DrawerExample({super.key});

  @override
  State<DrawerExample> createState() => _DrawerExampleState();
}

class _DrawerExampleState extends State<DrawerExample> {
  List screenIndex = [
    'index 1',
    'index 2',
    'index 3',
  ];
  int navIndex = 0;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          'Screen ${screenIndex[navIndex]}',
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.notification_add), label: 'notification_add'),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'add',
          ),
        ],
        onTap: (int index) {
          setState(() {
            navIndex = index;
          });
        },
        currentIndex: navIndex,
        backgroundColor: Colors.blue[100],
      ),
      drawer: Drawer(
        width: screenWidth * 0.5,
        child: ListView(
          children: const [
            UserAccountsDrawerHeader(
              accountName: Text(
                'muhammad',
              ),
              accountEmail: Text(
                'muhammad.marzouk@gmail.com',
                style: TextStyle(
                  color: Colors.white,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage(
                    'assets/images/picture-circle-avatar-image-png.png'),
                backgroundColor: Colors.brown,
                child: Padding(
                  padding: EdgeInsets.only(top: 25.0),
                ),
              ),
            ),
            ListTile(

            ),
          ],
        ),
      ),
    );
  }
}
