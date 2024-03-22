import 'package:abovhack/Account/AccountSummary.dart';
import 'package:abovhack/Camera/ResultScreen.dart';
import 'package:abovhack/SocialMedia/SocialMediaHomePage.dart';
import 'package:flutter/material.dart';
import 'package:abovhack/SocialMedia/SocialMediaHomePage.dart';

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
      home: AccountSummary(),
    );
  }
}
