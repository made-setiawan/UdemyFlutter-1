import 'package:advanced_ui/screens/bottom_navbar.dart';
import 'package:advanced_ui/screens/home/home_page.dart';
import 'package:advanced_ui/screens/home/pages/book.detail.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'E-Book App',
        // navigatorKey: Get.navigatorKey,
        debugShowCheckedModeBanner: false,
        // home: const BottomNavBar(),
        routes: {
          BottomNavBar.nameRoute: (context) => const BottomNavBar(),
          MyHomePage.nameRoute: (context) => const MyHomePage(),
          MyBookDetail.nameRoute: (context) => const MyBookDetail()
        });
  }
}
