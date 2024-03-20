import 'package:abovhack/SocialMedia/InterestsPage.dart';
import 'package:abovhack/Account/UserInfo.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Social Media'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InterestsPage()),
                );
              },
            ),
            SizedBox(height: 16),
            ElevatedButton(
              child: Text('Account'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UserInfoWidget()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}