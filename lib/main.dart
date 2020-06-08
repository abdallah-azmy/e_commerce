import 'package:flutter/material.dart';
import 'Screens/Onboarding_Screen.dart';
import 'Screens/first_Screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "e-commerce",
      home: FirstScreen(),
    );
  }
}
