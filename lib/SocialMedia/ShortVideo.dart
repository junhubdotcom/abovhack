import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

class ShortVideoPage extends StatefulWidget {
  const ShortVideoPage({super.key});

  @override
  State<ShortVideoPage> createState() => _ShortVideoPageState();
}

class _ShortVideoPageState extends State<ShortVideoPage> {
  List<String> listOfVideos = [
    'https://i.ytimg.com/vi/TOsOR48dQ78/maxres2.jpg?sqp=-oaymwEoCIAKENAF8quKqQMcGADwAQH4AYwCgALgA4oCDAgAEAEYKyA8KH8wDw==&rs=AOn4CLD82RZr0Ib7g7RlEOMSkwgkJKigEA',
    'https://media.istockphoto.com/id/1319103417/photo/inspired-female-teacher-in-headphones-meet-students-online-give-class.jpg?s=612x612&w=0&k=20&c=cSGIQIwPFpVi7m4MR2_SLlwDcpBELdnNnLNgdtH6Bak=',
    'https://media.istockphoto.com/id/1358852907/photo/math-teacher-explaining-the-new-subject.jpg?s=612x612&w=0&k=20&c=FF2G5q8Ow97E3PHQ0mzxtSG6wYWdIismaa3LfzDe3Ek=',
  ];

  List<String> listOfProfilePics = [
    'https://assets.skool.com/f/54d0a0a8a59d4087be8918b95634fef3/0156e70dd11d4ca0894a286ff1a59bfa828e6afeedce4ae8bd0377661e0c87bb',
    'https://img.freepik.com/free-photo/smiling-female-student-doing-homework-desk_1262-5768.jpg',
    'https://media.istockphoto.com/id/1355030282/photo/shot-of-a-mature-businessman-using-a-laptop-in-a-modern-office.jpg?s=612x612&w=0&k=20&c=OItGhzI7XeKceicohbtU0q2ss0aFoMhF3kZfTYPXFLE=',
  ];

  List<String> listOfNames = [
    'Mark Tilbury',
    'Ameilia Johnson',
    'Micheal Jackson',
  ];

  List<String> listOfTime = [
    '7min ago',
    '1h ago',
    '7h ago',
  ];

  List<String> listOfTitle = [
    'Explaining Investing In Plain English 📈',
    'Investing 101: Start Small, Think Big',
    'Mastering Cash Flow 💸',
  ];

  List<String> listOfCaption = [
    'Deciphering investing basics for easy wealth growth!',
    'Dive into the world of investing and watch your money grow!',
    'Unlock cash flow secrets for financial stability! ',
  ];

  List<String> listOfHashTag = [
    '#investing #investingforbeginners #investing101',
    'Investing 101: Start Small, Think Big',
    '#CashFlow #FinancialFreedom',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Make this image changable
      body: SafeArea(
        child: Stack(
          children: [
            Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.network(listOfVideos[index],
                          fit: BoxFit.cover), // Adjusted the index
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 70.0),
                                    Row(
                                      children: [
                                        CircleAvatar(
                                          backgroundImage: NetworkImage(
                                            listOfProfilePics[
                                                index], // Adjusted the index
                                          ),
                                          radius: 16,
                                        ),
                                        const SizedBox(width: 6),
                                        Text(
                                            listOfNames[
                                                index], // Handle null value
                                            style: const TextStyle(
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            )),
                                        const SizedBox(width: 6),
                                        Text(
                                            listOfTime[
                                                index], // Handle null value
                                            style: const TextStyle(
                                              fontSize: 10.0,
                                              color: Colors.white,
                                            )),
                                        const SizedBox(width: 6),
                                        ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                const Color(0xff7ecfe0),
                                            padding: const EdgeInsets.all(0),
                                          ),
                                          child: const Text(
                                            'Follow',
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(listOfTitle[index],
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15.0,
                                          color: Colors.white,
                                        )),
                                    Text(
                                        listOfCaption[
                                            index], // Handle null value
                                        style: const TextStyle(
                                          fontSize: 12.0,
                                          color: Colors.white,
                                        )),
                                    Text(
                                        listOfHashTag[
                                            index], // Handle null value
                                        style: const TextStyle(
                                          fontSize: 12.0,
                                          color: Colors.white,
                                        )),
                                    // SizedBox(height: 10.0),
                                  ],
                                ),
                                const Column(
                                  children: [
                                    Icon(
                                      Icons.favorite_border_outlined,
                                      size: 50.0,
                                      color: Colors.white,
                                    ),
                                    SizedBox(height: 20.0),
                                    Icon(
                                      Icons.comment_outlined,
                                      size: 50.0,
                                      color: Colors.white,
                                    ),
                                    SizedBox(height: 20.0),
                                    Icon(
                                      Icons.star_border_outlined,
                                      size: 50.0,
                                      color: Colors.white,
                                    ),
                                    SizedBox(height: 20.0),
                                    Icon(
                                      Icons.share,
                                      size: 50.0,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
                itemCount: 3,
                scrollDirection: Axis.vertical),
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
              onPressed: () {},
              icon: const Icon(Icons.video_collection,
                  size: 40.0, color: Color(0xffff9973)),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.people, size: 40.0, color: Color(0xffff9973)),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.chat, size: 40, color: Color(0xffff9973)),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.chat_bubble, size: 40, color: Color(0xffff9973)),
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
