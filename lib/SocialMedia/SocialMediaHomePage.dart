import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class SocialMediaHomePage extends StatefulWidget {
  const SocialMediaHomePage({Key? key});

  @override
  State<SocialMediaHomePage> createState() => _SocialMediaHomePageState();
}

class _SocialMediaHomePageState extends State<SocialMediaHomePage> {
  final String content1 =
      "Key Principles for Building Your Investment Portfolio: \n\n 1.Define Objectives: Clearly outline your investment goals, such as retirement savings or wealth growth, to guide your decisions.\n2.Diversification: Spread risk by investing across different asset classes like stocks, bonds, and real estate.\n3.Risk Assessment: Understand your tolerance for market fluctuations to create a balanced portfolio.\n4.Asset Allocation: Decide on the mix of assets based on your goals, timeframe, and risk tolerance.\n5.Monitor and Rebalance: Regularly review your portfolio and adjust to maintain your desired asset allocation.\n6.Cost Management: Minimize fees and expenses to maximize returns over time.\n7.Tax Efficiency: Consider tax implications and employ strategies to minimize taxes on investments.\n8.Stay Informed and Disciplined: Stay updated on market trends, but avoid emotional decisions and stick to your long-term plan.";

  final String content2 =
      "Crafting a budget is a fundamental step towards enhancing financial skills and achieving financial stability. A well-designed budget serves as a roadmap, providing insights into income, expenses, and savings goals. Begin by listing all sources of income and categorizing expenses, including essentials like housing, utilities, groceries, and discretionary spending. Analyze past spending patterns to identify areas for potential savings and prioritize financial goals such as building an emergency fund, paying off debt, or investing for the future. Regularly tracking expenses and adjusting the budget as needed ensures accountability and helps maintain financial discipline. Embracing budgeting tools and apps can streamline the process and provide valuable insights into spending habits. Ultimately, mastering the art of budgeting empowers individuals to take control of their finances and work towards long-term financial success.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFFFF3F3),
      body: Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Post 1
                      Row(
                        children: [
                          const CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://previews.123rf.com/images/faizzaki/faizzaki1911/faizzaki191100094/134393786-young-asian-malay-man-at-the-office-building-wearing-suit-and-holding-bag.jpg'),
                          ),
                          const SizedBox(width: 10.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(
                                children: [
                                  Text("Muhammad Jamir",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(width: 10.0),
                                  Text("3h ago",
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
                                fontSize: 12.0,
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10.0),

                      const Text(
                        "The Basic of Building a Strong Investment Portfolio",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      ReadMoreText(
                        content1,
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

                      //Post 2
                      Row(
                        children: [
                          const CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://assets.skool.com/f/54d0a0a8a59d4087be8918b95634fef3/0156e70dd11d4ca0894a286ff1a59bfa828e6afeedce4ae8bd0377661e0c87bb'),
                          ),
                          const SizedBox(width: 10.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(
                                children: [
                                  Text("Mark Tilbury",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(width: 5.0),
                                  Text("in", style: TextStyle(fontSize: 10.0)),
                                  SizedBox(width: 5.0),
                                  CircleAvatar(
                                    radius: 10.0,
                                    backgroundImage: NetworkImage(
                                        'https://images.freeimages.com/cme/images/istock/previews/4770/47704764-financial-wizard.jpg'),
                                  ),
                                  SizedBox(width: 5.0),
                                  Text("InvestPro",
                                      style: TextStyle(fontSize: 10.0)),
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
                        "Explaining Investing In Plain English 📈 #investing #investingforbeginners #investing101",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),

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
                      const Divider(),
                      const SizedBox(height: 8.0),
                      const Text(
                        "Suggested for you",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 15.0,
                            color: Colors.black),
                      ),
                      const SizedBox(height: 5.0),

                      //Post 3
                      Row(
                        children: [
                          const CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://img.freepik.com/free-photo/young-asian-woman-standing-desk-office-with-crossed-arms_1098-20328.jpg'),
                          ),
                          const SizedBox(width: 10.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(
                                children: [
                                  Text("Jessica Lau",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(width: 10.0),
                                  Text("1h ago",
                                      style: TextStyle(
                                          fontSize: 8.0, color: Colors.grey)),
                                ],
                              ),
                              const SizedBox(height: 3.0),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Colors.purple.shade100),
                                child: const Padding(
                                  padding: EdgeInsets.only(
                                      top: 2.0,
                                      bottom: 2.0,
                                      left: 8.0,
                                      right: 8.0),
                                  child: Text(
                                    "Financial Skills",
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
                              backgroundColor: const Color(0xff7ecfe0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              padding: const EdgeInsets.all(0.0),
                            ),
                            child: const Text(
                              "Follow",
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Text(
                        "Mastering Financial Discipline: The Importance of Creating a Budget",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 5.0),
                      ReadMoreText(
                        content2,
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
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
