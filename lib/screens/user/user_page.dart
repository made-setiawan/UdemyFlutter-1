import 'package:advanced_ui/themes.dart';
import 'package:flutter/material.dart';

class MyUserPage extends StatelessWidget {
  const MyUserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("My User Page", style: semiBoldText20),
      ),
    );
  }
}
