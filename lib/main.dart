import 'package:abovhack/SocialMedia/InterestsPage.dart';
import 'package:abovhack/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:abovhack/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Financial Literacy App',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
