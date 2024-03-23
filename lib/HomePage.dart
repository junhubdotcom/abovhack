import 'package:abovhack/Account/CreateFund.dart';
import 'package:abovhack/Account/ListOfFund.dart';
import 'package:abovhack/Account/SummaryPage.dart';
import 'package:abovhack/Account/UserInfo.dart';
import 'package:abovhack/Camera/CameraPage.dart';
import 'package:abovhack/SocialMedia/InterestsPage.dart';
import 'package:flutter/material.dart';
import 'package:abovhack/Account/AccountSummary.dart';
import 'package:abovhack/Education/screens/education_home.dart';
import 'package:abovhack/FinancialCalendar/FinancialCalendarPage.dart';
import 'package:abovhack/SocialMedia/SocialMediaHomePage.dart';
import 'package:abovhack/SocialMedia/ChatPage.dart';
import 'package:abovhack/SocialMedia/Community.dart';
import 'package:abovhack/SocialMedia/PostingPage.dart';
import 'package:abovhack/SocialMedia/ProfilePage.dart';
import 'package:abovhack/SocialMedia/ShortVideo.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  bool _isFirst = true;

  int _selectedIndex = 0;
  final List<Widget> _pages = <Widget>[
    const SocialMediaHomePage(),
    const AccountSummary(),
    const FinancialCalendarPage(),
    const EducationHome(),
  ];

  // void initState() {
  //   super.initState();
  //   checkFirstView();
  // }

  // Future<void> checkFirstView() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   bool isFirstView = prefs.getBool('isFirstView') ?? true;
  //   if (isFirstView) {
  //     setState(() {
  //       _selectedIndex =
  //           0; // Change to the index of the page you want to show initially
  //     });
  //     await prefs.setBool('isFirstView', false); // Correct the parameter here
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
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
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const ChatPage())),
                      );
                    },
                    icon: const Icon(
                      Icons.chat,
                      size: 35.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
              bottom: _buildTabBarWidget(_selectedIndex)),
          body: _buildBodyWidget(_selectedIndex),
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
                    icon: Icon(Icons.chat_bubble_rounded, color: Colors.white),
                    label: 'Social Media',
                  ),
                  NavigationDestination(
                    icon:
                        Icon(Icons.account_balance_wallet, color: Colors.white),
                    label: 'Account',
                  ),
                  NavigationDestination(
                    icon: Icon(Icons.calendar_month, color: Colors.white),
                    label: 'Calendar',
                  ),
                  NavigationDestination(
                    icon: Icon(Icons.book, color: Colors.white),
                    label: 'Education',
                  )
                ],
                selectedIndex: _selectedIndex,
                onDestinationSelected: (int index) {
                  setState(() => _selectedIndex = index);
                  if (_isFirst) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const UserInfo())),
                    );
                    _isFirst = false;
                  }
                },
                indicatorColor: const Color(0XFFC4B2AE),
                backgroundColor: const Color(0xff4e4745)),
          )),
    );
  }

  Widget? _buildTitleWidget(int index) {
    switch (index) {
      case 3:
        return null;
      case 1:
        return null;
      case 2:
        return null;
      case 0:
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

  PreferredSizeWidget? _buildTabBarWidget(int index) {
    switch (index) {
      case 0:
        return const TabBar(
            indicatorColor: Color(0XFFFF9973),
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 3,
            tabs: [
              Tab(icon: Icon(Icons.article, color: Colors.white, size: 30.0)),
              Tab(icon: Icon(Icons.people, color: Colors.white, size: 30.0)),
              Tab(
                  icon: Icon(Icons.video_collection,
                      color: Colors.white, size: 30.0)),
              Tab(icon: Icon(Icons.person, color: Colors.white, size: 30.0)),
              Tab(
                  icon: Icon(Icons.add_to_photos,
                      color: Colors.white, size: 30.0)),
            ]);
      case 1:
        return const TabBar(
            indicatorColor: Color(0XFFFF9973),
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 3,
            tabs: [
              Tab(
                  icon: Icon(Icons.lightbulb_rounded,
                      color: Colors.white, size: 30.0)),
              Tab(icon: Icon(Icons.storage, color: Colors.white, size: 30.0)),
              Tab(icon: Icon(Icons.camera, color: Colors.white, size: 30.0)),
              Tab(icon: Icon(Icons.person, color: Colors.white, size: 30.0)),
              Tab(icon: Icon(Icons.add_circle, color: Colors.white, size: 30.0))
            ]);
      case 2:
        return null;
      case 3:
        return null;
      default:
        return null;
    }
  }

  Widget? _buildBodyWidget(int index) {
    switch (index) {
      case 0:
        return TabBarView(children: [
          const SocialMediaHomePage(),
          CommunityPage(),
          const ShortVideoPage(),
          const ProfilePage(),
          const PostingPage(),
        ]);

      case 1:
        return const TabBarView(children: [
          SummaryPage(),
          ListOfFund(),
          CameraPage(),
          AccountSummary(),
          CreateFund()
        ]);
      case 2:
        return _pages[index];
      case 3:
        return _pages[index];
      default:
        return null;
    }
  }
}
