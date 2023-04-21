import 'package:buble_tea_app/page/shop_page.dart';
import 'package:flutter/material.dart';

import '../components/bottom_nav_bar.dart';
import 'cart_page.dart';
import 'login_page.dart';

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
                decoration: const BoxDecoration(
                  color: Colors.brown,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(''),
                    ),
                    const SizedBox(height: 10),
                    const Text(
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
                leading: const Icon(Icons.home),
                title: const Text('Ana Sayfa'),
                onTap: () {
                  // Handle home onTap
                },
              ),
              ListTile(
                leading: const Icon(Icons.search),
                title: const Text('Arama'),
                onTap: () {
                  // Handle search onTap
                },
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Ayarlar'),
                onTap: () {
                  // Handle settings onTap
                },
              ),
              ListTile(
                leading: const Icon(Icons.help),
                title: const Text('Yardım'),
                onTap: () {
                  // Handle help onTap
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('Hesaptan Çıkış'),
                onTap: () {
                  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
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
