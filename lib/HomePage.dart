import 'dart:ui';
import 'package:flutter/cupertino.dart';
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
        fontFamily: 'Raleway',
      ),
      home: MyHomePage(),
      navigatorKey: NavigationService.navigationKey,
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (context) => MyLogin());
          case '/home':
            return MaterialPageRoute(builder: (context) => HomePage());
          case '/smartphone':
            return MaterialPageRoute(builder: (context) => SmartPhone());
          case '/laptop':
            return MaterialPageRoute(builder: (context) => Laptop());
          case '/wallpaper':
            return MaterialPageRoute(builder: (context) => WallPaperTv());
          case '/monitor':
            return MaterialPageRoute(builder: (context) => Monitor());
          case '/desktop':
            return MaterialPageRoute(builder: (context) => DesktopComputers());
          case '/headphone':
            return MaterialPageRoute(builder: (context) => HeadPhones());
          case '/keyboard':
            return MaterialPageRoute(builder: (context) => KeyBoards());
          case '/microphone':
            return MaterialPageRoute(builder: (context) => Microphones());
          case '/mouse':
            return MaterialPageRoute(builder: (context) => Mouse());
          case '/speaker':
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
    SingleChildScrollView(
      child: Column(
        children: [
          OrdersCardWidget(
              titleText: 'Pixel 5', trailImg: 'assets/smartphones/pixel_5.png'),
          OrdersCardWidget(
              titleText: 'Galaxy S21',
              trailImg: 'assets/smartphones/galaxy_s21.png'),
          OrdersCardWidget(
              titleText: 'OnePlus 9',
              trailImg: 'assets/smartphones/oneplus_9.png'),
          OrdersCardWidget(
              titleText: 'HP Envy', trailImg: 'assets/laptops/hp.png'),
          OrdersCardWidget(
              titleText: 'Headphone', trailImg: 'assets/header.jpg'),
          OrdersCardWidget(titleText: 'Mouse', trailImg: 'assets/header.jpg'),
          OrdersCardWidget(
              titleText: 'Keyboard', trailImg: 'assets/header.jpg'),
        ],
      ),
    ),

    /* Profile - index 2 */
    SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('assets/profile.png'),
              radius: 40,
            ),
            SizedBox(height: 20),
            ProfileCardWidget(
                prefixIcon: Icons.person,
                listTileText: 'Rahul',
                splashColor: Colors.red,
                cardColor: Colors.red),
            SizedBox(height: 20),
            ProfileCardWidget(
                prefixIcon: Icons.email_rounded,
                listTileText: 'abc@gmail.com',
                splashColor: Colors.green,
                cardColor: Colors.green),
            SizedBox(height: 20),
            ProfileCardWidget(
                prefixIcon: Icons.phone,
                listTileText: '9876543210',
                splashColor: Colors.blue,
                cardColor: Colors.blue),
            SizedBox(height: 20),
            ProfileCardWidget(
                prefixIcon: Icons.location_on_rounded,
                listTileText: 'Adhoc S/W, CBE',
                splashColor: Colors.purple,
                cardColor: Colors.purple),
          ],
        ),
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
                TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: appBarColor,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.notifications_active), onPressed: () {}),
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
        ],

        // Search Bar
        bottom: buildPreferredSize(),
      ),
      drawer: Drawer(
        elevation: 7,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.indigo,
              ),
              margin: EdgeInsets.zero,
              accountName: Text('Rahul'),
              accountEmail: Text('abc@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/header.jpg'),
                child: Text(
                  "R",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/header.jpg'),
                  child: Text(
                    "A",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/header.jpg'),
                  child: Text(
                    "B",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ],
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.indigo,
              ),
              title: Text('Home', style: TextStyle(color: Colors.black)),
              onTap: () {
                _onItemTapped(0);
                Navigator.pop(context);
              },
            ),
            ExpansionTile(
              leading: Icon(
                Icons.format_list_bulleted,
                color: Colors.indigo,
              ),
              title: Text('Categories'),
              childrenPadding: EdgeInsets.only(left: 10),
              children: <Widget>[
                ListTile(
                  leading: Icon(
                    Icons.electrical_services,
                    color: Colors.indigo,
                  ),
                  title: Text('Electronics',
                      style: TextStyle(color: Colors.black)),
                  onTap: () {
                    navService.pushNamed('/smartphone');
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.audiotrack,
                    color: Colors.indigo,
                  ),
                  title: Text('Accessories',
                      style: TextStyle(color: Colors.black)),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.sd_storage,
                    color: Colors.indigo,
                  ),
                  title: Text('Storage devices',
                      style: TextStyle(color: Colors.black)),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.devices_other,
                    color: Colors.indigo,
                  ),
                  title: Text('Other electronics',
                      style: TextStyle(color: Colors.black)),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            ListTile(
              leading: Icon(
                Icons.shopping_cart,
                color: Colors.indigo,
              ),
              title: Text('My Cart', style: TextStyle(color: Colors.black)),
              onTap: () {
                _onItemTapped(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.indigo,
              ),
              title: Text('Profile', style: TextStyle(color: Colors.black)),
              onTap: () {
                _onItemTapped(2);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.indigo,
              ),
              title: Text('Settings', style: TextStyle(color: Colors.black)),
              onTap: () {
                _onItemTapped(3);
                Navigator.pop(context);
              },
            ),
          ],
        ),
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

  PreferredSize buildPreferredSize() {
    return PreferredSize(
      preferredSize: Size(50, 50),
      child: Container(
          height: 42.8,
          margin: const EdgeInsets.all(7.8),
          child: TextField(
              decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.auto,
            enabledBorder: OutlineInputBorder(
              gapPadding: 2.0,
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: BorderSide(color: Colors.white, width: 1.2),
            ),
            focusedBorder: OutlineInputBorder(
              gapPadding: 2.0,
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: BorderSide(color: Colors.indigo, width: 1.2),
            ),
            filled: true,
            fillColor: Colors.white,
            hintText: 'Search for items here....',
            hintStyle: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 14
            ),
            suffixIcon: Icon(Icons.search),
          ))),
    );
  }
}

class OrdersCardWidget extends StatelessWidget {
  const OrdersCardWidget({
    Key key,
    @required this.titleText,
    @required this.trailImg,
  }) : super(key: key);

  final String titleText;
  final String trailImg;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      splashColor: Colors.green,
      child: Card(
        elevation: 12,
        shadowColor: Colors.blueGrey,
        child: ListTile(
          leading: Icon(Icons.shopping_cart, color: Colors.green),
          title: Text(titleText,
              style: TextStyle(fontSize: 18)),
          trailing: Image.asset(
            trailImg,
            height: 100,
            width: 100,
          ),
        ),
      ),
    );
  }
}

class ProfileCardWidget extends StatelessWidget {
  const ProfileCardWidget({
    Key key,
    @required this.listTileText,
    @required this.prefixIcon,
    @required this.splashColor,
    @required this.cardColor,
  }) : super(key: key);

  final String listTileText;
  final IconData prefixIcon;
  final Color splashColor;
  final Color cardColor;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        constraints: BoxConstraints.tight(const Size(275, 50)),
        child: InkWell(
          onTap: () {},
          splashColor: splashColor,
          child: Card(
            color: cardColor,
            elevation: 15.0,
            shadowColor: Colors.blueGrey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100.0),
            ),
            child: ListTile(
              leading: Icon(prefixIcon, color: Colors.white, size: 24),
              title: Text(
                listTileText,
                style: TextStyle(
                     fontSize: 18, color: Colors.white),
              ),
            ),
          ),
        ));
  }
}
