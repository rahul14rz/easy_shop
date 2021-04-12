import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:no_context_navigation/no_context_navigation.dart'; //Navigation

import 'MyLogin.dart'; // Login Page
import 'views/Settings.dart'; // Settings Page

/* Electronics */
import 'homepage_categories/electronics_info/SmartPhone.dart';
import 'homepage_categories/electronics_info/Laptop.dart';
import 'homepage_categories/electronics_info/WallPaperTv.dart';
import 'homepage_categories/electronics_info/Monitor.dart';
import 'homepage_categories/electronics_info/DesktopComputers.dart';

/* Accessories */
import 'homepage_categories/accessories/HeadPhones.dart';
import 'homepage_categories/accessories/KeyBoards.dart';
import 'homepage_categories/accessories/Microphones.dart';
import 'homepage_categories/accessories/Mouse.dart';
import 'homepage_categories/accessories/Speakers.dart';

/* MyHomeWidget() */
import 'views/MyHome.dart';

void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
      navigatorKey: NavigationService.navigationKey,
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (context) => MyLogin());
          case '/hp':
            return MaterialPageRoute(builder: (context) => HomePage());
          case '/sp':
            return MaterialPageRoute(builder: (context) => SmartPhone());
          case '/lp':
            return MaterialPageRoute(builder: (context) => Laptop());
          case '/wp':
            return MaterialPageRoute(builder: (context) => WallPaperTv());
          case '/ms':
            return MaterialPageRoute(builder: (context) => Monitor());
          case '/dc':
            return MaterialPageRoute(builder: (context) => DesktopComputers());
          case '/hps':
            return MaterialPageRoute(builder: (context) => HeadPhones());
          case '/kbs':
            return MaterialPageRoute(builder: (context) => KeyBoards());
          case '/mps':
            return MaterialPageRoute(builder: (context) => Microphones());
          case '/me':
            return MaterialPageRoute(builder: (context) => Mouse());
          case '/ss':
            return MaterialPageRoute(builder: (context) => Speakers());
          case '/settings':
            return MaterialPageRoute(builder: (context) => Settings());
          default:
            return null;
        }
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String appBarTitle = 'Easy Shop';
  Color appBarColor;
  int _selectedIndex = 0;


  static List<Widget> _widgetOptions = <Widget>[

    /* Home Page - index 0 */
    MyHomeWidget(), // views/MyHome.dart

    /* My Orders - index 1 */
    Container(
      child: Column(
        children: [
          InkWell(
            onTap: () {},
            splashColor: Colors.green,
            child: Card(
              elevation: 12,
              shadowColor: Colors.blueGrey,
              child: ListTile(
                leading: Icon(Icons.shopping_cart, color: Colors.green),
                title: Text('Pixel 5',
                    style: TextStyle(fontFamily: 'Raleway', fontSize: 18)),
                trailing: Image.asset(
                  'assets/smartphones/pixel_5.png',
                  height: 100,
                  width: 100,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            splashColor: Colors.green,
            child: Card(
              elevation: 12,
              shadowColor: Colors.blueGrey,
              child: ListTile(
                leading: Icon(Icons.shopping_cart, color: Colors.green),
                title: Text('Galaxy S21',
                    style: TextStyle(fontFamily: 'Raleway', fontSize: 18)),
                trailing: Image.asset(
                  'assets/smartphones/galaxy_s21.png',
                  height: 100,
                  width: 100,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            splashColor: Colors.green,
            child: Card(
              elevation: 12,
              shadowColor: Colors.blueGrey,
              child: ListTile(
                leading: Icon(Icons.shopping_cart, color: Colors.green),
                title: Text('OnePlus 9',
                    style: TextStyle(fontFamily: 'Raleway', fontSize: 18)),
                trailing: Image.asset(
                  'assets/smartphones/oneplus_9.png',
                  height: 100,
                  width: 100,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            splashColor: Colors.green,
            child: Card(
              elevation: 12,
              shadowColor: Colors.blueGrey,
              child: ListTile(
                leading: Icon(Icons.shopping_cart, color: Colors.green),
                title: Text('Hp Envy',
                    style: TextStyle(fontFamily: 'Raleway', fontSize: 18)),
                trailing: Image.asset(
                  'assets/laptops/hp.png',
                  height: 100,
                  width: 100,
                ),
              ),
            ),
          ),
        ],
      ),
    ),

    /* Profile - index 2 */
    Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/profile.png'),
            radius: 50,
          ),
          ConstrainedBox(
              constraints: BoxConstraints.tight(const Size(300, 60)),
              child: InkWell(
                onTap: () {},
                splashColor: Colors.red,
                child: Card(
                  color: Colors.red,
                  elevation: 15.0,
                  shadowColor: Colors.blueGrey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                  child: ListTile(
                    leading: Icon(Icons.person, color: Colors.white, size: 24),
                    title: Text(
                      'Rahul',
                      style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 18,
                          color: Colors.white),
                    ),
                  ),
                ),
              )),
          ConstrainedBox(
            constraints: BoxConstraints.tight(const Size(300, 60)),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.blue,
              child: Card(
                color: Colors.blue,
                elevation: 15.0,
                shadowColor: Colors.blueGrey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100.0),
                ),
                child: ListTile(
                  leading: Icon(Icons.email, color: Colors.white, size: 24),
                  title: Text(
                    'abc@gmail.com',
                    style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 18,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints.tight(const Size(300, 60)),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.green,
              child: Card(
                color: Colors.green,
                elevation: 15.0,
                shadowColor: Colors.blueGrey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100.0),
                ),
                child: ListTile(
                  leading: Icon(Icons.phone, color: Colors.white, size: 24),
                  title: Text(
                    '9876543210',
                    style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 18,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints.tight(const Size(300, 60)),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.purple,
              child: Card(
                color: Colors.purple,
                elevation: 15.0,
                shadowColor: Colors.blueGrey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100.0),
                ),
                child: ListTile(
                  leading: Icon(Icons.home, color: Colors.white, size: 24),
                  title: Text(
                    'Adhoc s/w, Cbe',
                    style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 18,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ),

    /* Settings - index 3 */
    Container(
      child: new Settings(),
    ),

  ];

  void _onItemTapped(int itemIndex) {
    setState(() {
      _selectedIndex = itemIndex;
      if (_selectedIndex == 0) {
        appBarTitle = 'HomePage';
        appBarColor = Colors.indigo;
      } else if (_selectedIndex == 1) {
        appBarTitle = 'My Cart';
        appBarColor = Colors.green;
      } else if (_selectedIndex == 2) {
        appBarTitle = 'Profile';
        appBarColor = Colors.blue;
      } else if (_selectedIndex == 3) {
        appBarTitle = 'Settings';
        appBarColor = Colors.pink;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle,
            style:
                TextStyle(fontFamily: 'Raleway', fontWeight: FontWeight.bold)),
        backgroundColor: appBarColor,
        automaticallyImplyLeading: true,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 7,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.indigo,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'My Cart',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded),
            label: 'Profile',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
