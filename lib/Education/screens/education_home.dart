import 'package:abovhack/Education/models/topics.dart';
import 'package:abovhack/Education/screens/topic_list_screen.dart';
import 'package:abovhack/Education/screens/trade_page.dart';
import 'package:abovhack/Education/widgets/topic_card.dart';
import 'package:flutter/material.dart';

class EducationHome extends StatefulWidget {
  const EducationHome({super.key});

  @override
  State<EducationHome> createState() => _EducationHomeState();
}

class _EducationHomeState extends State<EducationHome> {
  double xp = 323;
  double maxXp = 1234;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffff3f3),
      body: SafeArea(
        top: true,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              color: Color(0xffff9973),
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: ProfileSection(
                xp: xp,
                maxXp: maxXp,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20),
              child: TradeCard(),
            ),
            const Expanded(
              child: LearnSection(),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

class ProfileSection extends StatelessWidget {
  final double xp;
  final double maxXp;

  const ProfileSection({super.key, required this.xp, required this.maxXp});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 80,
            height: 80,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              'images/profile.jpeg',
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 20),
          Flexible(
            child: Align(
              alignment: const AlignmentDirectional(0, 0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Michelle Teoh',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Text(
                        'Level 1: ',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                      Expanded(
                        child: LinearProgressIndicator(
                          value: xp / maxXp,
                          backgroundColor: Colors.grey[300],
                          valueColor: const AlwaysStoppedAnimation<Color>(
                            Colors.lightGreen,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        '${xp.toInt()}/',
                        style: const TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        '${maxXp.toInt()}',
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TradeCard extends StatelessWidget {
  const TradeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TradePage(),
          ),
        );
      },
      child: Container(
        constraints: const BoxConstraints(
          minWidth: 350,
          maxWidth: double.infinity,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              blurRadius: 4,
              color: Color(0x33000000),
              offset: Offset(0, 2),
            )
          ],
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Padding(
          padding: EdgeInsetsDirectional.only(bottom: 8),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.only(end: 12),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 12, 12, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Go Trade',
                            style: TextStyle(
                              fontFamily: 'Outfit',
                              color: Color(0xFF14181B),
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.only(top: 4),
                            child: Text(
                              'Learn trading by trading',
                              style: TextStyle(
                                fontFamily: 'Plus Jakarta Sans',
                                color: Color(0xFF57636C),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right_rounded,
                      color: Color(0xFF57636C),
                      size: 24,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 12, 0, 12),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '4',
                            style: TextStyle(
                              fontFamily: 'Outfit',
                              color: Colors.deepOrange,
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.only(top: 4),
                            child: Text(
                              'Open Trade',
                              style: TextStyle(
                                fontFamily: 'Plus Jakarta Sans',
                                color: Color(0xFF57636C),
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.only(end: 16),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '\$93,000',
                            style: TextStyle(
                              fontFamily: 'Outfit',
                              color: Colors.deepOrange,
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.only(top: 4),
                            child: Text(
                              'Portfolio Value',
                              style: TextStyle(
                                fontFamily: 'Plus Jakarta Sans',
                                color: Color(0xFF57636C),
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LearnSection extends StatelessWidget {
  const LearnSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Learn",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TopicListScreen()),
                  );
                },
                child: const Text(
                  "See All",
                  style: TextStyle(fontSize: 16, color: Colors.blue),
                ),
              )
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SizedBox(
            height: 160,
            child: Row(
              children: topics.map((topic) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: TopicCard(topic: topic),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
