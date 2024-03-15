import 'package:abovhack/SocialMedia/InterestsPage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child:Text('Social Media'),
          onPressed: () {
            Navigator.push(
              context,MaterialPageRoute(builder: ((context) => InterestsPage())),
            );
          },
        ),
      ),
    );
  }
}