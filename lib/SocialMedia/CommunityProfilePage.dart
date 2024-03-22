import 'package:abovhack/SocialMedia/ProfilePage.dart';
import 'package:flutter/material.dart';
import 'package:abovhack/SocialMedia/PostingPage.dart';

class CommunityProfilePage extends StatelessWidget {
  const CommunityProfilePage({super.key});
  final String content =
      "Key Principles for Building Your Investment Portfolio: \n\n 1.Define Objectives: Clearly outline your investment goals, such as retirement savings or wealth growth, to guide your decisions.\n2.Diversification: Spread risk by investing across different asset classes like stocks, bonds, and real estate.\n3.Risk Assessment: Understand your tolerance for market fluctuations to create a balanced portfolio.\n4.Asset Allocation: Decide on the mix of assets based on your goals, timeframe, and risk tolerance.\n5.Monitor and Rebalance: Regularly review your portfolio and adjust to maintain your desired asset allocation.\n6.Cost Management: Minimize fees and expenses to maximize returns over time.\n7.Tax Efficiency: Consider tax implications and employ strategies to minimize taxes on investments.\n8.Stay Informed and Disciplined: Stay updated on market trends, but avoid emotional decisions and stick to your long-term plan.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, size: 35.0, color: Color(0XFFFF9973)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.add, size: 35.0, color: Color(0XFFFF9973)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: ((context) => const PostingPage())),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.search, size: 35.0, color: Color(0XFFFF9973)),
            onPressed: () {
              // Handle search button tap
            },
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: ((context) => const ProfilePage())),
              );
            },
            child: const Stack(
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
            //Community Profile
            Container(
              color: const Color(0xffff9973),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Row(
                          children: [
                            CircleAvatar(
                              radius: 40.0,
                              backgroundImage: NetworkImage(
                                  'https://images.freeimages.com/cme/images/istock/previews/4770/47704764-financial-wizard.jpg'),
                            ),
                            SizedBox(width: 10.0),
                            Text(
                              "InvestPro",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 25.0),
                            ),
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            padding: const EdgeInsets.all(0.0),
                          ),
                          child: const Text(
                            "Join",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5.0),
                    const Text(
                      'Elevate your financial future with expert investment guidance and practical tips. Join us for informed decisions and success in the investment world!',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontSize: 14.0,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 5,
                    ),
                    const SizedBox(height: 15.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.people,
                            color: Color(0xffff9973),
                          ),
                          label: const Text(
                            "237 Members",
                            style: TextStyle(
                              color: Color(0xffff9973),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                          ),
                        ),
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.chat,
                            color: Color(0xffff9973),
                          ),
                          label: const Text(
                            "Chatroom",
                            style: TextStyle(
                              color: Color(0xffff9973),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                                  Text("in", style: TextStyle(fontSize: 10.0)),
                                  SizedBox(width: 5.0),
                                  Text("3d ago",
                                      style: TextStyle(
                                          fontSize: 8.0, color: Colors.grey)),
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
                          const Spacer(),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xffd9d9d9),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              padding: const EdgeInsets.all(0.0),
                            ),
                            child: const Text(
                              "Following",
                              style: TextStyle(
                                fontSize: 11.0,
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                              ),
                            ),
                          ),
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
                  const Divider(
                    color: Colors.grey,
                  ),
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://www.snapmindset.com/storage/2024/01/cropped-Mark-Tilbury.jpg'),
                      ),
                      const SizedBox(width: 10.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            children: [
                              Text("Mark Tilbury",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              SizedBox(width: 5.0),
                              Text("in", style: TextStyle(fontSize: 10.0)),
                              SizedBox(width: 5.0),
                              SizedBox(width: 10.0),
                              Text("3d ago",
                                  style: TextStyle(
                                      fontSize: 8.0, color: Colors.grey)),
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
                                  top: 2.0, bottom: 2.0, left: 8.0, right: 8.0),
                              child: Text(
                                "Investment Knowledge",
                                style: TextStyle(fontSize: 10.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffd9d9d9),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          padding: const EdgeInsets.all(0.0),
                        ),
                        child: const Text(
                          "Following",
                          style: TextStyle(
                            fontSize: 11.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  const Text(
                    "Explaining Investing In Plain English 📈 #investing #investingforbeginners #investing101",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  //videoPlayer(videoUrl: 'https://youtube.com/shorts/TOsOR48dQ78?si=iao5Bd8Y176eY7oi'),
                  const Stack(
                    children: [
                      Image(
                          image: NetworkImage(
                              'https://i.ytimg.com/vi/TOsOR48dQ78/maxres2.jpg?sqp=-oaymwEoCIAKENAF8quKqQMcGADwAQH4AYwCgALgA4oCDAgAEAEYKyA8KH8wDw==&rs=AOn4CLD82RZr0Ib7g7RlEOMSkwgkJKigEA')),
                      Positioned(
                        bottom: 2,
                        right: 2,
                        child: Icon(
                          Icons.volume_up_outlined,
                          size: 30.0,
                          color: Colors.white,
                        ),
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
            ),
          ],
        ),
      ),
    );
  }
}
