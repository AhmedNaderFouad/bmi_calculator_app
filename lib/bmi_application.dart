import 'package:flutter/material.dart';
import 'package:bmi_calculator/screens/home_screen.dart';

class BmiApplication extends StatelessWidget {
  const BmiApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Color(0xff1C2135),
      ),

      home: HomeScreen(),
    );
  }
}
