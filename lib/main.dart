import 'package:advanced_ui/screens/bottom_navbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'E-Book App',
      // navigatorKey: Get.navigatorKey,
      debugShowCheckedModeBanner: false,
      home: BottomNavBar(),
    );
  }
}
