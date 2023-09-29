import 'package:flutter/material.dart';
import 'package:deal_test/view/screens/dealsample.dart';
import 'package:deal_test/view/screens/screen2.dart';
import 'package:deal_test/view/screens/screen1.dart';
import 'package:deal_test/view/screens/settingpagetest.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentSelectedIndex = 0;
  static const List<Widget> _pages = <Widget>[
    DealScreen(),
    Screen2(),
    SettingPage(),
    Screen3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"), // Add your app's title here
      ),
      drawer: const Drawer(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: DrawerHeader(child:
              CircleAvatar(
                radius: 30,
              )),
            ),
            ListTile(
              title: Text('Account'),
              leading: Icon(Icons.account_box),
            ),
            ListTile(
              title: Text('Order'),
              leading: Icon(Icons.card_giftcard_rounded),
            ),
            ListTile(
              title: Text('Starred'),
              leading: Icon(Icons.star_border),
            )
          ],
        ),
      ),
      body: _pages[_currentSelectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.brown,
        currentIndex: _currentSelectedIndex,
        onTap: (value) {
          setState(() {
            _currentSelectedIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.fire_extinguisher_sharp),
            label: "Deals",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_active),
            label: "Notifications",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded),
            label: "Account",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: "Cart",
          ),
        ],
      ),
    );
  }
}