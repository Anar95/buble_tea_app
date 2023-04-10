import 'package:buble_tea_app/page/shop_page.dart';
import 'package:flutter/material.dart';

import '../components/bottom_nav_bar.dart';
import 'cart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //navigate bottom bar
  int _selectedIndex = 0;
  void navigateBottomBar(int newIndex) {
    setState(() {
      _selectedIndex = newIndex;
    });
  }

  // page to display
  final List<Widget> _pages = [

    const ShopPage(),

    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      drawer: Drawer(
      
      child: Container(
        color: Colors.brown[200],
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.brown,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        ''),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Anar Abbas',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Ana Sayfa'),
              onTap: () {
                // Handle home onTap
              },
            ),
            ListTile(
              leading: Icon(Icons.search),
              title: Text('Arama'),
              onTap: () {
                // Handle search onTap
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Ayarlar'),
              onTap: () {
                // Handle settings onTap
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Yardım'),
              onTap: () {
                // Handle help onTap
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Hesaptan Çıkış'),
              onTap: () {
                // Handle logout onTap
              },
            ),
          ],
        ),
      ),
    ),
 
      backgroundColor: Colors.brown[300],
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
