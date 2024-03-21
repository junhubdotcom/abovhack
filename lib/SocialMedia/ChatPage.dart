import 'package:abovhack/SocialMedia/ChatDetailsPage.dart';
import 'package:abovhack/SocialMedia/Community.dart';
import 'package:abovhack/SocialMedia/PostingPage.dart';
import 'package:abovhack/SocialMedia/ProfilePage.dart';
import 'package:abovhack/SocialMedia/ShortVideo.dart';
import 'package:abovhack/SocialMedia/SocialMediaHomePage.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.search, size: 35.0, color: Color(0XFFFF9973)),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.add, size: 35.0, color: Color(0XFFFF9973)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: ((context) => PostingPage())),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.article, size: 35.0, color: Color(0XFFFF9973)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => SocialMediaHomePage())),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.people, size: 35.0, color: Color(0XFFFF9973)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: ((context) => CommunityPage())),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.chat, size: 35.0, color: Color(0XFFC4B2AE)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: ((context) => ChatPage())),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.video_collection,
                size: 35.0, color: Color(0XFFFF9973)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: ((context) => ShortVideoPage())),
              );
            },
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: ((context) => ProfilePage())),
              );
            },
            child: Stack(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://storage.googleapis.com/pai-images/58286c435ac54f078f246c3e9cc14c1d.jpeg'),
                  radius: 23.0,
                ),
                Positioned(
                  left: 3.0,
                  bottom: 0.0,
                  child: CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 6.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 40.0),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Individual",
                    style: TextStyle(
                        color: Color(0xff695757), fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    backgroundColor: Color(0xff7ecfe0),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Community",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    backgroundColor: Color(0xffd9d9d9),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40.0),
            ListTile(
              leading: Stack(
                children: [
                  CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage(
                        'https://st2.depositphotos.com/3309423/5723/i/450/depositphotos_57231635-stock-photo-young-japanese-business-woman-with.jpg'),
                  ),
                  Positioned(
                    left: 4.0,
                    bottom: 0.0,
                    child: CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 6.0,
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: CircleAvatar(
                      radius: 10.0,
                      backgroundColor: Colors.red,
                      child: Text(
                        '2',
                        style: TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              title: Text(
                'Wendy Law',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "Wendy Law: For me, I'll stick to more traditional assets currently because I feel more comfortable knowing my investments are backed by something tangible.",
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(fontSize: 10),
              ),
              trailing: Text(
                '3 min ago',
                style: TextStyle(
                    fontSize: 8.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: ((context) => ChatDetailsPage())),
                );
              },
            ),
            SizedBox(height: 20.0),
            ListTile(
              leading: Stack(
                children: [
                  CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOfkNL3OW2eijnqX99x0RjdzoFeup9klkXdg&usqp=CAU'),
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: CircleAvatar(
                      radius: 10.0,
                      backgroundColor: Colors.red,
                      child: Text(
                        '1',
                        style: TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              title: Text(
                'Ibad Ifran',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "Ibad Ifran: That's a great idea! There are several low-cost options you could explore. For example, you could offer services like writing, graphic design, or social media management. It's a flexible option that requires minimal upfront investment!",
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(fontSize: 10),
              ),
              trailing: Text(
                '3h ago',
                style: TextStyle(
                    fontSize: 8.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey),
              ),
            ),
            SizedBox(height: 20.0),
            ListTile(
              leading: Stack(
                children: [
                  CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage(
                        'https://as1.ftcdn.net/v2/jpg/05/18/72/44/1000_F_518724490_OSdviaT0zj7YPoZTymYjuZJUuWJNCDZz.jpg'),
                  ),
                  Positioned(
                    left: 4.0,
                    bottom: 0.0,
                    child: CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 6.0,
                    ),
                  ),
                ],
              ),
              title: Text(
                'Shiva',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "You: I've been struggling to stick to my budget lately. How do you all stay motivated to stick to your financial goals?",
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(fontSize: 10),
              ),
              trailing: Text(
                '3h ago',
                style: TextStyle(
                    fontSize: 8.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey),
              ),
            ),
            SizedBox(height: 20.0),
            ListTile(
              leading: Stack(
                children: [
                  CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage(
                        'https://img.freepik.com/premium-photo/happy-mature-chinese-man-table-working-with-laptop-home-office-interior-looking-empty-space_116547-27823.jpg'),
                  ),
                ],
              ),
              title: Text(
                'Alex Choong',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "You: Personally, I've been considering getting a credit card to take advantage of the rewards, but I'm a bit hesitant because I'm worried about overspending and getting into debt. What do you think?",
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(fontSize: 10),
              ),
              trailing: Text(
                '2w ago',
                style: TextStyle(
                    fontSize: 8.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 10.0,
        shape: CircularNotchedRectangle(),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.video_collection,
                  size: 40.0, color: Color(0xffff9973)),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.people, size: 40.0, color: Color(0xffff9973)),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.chat, size: 40, color: Color(0xffff9973)),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.chat_bubble, size: 40, color: Color(0xffff9973)),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.home),
        backgroundColor: Color(0xffff9973),
        foregroundColor: Colors.white,
        shape: CircleBorder(),
      ),
    );
  }
}
