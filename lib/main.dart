import 'package:flutter/material.dart';
import 'screens/landing_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xffF4C724),
        backgroundColor: Colors.white,
      ),
      home: LandingScreen(),
    );
  }
}
