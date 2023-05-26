import 'package:advanced_ui/screens/cart/cart_page.dart';
import 'package:advanced_ui/screens/home/home_page.dart';
import 'package:advanced_ui/screens/save/save_page.dart';
import 'package:advanced_ui/screens/user/user_page.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  // static const List<Widget> _widgetOptions = <Widget>[
  //   Text('Home', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
  //   Text('Save', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
  //   Text('Chart', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
  //   Text('User', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
  //   Text('Item 5'),
  // ];

  final _screens = [
    const MyHomePage(),
    const MyCartPage(),
    const MySavePage(),
    const MyUserPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "text",
          style: TextStyle(
            fontSize: 1.0,
          ),
        ),
      ),
      body: Stack(
        children: _screens
            .asMap()
            .map((i, screen) => MapEntry(
                i,
                Offstage(
                  offstage: _selectedIndex != i,
                  child: screen,
                )))
            .values
            .toList(),
      ),
      // body: Center(
      //   child: _widgetOptions.elementAt(_selectedIndex),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green, // Warna item yang dipilih
        unselectedItemColor: Colors.grey, // Warna item yang tidak dipilih
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            label: '',
            icon: Container(
              margin: const EdgeInsets.only(top: 15),
              child: const Icon(
                Icons.home,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Container(
              margin: const EdgeInsets.only(top: 15),
              child: const Icon(
                Icons.shop_outlined,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Container(
              margin: const EdgeInsets.only(top: 15),
              child: const Icon(
                Icons.save_outlined,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Container(
              margin: const EdgeInsets.only(top: 15),
              child: const Icon(
                Icons.person_outline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
