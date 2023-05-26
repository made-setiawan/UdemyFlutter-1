import 'package:advanced_ui/themes.dart';
import 'package:flutter/material.dart';

class MySavePage extends StatelessWidget {
  const MySavePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("My Save Page", style: semiBoldText20),
      ),
    );
  }
}
