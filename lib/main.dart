import 'package:abovhack/SocialMedia/ChatDetailsPage.dart';
import 'package:abovhack/SocialMedia/ChatPage.dart';
import 'package:abovhack/SocialMedia/Community.dart';
import 'package:abovhack/SocialMedia/CommunityProfilePage.dart';
import 'package:abovhack/SocialMedia/InterestsPage.dart';
import 'package:abovhack/SocialMedia/PostingPage.dart';
import 'package:abovhack/SocialMedia/ProfilePage.dart';
import 'package:abovhack/SocialMedia/ShortVideo.dart';
import 'package:abovhack/SocialMedia/SocialMediaHomePage.dart';
import 'package:flutter/material.dart';
import 'HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Financial Literacy App',
      debugShowCheckedModeBanner: false,
      home: CommunityPage(),
    );
  }
}
