import 'package:abovhack/SocialMedia/ChatPage.dart';
import 'package:abovhack/SocialMedia/Community.dart';
import 'package:abovhack/SocialMedia/PostingPage.dart';
import 'package:abovhack/SocialMedia/ShortVideo.dart';
import 'package:abovhack/SocialMedia/SocialMediaHomePage.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  final String content =
      "Did you know that understanding your tax obligations can help you save money and avoid penalties? 💰 It's essential to stay informed about tax laws and regulations to make the most of your financial situation.Here's a quick tip: Take advantage of tax deductions and credits to minimize your tax liability. Whether it's deducting eligible expenses or claiming tax credits for education or retirement savings, every little bit helps! Stay tuned for more tax-saving tips and be sure to file your taxes accurately and on time to avoid any issues. Knowledge is power when it comes to taxes, so let's stay informed and financially savvy together! 💡💪 #TaxAwareness #FinancialLiteracy #SaveMoney";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
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
            icon: Icon(Icons.chat, size: 35.0, color: Color(0XFFFF9973)),
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
      ),*/
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: const Color(0xffff9973),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 70.0,
                      backgroundImage: NetworkImage(
                          'https://storage.googleapis.com/pai-images/58286c435ac54f078f246c3e9cc14c1d.jpeg'),
                    ),
                    const SizedBox(width: 13.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Michelle Teoh",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 25.0),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white,
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(
                                top: 2.0, bottom: 2.0, left: 6.0, right: 6.0),
                            child: Text(
                              "Financial Enthusiast",
                              style: TextStyle(
                                  fontSize: 12.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        const Text(
                          "Software Engineering of TL Company",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 12.0),
                        ),
                        const Text(
                          "Fresh Graduate from UPM",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 12.0),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20.0),
                  const Text(
                    "About Me",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 23.0,
                    ),
                  ),
                  const Text(
                      "I'm excited to shares my interests in finance, always eager to learn and engage in discussions about investment trends, money-saving tips, and achieving financial goals. Let's collaborate and leverage technology to empower ourselves financially!"),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff7ecfe0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                        child: const Column(
                          children: [
                            Text(
                              "340",
                              style: TextStyle(color: Colors.black),
                            ),
                            Text('Follower',
                                style: TextStyle(color: Colors.black)),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff7ecfe0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                        child: const Column(
                          children: [
                            Text(
                              "340",
                              style: TextStyle(color: Colors.black),
                            ),
                            Text(
                              'Following',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff7ecfe0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                        child: const Column(
                          children: [
                            Text(
                              "340",
                              style: TextStyle(color: Colors.black),
                            ),
                            Text(
                              "Community",
                              style: TextStyle(color: Colors.black),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  //Button for Post and Collection
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                            color: Color(0xffff9973),
                            width: 3.0,
                          )),
                        ),
                        child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Post",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22.0,
                                color: Colors.black,
                              ),
                            )),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                            color: Color(0xff87807F),
                            width: 3.0,
                          )),
                        ),
                        child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Collection",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22.0,
                                color: Colors.black,
                              ),
                            )),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 10.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://storage.googleapis.com/pai-images/58286c435ac54f078f246c3e9cc14c1d.jpeg'),
                          ),
                          const SizedBox(width: 10.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(
                                children: [
                                  Text("Michelle Teoh",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(width: 10.0),
                                  Text("2h ago",
                                      style: TextStyle(
                                          fontSize: 8.0, color: Colors.grey)),
                                ],
                              ),
                              const SizedBox(height: 3.0),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.green.shade200,
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.only(
                                      top: 2.0,
                                      bottom: 2.0,
                                      left: 8.0,
                                      right: 8.0),
                                  child: Text(
                                    "Tax Awareness",
                                    style: TextStyle(fontSize: 10.0),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                        ],
                      ),
                      const SizedBox(height: 10.0),
                      const Text(
                        "Tax Awareness Alert! 📢",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      ReadMoreText(
                        content,
                        trimLines: 6,
                        colorClickableText: Colors.grey,
                        trimMode: TrimMode.Line,
                        trimCollapsedText: 'More',
                        trimExpandedText: 'Less',
                        moreStyle: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.favorite_border_outlined),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const Icon(Icons.comment_outlined),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const Icon(Icons.star_border_outlined),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const Icon(Icons.share),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      const Divider(
                        color: Colors.grey,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              const CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://storage.googleapis.com/pai-images/58286c435ac54f078f246c3e9cc14c1d.jpeg'),
                              ),
                              const SizedBox(width: 10.0),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Row(
                                    children: [
                                      Text("Michelle Teoh",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      SizedBox(width: 5.0),
                                      Text("in",
                                          style: TextStyle(fontSize: 10.0)),
                                      SizedBox(width: 5.0),
                                      CircleAvatar(
                                        radius: 10.0,
                                        backgroundImage: NetworkImage(
                                            'https://images.freeimages.com/cme/images/istock/previews/4770/47704764-financial-wizard.jpg'),
                                      ),
                                      SizedBox(width: 5.0),
                                      Text("Invest Pro",
                                          style: TextStyle(fontSize: 10.0)),
                                      SizedBox(width: 10.0),
                                      Text("3d ago",
                                          style: TextStyle(
                                              fontSize: 8.0,
                                              color: Colors.grey)),
                                    ],
                                  ),
                                  const SizedBox(height: 3.0),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: const Color(0xffadd3ff),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.only(
                                          top: 2.0,
                                          bottom: 2.0,
                                          left: 8.0,
                                          right: 8.0),
                                      child: Text(
                                        "Investment Knowledge",
                                        style: TextStyle(fontSize: 10.0),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Spacer(),
                            ],
                          ),
                          const SizedBox(height: 10.0),
                          const Text(
                            "Investing with Confidence: Expert Tips and Strategies",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          //videoPlayer(videoUrl: 'https://youtube.com/shorts/TOsOR48dQ78?si=iao5Bd8Y176eY7oi'),
                          const Stack(
                            children: [
                              Image(
                                  image: NetworkImage(
                                      'https://cdn.corporatefinanceinstitute.com/assets/income-investing-1024x576.jpeg')),
                              Positioned(
                                bottom: 2,
                                right: 2,
                                child: Icon(
                                  Icons.volume_up_outlined,
                                  size: 30.0,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.favorite_border_outlined),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const Icon(Icons.comment_outlined),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const Icon(Icons.star_border_outlined),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const Icon(Icons.share),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      /*bottomNavigationBar: BottomAppBar(
        notchMargin: 10.0,
        shape: const CircularNotchedRectangle(),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: ((context) => ShortVideoPage())),
                );
              },
              icon: const Icon(Icons.video_collection,
                  size: 40.0, color: Color(0xffff9973)),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: ((context) => CommunityPage())),
                );
              },
              icon: const Icon(Icons.people, size: 40.0, color: Color(0xffff9973)),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: ((context) => const ChatPage())),
                );
              },
              icon: const Icon(Icons.chat, size: 40, color: Color(0xffff9973)),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: ((context) => const ProfilePage())),
                );
              },
              icon: const Icon(Icons.person, size: 40, color: Color(0xffff9973)),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.home),
        backgroundColor: const Color(0xffff9973),
        foregroundColor: Colors.white,
        shape: const CircleBorder(),
      ),*/
    );
  }
}
