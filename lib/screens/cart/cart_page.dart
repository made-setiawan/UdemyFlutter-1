import 'package:advanced_ui/themes.dart';
import 'package:flutter/material.dart';

class MyCartPage extends StatelessWidget {
  const MyCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("My Cart Page", style: semiBoldText20),
      ),
    );
  }
}
