import 'package:abovhack/Camera/CameraPage.dart';
import 'package:abovhack/SocialMedia/ChatPage.dart';
import 'package:abovhack/SplashScreen.dart';
import 'package:flutter/material.dart';

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
