import 'package:abovhack/SocialMedia/CommunityProfilePage.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CommunityPage extends StatefulWidget {
  CommunityPage({Key? key}) : super(key: key);
  List<String> postTitle = [
    "Tops Budgeting App to Track Your Spending",
    "Basic Guide for Personal Financial",
    "How I Track My Money",
  ];
  List<String> postProfilePic = [
    'https://www.shutterstock.com/image-photo/young-handsome-man-working-office-260nw-628183109.jpg',
    'https://image.civitai.com/xG1nkqKTMzGDvpLrqFT7WA/492d6fc5-8c4c-4bff-48a1-dada15bdbe00/width=450/325104.jpeg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJb_kcG2l7LgKACvg2FONn-JbefAFy35RJTA&usqp=CAU',
  ];

  List<String> postPic = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1MP7UaQ9H1xdNsdMk7ujBIStJny0gUpWzMw&usqp=CAU',
    'https://i.ytimg.com/vi/MXCvtC0HqLE/maxresdefault.jpg',
    'https://i.ytimg.com/vi/SlpkOiLPSE8/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLCQb4BWO0pbK_K3a0AIazu4ePjPoA',
  ];

  List<String> communityProfilePic = [
    'https://as1.ftcdn.net/v2/jpg/06/17/45/48/1000_F_617454889_0NkMZy6h0R53ya6VhcSI4dOhxoTUmpoa.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJ3JraUx2MV9yazfMFEPUi4FxuKU-lFDaTG8QcZlDudhFb63jyK0jxN7J8I2kHit-VymE&usqp=CAU',
    'https://static.vecteezy.com/system/resources/previews/021/879/820/original/money-bag-with-falling-paper-currency-and-coins-business-finance-concept-design-isolated-white-background-hand-drawn-flat-cartoon-style-art-illustration-vector.jpg',
  ];

  List<String> communityName = [
    'Budgeting Basics',
    'Financial Fitness',
    'Money Master',
  ];

  @override
  State<CommunityPage> createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  late PageController pageController = PageController();
  int pageNo = 0;

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFFFF3F3),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Today's Highlights",
                style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 365.0,
                child: PageView.builder(
                  controller: pageController,
                  onPageChanged: (index) {
                    setState(() {
                      pageNo = index;
                    });
                  },
                  itemBuilder: (_, index) {
                    return AnimatedBuilder(
                      animation: pageController,
                      builder: (ctx, child) {
                        return Stack(
                          children: [
                            Container(
                              margin: const EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24.0),
                                color: Colors.white,
                                border: Border.all(
                                    color: const Color(0xffff9973),
                                    width: 10.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Flexible(
                                          child: Text(
                                            widget.postTitle[index],
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18.0),
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 2, // Set maxLines to 2
                                          ),
                                        ),
                                        CircleAvatar(
                                          backgroundImage: NetworkImage(
                                              widget.postProfilePic[index]),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 3.0),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10.0),
                                      child: Image(
                                        image:
                                            NetworkImage(widget.postPic[index]),
                                      ),
                                    ),
                                    const SizedBox(height: 3.0),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              CircleAvatar(
                                                backgroundImage: NetworkImage(
                                                    widget.communityProfilePic[
                                                        index]),
                                              ),
                                              const SizedBox(width: 3.0),
                                              Text(
                                                widget.communityName[index],
                                                style: const TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                          ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  const Color(0xff7ecfe0),
                                            ),
                                            child: const Text(
                                              'Join',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ]),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  itemCount: 3,
                ),
              ),
              const SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  3,
                  (index) => Container(
                    margin: const EdgeInsets.all(2.0),
                    width: 8.0,
                    child: Icon(
                      Icons.circle,
                      size: 12.0,
                      color: pageNo == index
                          ? Colors.indigoAccent
                          : Colors.grey.shade300,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Your Community",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "View all",
                      style: TextStyle(color: Colors.grey.shade700),
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) =>
                                  const CommunityProfilePage())),
                        );
                      },
                      child: const CommunityCardJoined(
                          communityProfilePic:
                              'https://images.freeimages.com/cme/images/istock/previews/4770/47704764-financial-wizard.jpg',
                          communityName: 'InvestPro',
                          communityDescription:
                              'Elevate your financial future with expert investment guidance and practical tips. Join us for informed decisions and success in the investment world!'),
                    ),
                    const CommunityCardJoined(
                        communityProfilePic:
                            'https://c8.alamy.com/comp/W2TFXY/3d-rendered-image-of-an-army-soldier-3d-cartoon-character-holding-a-us-dollar-currency-symbol-W2TFXY.jpg',
                        communityName: 'Saving Squad',
                        communityDescription:
                            'A community focused on encouraging and motivating members to save money, budget effectively, and develop healthy financial habits.'),
                    const CommunityCardJoined(
                        communityProfilePic:
                            'https://img.freepik.com/premium-vector/tiny-businessman-character-tight-huge-budget-sack-with-belt-businessman-economy-crisis-situation-trying-reduce-money-spending-investment-decrease-sale-drop-cartoon-people-vector-illustration_87771-11222.jpg',
                        communityName: 'Budget Genius',
                        communityDescription:
                            'Master smart budgeting for financial success with BudgetGenius! Join us to explore tips, hacks, and strategies for achieving your savings goals.'),
                  ],
                ),
              ),
              const SizedBox(height: 10.0),
              const Text(
                "Suggested for you",
                style: TextStyle(fontSize: 12.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Financial skills",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text("View more",
                        style: TextStyle(color: Colors.grey.shade700)),
                  ),
                ],
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CommunityCardUnjoined(
                        communityProfilePic:
                            'https://cdn.i-scmp.com/sites/default/files/d8/images/methode/2021/11/10/8c406598-4110-11ec-b9bb-5bc84a21bb41_image_hires_095146.jpg',
                        communityName: 'Posperity Pulse',
                        communityDescription:
                            'Join ProsperityPulse for financial empowerment! Discover valuable skills, share success stories, and connect with like-minded individuals for prosperity.'),
                    CommunityCardUnjoined(
                        communityProfilePic:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5aDwrtiu0WiUosr26CNU4pGr644lGWwrViQ&usqp=CAU',
                        communityName: 'Wealth Wisdom',
                        communityDescription:
                            'Unlock financial wisdom! Join our community for expert insights, tips, and strategies to build long-term wealth effectively.'),
                    CommunityCardUnjoined(
                      communityProfilePic:
                          'https://static.vecteezy.com/system/resources/previews/021/879/820/original/money-bag-with-falling-paper-currency-and-coins-business-finance-concept-design-isolated-white-background-hand-drawn-flat-cartoon-style-art-illustration-vector.jpg',
                      communityName: 'Money Master',
                      communityDescription:
                          'Master money management with us! Access expert-led workshops, actionable tips, and peer support to level up your financial skills and thrive financially.',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 6.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Investment Knowledge",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "View more",
                      style: TextStyle(color: Colors.grey.shade700),
                    ),
                  ),
                ],
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CommunityCardUnjoined(
                        communityProfilePic:
                            'https://media.istockphoto.com/id/1284636520/vector/business-man-and-woman-characters-watering-money-tree-growing-wealth-capital-for-refund-care.jpg?s=612x612&w=0&k=20&c=ryZGxAcNOAtbPVztuVa9USGIspKme9TDkollTrkAPUY=',
                        communityName: 'Investment Insights',
                        communityDescription:
                            'Join Investment Insights for expert advice, analysis, and strategies to achieve your financial goals, whether you are a beginner or experienced investor'),
                    CommunityCardUnjoined(
                        communityProfilePic:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRs8HwC7XWZdxIuY-3aqCjW3wUSvSMYXOxhmA&usqp=CAU',
                        communityName: 'Wealth Wise',
                        communityDescription:
                            'Connect, learn, and master wealth management. Share wisdom, tips, and resources for securing your financial future.'),
                    CommunityCardUnjoined(
                        communityProfilePic:
                            'https://img.freepik.com/premium-vector/growth-money-investment-business-people-passive-income-concept-investing-flat-vector-illustration-banner_128772-1822.jpg',
                        communityName: 'Financial Fortitude',
                        communityDescription:
                            'Strengthen financial acumen, explore investment opportunities, and navigate the financial landscape with confidence.'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CommunityCardJoined extends StatelessWidget {
  final String communityProfilePic, communityName, communityDescription;

  const CommunityCardJoined({
    super.key,
    required this.communityProfilePic,
    required this.communityName,
    required this.communityDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 200,
        height: 300,
        decoration: BoxDecoration(
          color: const Color(0xff7ecfe0),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  CircleAvatar(
                    radius: 28.0,
                    backgroundImage: NetworkImage(communityProfilePic),
                  ),
                  const SizedBox(
                    height: 3.0,
                  ),
                  Text(
                    communityName,
                    style: const TextStyle(
                        fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 3.0),
                  Text(
                    communityDescription,
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding: const EdgeInsets.all(0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                child: const Text(
                  "Joined",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CommunityCardUnjoined extends StatelessWidget {
  final String communityProfilePic, communityName, communityDescription;

  const CommunityCardUnjoined({
    super.key,
    required this.communityProfilePic,
    required this.communityName,
    required this.communityDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 200,
        height: 300,
        decoration: BoxDecoration(
          color: const Color(0xff7ecfe0),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  CircleAvatar(
                    radius: 28.0,
                    backgroundImage: NetworkImage(communityProfilePic),
                  ),
                  const SizedBox(
                    height: 3.0,
                  ),
                  Text(
                    communityName,
                    style: const TextStyle(
                        fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 3.0),
                  Text(
                    communityDescription,
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey.shade400,
                  padding: const EdgeInsets.all(0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                child: const Text(
                  "Join",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
