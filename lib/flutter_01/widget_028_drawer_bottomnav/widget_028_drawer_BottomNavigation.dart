
import 'package:flutter/material.dart';

class DrawerExample extends StatefulWidget {
  const DrawerExample({super.key});

  @override
  State<DrawerExample> createState() => _DrawerExampleState();
}

class _DrawerExampleState extends State<DrawerExample> {

static const List<Widget> _pagesList = <Widget> [
  Icon(Icons.home),
  Icon(Icons.notification_add),
  Icon(Icons.add),
  Icon(Icons.settings),
];
  int navIndex = 0;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('News App'),
        centerTitle: true,
      ),
      body: Center(
        child: _pagesList.elementAt(navIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 20.0,
        currentIndex: navIndex,
        backgroundColor: Colors.blue[100],
        selectedLabelStyle: const TextStyle(
          color: Colors.deepPurple,
          decoration: TextDecoration.underline,
          decorationColor: Colors.deepPurple,
          decorationStyle: TextDecorationStyle.dashed,
          fontSize: 20.0,
        ),
        selectedIconTheme: IconThemeData(
          color: Colors.deepPurple,
        ),
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.grey,
        unselectedIconTheme: IconThemeData(
          color: Colors.grey
        ),
        unselectedLabelStyle: TextStyle(
          color: Colors.grey
        ),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: (int index) {
          setState(() {
            navIndex = index;
          });
        },
        items:  const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notification_add),
            label: 'notification_add',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
      drawer: Drawer(
        shape: const OutlineInputBorder(
          borderRadius: BorderRadius.only(
            topRight:Radius.circular(20.0),
            bottomRight:Radius.circular(20.0),
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
              leading: Icon(Icons.home,color: Colors.white),
              title: Text('Home',style: TextStyle(color: Colors.white),),
            ),
            Divider(
              height: 1.0,
              indent: 20.0,
              endIndent: 20.0,
              color: Colors.white,
            ),
            ListTile(
              leading: Icon(Icons.contact_mail,color: Colors.white),
              title: Text('Contact Use',style: TextStyle(color: Colors.white),),
            ),
            Divider(
              height: 1.0,
              indent: 20.0,
              endIndent: 20.0,
              color: Colors.white,
            ),
            ListTile(
              leading: Icon(Icons.search,color: Colors.white),
              title: Text('Search',style: TextStyle(color: Colors.white),),
            ),
            Divider(
              height: 1.0,
              indent: 20.0,
              endIndent: 20.0,
              color: Colors.white,
            ),
            ListTile(
              leading: Icon(Icons.settings,color: Colors.white),
              title: Text('Settings',style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}
