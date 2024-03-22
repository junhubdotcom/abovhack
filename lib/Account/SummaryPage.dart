import 'package:abovhack/Account/AccountSummary.dart';
import 'package:abovhack/Account/ListOfFund.dart';
import 'package:abovhack/Camera/CameraPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SummaryPage extends StatefulWidget {
  const SummaryPage({super.key});

  @override
  SummaryPageState createState() => SummaryPageState();
}

class SummaryPageState extends State<SummaryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff4e4745),
          leading: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 10.0),
            child: Stack(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://storage.googleapis.com/pai-images/58286c435ac54f078f246c3e9cc14c1d.jpeg'),
                  radius: 23.0,
                ),
              ],
            ),
          ),
          title: Container(
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
          ),
          actions: [
            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(right: 10.0),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.chat,
                  size: 35.0,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              color: Color(0xff4e4745),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: ((context) => ListOfFund())),
                      );
                    },
                    icon: Icon(Icons.monetization_on_rounded,
                        color: Colors.white, size: 30.0),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => AccountSummary())),
                      );
                    },
                    icon: Icon(Icons.account_box,
                        color: Colors.white, size: 30.0),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => SummaryPage())),
                      );
                    },
                    icon:
                        Icon(Icons.bar_chart, color: Colors.white, size: 30.0),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: ((context) => CameraPage())),
                      );
                    },
                    icon: Icon(Icons.camera, color: Colors.white, size: 30.0),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 24, top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Investment Plan',
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Recommended Investment Plan',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0XFF57636C),
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                    Padding(
                        padding:
                            const EdgeInsets.only(left: 16, right: 16, top: 12),
                        child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                    color: const Color(0XFFE0E3E7), width: 2)),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('AI suggestion',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0XFF14181B),
                                          fontWeight: FontWeight.w400)),
                                  const SizedBox(height: 6),
                                  const Text(
                                      'With your focus on goal alignment and capital preservation, a mix of low-risk and medium-risk options might be ideal for your ultra-short-term investment. Consider allocating a portion of your 6000 MYR to a high-yield savings account for easy access and guaranteed returns. For the remaining amount and your monthly savings of 100 MYR, explore short-term bond funds or money market instruments. These offer some potential for growth while minimizing risk compared to stocks. Remember, even medium-risk investments can fluctuate slightly in such a short timeframe, so diversify to spread the risk.',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0XFF57636C),
                                          fontWeight: FontWeight.w400)),
                                  const SizedBox(height: 6),
                                  SizedBox(
                                    height: 45,
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                          hintText: 'Ask question...',
                                          hintStyle: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                              color: Color(0XFF57636C),
                                              fontFamily: 'Readex Pro'),
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              borderSide: BorderSide(
                                                color: Color(0XFFE0E3E7),
                                              )),
                                          suffixIcon: Icon(Icons.arrow_upward,
                                              color: Color(0XFF57636C))),
                                    ),
                                  )
                                ],
                              ),
                            ))),
                    Padding(
                        padding:
                            const EdgeInsets.only(left: 16, right: 16, top: 12),
                        child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                    color: const Color(0XFFE0E3E7), width: 2)),
                            child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 12,
                                          right: 12,
                                          top: 24,
                                          bottom: 24),
                                      child: Column(
                                        children: [
                                          const Text('Mary&Jane Fund',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Color(0XFF14181B),
                                                  fontWeight: FontWeight.w400)),
                                          const SizedBox(height: 4),
                                          const Text('4.29%',
                                              style: TextStyle(
                                                  fontSize: 44,
                                                  color: Color(0XFF14181B),
                                                  fontWeight: FontWeight.w400)),
                                          const SizedBox(height: 4),
                                          const Text(
                                              'Recommended Investment Description',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color(0XFF57636C),
                                                  fontWeight: FontWeight.w400)),
                                          const SizedBox(height: 12),
                                          SizedBox(
                                            width: 230,
                                            height: 40,
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      const Color(0XFFFF9973),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10))),
                                              child: const Text('See more',
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                  )),
                                              onPressed: () {
                                                // See more
                                              },
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 12,
                                          right: 12,
                                          top: 24,
                                          bottom: 24),
                                      child: Column(
                                        children: [
                                          const Text(
                                              'Recommended Investment Name',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Color(0XFF14181B),
                                                  fontWeight: FontWeight.w400)),
                                          const SizedBox(height: 4),
                                          const Text('X.XX%',
                                              style: TextStyle(
                                                  fontSize: 44,
                                                  color: Color(0XFF14181B),
                                                  fontWeight: FontWeight.w400)),
                                          const SizedBox(height: 4),
                                          const Text(
                                              'Recommended Investment Description',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color(0XFF57636C),
                                                  fontWeight: FontWeight.w400)),
                                          const SizedBox(height: 12),
                                          SizedBox(
                                            width: 230,
                                            height: 40,
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      const Color(0XFFFF9973),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10))),
                                              child: const Text('See more',
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                  )),
                                              onPressed: () {
                                                // See more
                                              },
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 12,
                                          right: 12,
                                          top: 24,
                                          bottom: 24),
                                      child: Column(
                                        children: [
                                          const Text(
                                              'Recommended Investment Name',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Color(0XFF14181B),
                                                  fontWeight: FontWeight.w400)),
                                          const SizedBox(height: 4),
                                          const Text('X.XX%',
                                              style: TextStyle(
                                                  fontSize: 44,
                                                  color: Color(0XFF14181B),
                                                  fontWeight: FontWeight.w400)),
                                          const SizedBox(height: 4),
                                          const Text(
                                              'Recommended Investment Description',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color(0XFF57636C),
                                                  fontWeight: FontWeight.w400)),
                                          const SizedBox(height: 12),
                                          SizedBox(
                                            width: 230,
                                            height: 40,
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      const Color(0XFFFF9973),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10))),
                                              child: const Text('See more',
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                  )),
                                              onPressed: () {
                                                // See more
                                              },
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                )))),
                    Padding(
                        padding:
                            const EdgeInsets.only(left: 16, right: 16, top: 12),
                        child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                    color: const Color(0XFFE0E3E7), width: 2)),
                            child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text('Portfolio Allocation',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Color(0XFF14181B),
                                              fontWeight: FontWeight.w400)),
                                      const SizedBox(height: 6),
                                      const Text(
                                          'Recommended Portfolio Allocation',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0XFF57636C),
                                              fontWeight: FontWeight.w400)),
                                      const SizedBox(height: 6),
                                      SizedBox(
                                        width: 370,
                                        height: 230,
                                        child: Image.asset(
                                          'images/piechart.png',
                                          fit: BoxFit.cover,
                                        ),
                                      )
                                    ]))))
                  ])),
            ),
          ],
        ));
  }
}
