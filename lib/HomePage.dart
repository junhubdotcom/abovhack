import 'package:abovhack/Account/AccountSummary.dart';
import 'package:abovhack/Camera/CameraPage.dart';
import 'package:abovhack/Education/screens/education_home.dart';
import 'package:abovhack/SocialMedia/InterestsPage.dart';
import 'package:flutter/material.dart';
import 'package:abovhack/Account/CreateFund.dart';
import 'package:abovhack/Account/UserInfo.dart';
import 'package:abovhack/FinancialCalendar/FinancialCalendarPage.dart';

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
              child: Text('Calendar'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Container(child: FinancialCalendarPage())),
                );
              },
            ),
            SizedBox(height: 16),
            ElevatedButton(
              child: Text('Account'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Container(child: UserInfo())),
                );
              },
            ),
            SizedBox(height: 16),
            ElevatedButton(
              child: Text('Fund'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Container(child: CreateFund())),
                );
              },
            ),
            SizedBox(height: 16),
            ElevatedButton(
              child: Text('Summary'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Container(child: AccountSummary())),
                 );
              },
            ),
            SizedBox(height: 16),
            ElevatedButton(
              child: Text('Education'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Container(child: EducationHome())),
                );
              },
            ),
            SizedBox(height: 16),
            ElevatedButton(
              child: Text('Camera'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Container(child: CameraPage())),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}