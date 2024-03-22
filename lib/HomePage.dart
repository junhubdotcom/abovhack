import 'package:flutter/material.dart';
import 'package:abovhack/Account/AccountSummary.dart';
import 'package:abovhack/Education/screens/education_home.dart';
import 'package:abovhack/FinancialCalendar/FinancialCalendarPage.dart';
import 'package:abovhack/SocialMedia/SocialMediaHomePage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final List<Widget> _pages = <Widget>[
    const EducationHome(),
    const AccountSummary(),
    const FinancialCalendarPage(),
    const SocialMediaHomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 60,
          backgroundColor: const Color(0xff4e4745),
          leading: Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 10.0),
            child: const Stack(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://storage.googleapis.com/pai-images/58286c435ac54f078f246c3e9cc14c1d.jpeg'),
                  radius: 23.0,
                ),
              ],
            ),
          ),
          title: _buildTitleWidget(_selectedIndex),
          actions: [
            Container(
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(right: 10.0),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.chat,
                  size: 35.0,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        body: _pages[_selectedIndex],
        bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
            labelTextStyle: MaterialStateProperty.resolveWith<TextStyle>(
              (Set<MaterialState> states) =>
                  states.contains(MaterialState.selected)
                      ? const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)
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
              backgroundColor: const Color(0xff4e4745)),
        ));
  }

  Widget? _buildTitleWidget(int index) {
    switch (index) {
      case 0:
        return null;
      case 1:
        return null;
      case 2:
        return null;
      case 3:
        return const SizedBox(
          height: 40.0,
          child: TextField(
            decoration: InputDecoration(
              fillColor: Color(0xff9c8e8b),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
              hintText: "Search",
              hintStyle: TextStyle(color: Colors.white),
              prefixIcon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              contentPadding: EdgeInsets.all(10.0),
            ),
          ),
        );
      default:
        return null;
    }
  }
}
