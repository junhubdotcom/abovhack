import 'package:abovhack/Account/AccountSummary.dart';
import 'package:abovhack/Education/screens/education_home.dart';
import 'package:abovhack/FinancialCalendar/FinancialCalendarPage.dart';
import 'package:abovhack/SocialMedia/SocialMediaHomePage.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {

  int _selectedIndex = 3;
  final List<Widget> _pages = <Widget>[
    const EducationHome(),
    const AccountSummary(),
    const FinancialCalendarPage(),
    const SocialMediaHomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          labelTextStyle: MaterialStateProperty.resolveWith<TextStyle>(
            (Set<MaterialState> states) => states.contains(MaterialState.selected)
                ? const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)
                : const TextStyle(color: Colors.white),
          ),
        ),
        child: NavigationBar(
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.book, color: Colors.white),
              label: 'Education',
            ),
            NavigationDestination(
              icon: Icon(Icons.account_balance_wallet, color: Colors.white),
              label: 'Account',
            ),
            NavigationDestination(
              icon: Icon(Icons.calendar_month, color: Colors.white),
              label: 'Calendar',
            ),
            NavigationDestination(
              icon: Icon(Icons.mark_chat_unread, color: Colors.white),
              label: 'Social Media',
            )
          ],
          selectedIndex: _selectedIndex,
          onDestinationSelected: (int index) {
            setState(() => _selectedIndex = index);
          },
          indicatorColor: const Color(0XFFC4B2AE),
          backgroundColor: const Color(0xff4e4745)
        ),
      )
    );
  }
}