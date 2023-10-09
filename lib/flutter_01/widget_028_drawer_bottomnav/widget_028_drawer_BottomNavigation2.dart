import 'package:flutter/material.dart';

class DrawerExample2 extends StatefulWidget {
  const DrawerExample2({super.key});

  @override
  State<DrawerExample2> createState() => _DrawerExample2State();
}

class _DrawerExample2State extends State<DrawerExample2> {
  static const List<Widget> _pagesList = <Widget>[
    Icon(Icons.menu),
    Icon(Icons.search),
    Icon(Icons.favorite),
    Icon(Icons.settings),
  ];
  int navIndex = 0;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: const Text('News App'),
        centerTitle: true,
      ),
      body: Center(
        child: _pagesList.elementAt(navIndex),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        child: Container(
          height: 60.0,
          // color:  will hied the Notch
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                tooltip: 'Open navigation menu',
                icon: const Icon(Icons.menu),
                onPressed: () {
                  setState(() {
                  });
                  navIndex = 0;
                },
              ),
              IconButton(
                tooltip: 'Search',
                icon: const Icon(Icons.search),
                onPressed: () {
                  setState(() {

                  });
                  navIndex = 1;
                },
              ),
              IconButton(
                tooltip: 'Favorite',
                icon: const Icon(Icons.favorite),
                onPressed: () {
                  setState(() {

                  });
                  navIndex = 2;
                },
              ),
              IconButton(
                tooltip: 'settings',
                icon: const Icon(Icons.settings),
                onPressed: () {
                  setState(() {

                  });
                  navIndex = 3;
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
              ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: Drawer(
        shape: const OutlineInputBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
          ),
        ),
        elevation: 20.0,
        backgroundColor: Colors.blue,
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
              leading: Icon(Icons.home, color: Colors.white),
              title: Text(
                'Home',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Divider(
              height: 1.0,
              indent: 20.0,
              endIndent: 20.0,
              color: Colors.white,
            ),
            ListTile(
              leading: Icon(Icons.contact_mail, color: Colors.white),
              title: Text(
                'Contact Use',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Divider(
              height: 1.0,
              indent: 20.0,
              endIndent: 20.0,
              color: Colors.white,
            ),
            ListTile(
              leading: Icon(Icons.search, color: Colors.white),
              title: Text(
                'Search',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Divider(
              height: 1.0,
              indent: 20.0,
              endIndent: 20.0,
              color: Colors.white,
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.white),
              title: Text(
                'Settings',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
