import 'package:flutter/material.dart';

class ChatDetailsPage extends StatefulWidget {
  const ChatDetailsPage({Key? key}) : super(key: key);

  @override
  State<ChatDetailsPage> createState() => _ChatDetailsPageState();
}

class _ChatDetailsPageState extends State<ChatDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, size: 35.0, color: Color(0XFFFF9973)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Row(
          children: [
            SizedBox(
                width:
                    10), // Add some space between the back button and the avatar
            CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://st2.depositphotos.com/3309423/5723/i/450/depositphotos_57231635-stock-photo-young-japanese-business-woman-with.jpg'),
              radius: 25.0,
            ),
            SizedBox(
                width: 10), // Add some space between the avatar and the text
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Wendy Law",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19.0, // Adjust the font size if necessary
                  ),
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 6.0,
                    ),
                    SizedBox(
                        width:
                            5), // Add some space between the status indicator and the text
                    Text(
                      "Online",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const SizedBox(height: 8.0),
              const Text('Today 8.00a.m.'),
              const SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 300.0,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                        topLeft: Radius.circular(20.0),
                      ),
                      color: Color(0xff7ecfe0),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Good morning, Miss Law. What are your thoughts on cryptocurrency as an investment?  I'm intrigued but also a bit hesitant to dive in.",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 8,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://storage.googleapis.com/pai-images/58286c435ac54f078f246c3e9cc14c1d.jpeg'),
                    radius: 25.0,
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              const Text("Today 10.30a.m."),
              const SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://st2.depositphotos.com/3309423/5723/i/450/depositphotos_57231635-stock-photo-young-japanese-business-woman-with.jpg'),
                    radius: 25.0,
                  ),
                  const SizedBox(width: 8.0),
                  Container(
                    width: 300.0,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                      color: Color(0xffd9d9d9),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Good Morning, Miss Teoh. To be honest, I'm not sold on the idea of cryptocurrency as a legitimate investment. There's so much volatility and uncertainty surrounding it, not to mention the security risks.",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 8,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 6),
              Container(
                width: 300.0,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                  color: Color(0xffd9d9d9),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "For me, I'll stick to more traditional assets currently because I feel more comfortable knowing my investments are backed by something tangible.",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 8,
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              const Divider(color: Colors.grey),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.add, size: 30.0),
                    color: const Color(0xffff9973),
                  ),
                  const SizedBox(
                    width: 200,
                    height: 30,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffff9973),
                          ),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.add_a_photo,
                        size: 30.0, color: Color(0xffff9973)),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.mic,
                      size: 30.0,
                      color: Color(0xffff9973),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
            ],
          ),
        ],
      ),
    );
  }
}
