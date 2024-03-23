import 'dart:async';
import 'dart:ffi';

import 'package:abovhack/HomePage.dart';
import 'package:abovhack/SocialMedia/InterestsPage.dart';
import 'package:abovhack/SocialMedia/SocialMediaHomePage.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late bool isFirstView; // Remove the declaration from the top

  @override
  void initState() {
    super.initState();
    isFirstView = false; // Initialize isFirstView here
    confirmFirstView();
    Timer(Duration(seconds: 2), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => isFirstView ? InterestsPage() : HomePage(),
        ),
      );
    });
  }

  Future<void> confirmFirstView() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    isFirstView = sharedPreferences.getBool('isFirstView') ?? true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              child: Icon(Icons.local_activity),
              radius: 50.0,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: CircularProgressIndicator(
                backgroundColor: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
