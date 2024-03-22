import 'package:flutter/material.dart';

class AccountSummary extends StatefulWidget {
  const AccountSummary({super.key});

  @override
  AccountSummaryState createState() => AccountSummaryState();
}

class AccountSummaryState extends State<AccountSummary> {
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
                  onPressed: () {},
                  icon: Icon(Icons.monetization_on_rounded,
                      color: Colors.white, size: 30.0),
                ),
                IconButton(
                  onPressed: () {},
                  icon:
                      Icon(Icons.account_box, color: Colors.white, size: 30.0),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.bar_chart, color: Colors.white, size: 30.0),
                ),
                IconButton(
                  onPressed: () {},
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
                            'Account Details',
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Wealth Summary',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0XFF57636C),
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(
                            left: 16, right: 16, top: 12, bottom: 12),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                    flex: 40,
                                    child: Container(
                                        height: 160,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: const Color(0XFFFFF3F3),
                                        ),
                                        child: const Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.payment_rounded,
                                                color: Color(0XFF14181B),
                                                size: 32),
                                            Text('\$56.4k',
                                                style: TextStyle(
                                                    fontSize: 36,
                                                    color: Color(0XFF14181B),
                                                    fontWeight:
                                                        FontWeight.w600)),
                                            Text('Total Investment',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Color(0XFF57636C),
                                                    fontWeight:
                                                        FontWeight.w400))
                                          ],
                                        ))),
                                const SizedBox(width: 10),
                                Expanded(
                                    flex: 40,
                                    child: Container(
                                        height: 160,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: const Color(0XFF7ECFE0),
                                        ),
                                        child: const Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.moving_rounded,
                                                color: Color(0XFF14181B),
                                                size: 32),
                                            Text('\$1,200',
                                                style: TextStyle(
                                                    fontSize: 36,
                                                    color: Color(0XFF14181B),
                                                    fontWeight:
                                                        FontWeight.w600)),
                                            Text('Total Profit',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Color(0XFF57636C),
                                                    fontWeight:
                                                        FontWeight.w400))
                                          ],
                                        )))
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Expanded(
                                    flex: 40,
                                    child: Container(
                                        height: 160,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: const Color(0XFF7ECFE0),
                                        ),
                                        child: const Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.calendar_month,
                                                color: Color(0XFF14181B),
                                                size: 32),
                                            Text('487 days',
                                                style: TextStyle(
                                                    fontSize: 36,
                                                    color: Color(0XFF14181B),
                                                    fontWeight:
                                                        FontWeight.w600)),
                                            Text('Time Active',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Color(0XFF57636C),
                                                    fontWeight:
                                                        FontWeight.w400))
                                          ],
                                        ))),
                                const SizedBox(width: 10),
                                Expanded(
                                    flex: 40,
                                    child: Container(
                                        height: 160,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: const Color(0XFFFFF3F3),
                                        ),
                                        child: const Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.content_paste,
                                                color: Color(0XFF14181B),
                                                size: 32),
                                            Text('2',
                                                style: TextStyle(
                                                    fontSize: 36,
                                                    color: Color(0XFF14181B),
                                                    fontWeight:
                                                        FontWeight.w600)),
                                            Text('Active Plan',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Color(0XFF57636C),
                                                    fontWeight:
                                                        FontWeight.w400))
                                          ],
                                        )))
                              ],
                            )
                          ],
                        )),
                    const Padding(
                        padding: EdgeInsets.only(left: 24, bottom: 12),
                        child: Text('Recent',
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0XFF57636C),
                                fontWeight: FontWeight.w400))),
                    Column(children: [
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 16, right: 16, bottom: 12),
                          child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0XFFFFF3F3),
                              ),
                              child: const Padding(
                                  padding: EdgeInsets.only(
                                      left: 16, right: 16, top: 12, bottom: 12),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text('Deposit',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Color(0XFF14181B),
                                                    fontWeight:
                                                        FontWeight.w400)),
                                            SizedBox(height: 4),
                                            Text('20/3/2024',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Color(0XFF57636C),
                                                    fontWeight:
                                                        FontWeight.w400))
                                          ],
                                        ),
                                        Text('\$1,500',
                                            style: TextStyle(
                                                fontSize: 24,
                                                color: Color(0XFF14181B),
                                                fontWeight: FontWeight.w500))
                                      ])))),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 16, right: 16, bottom: 12),
                          child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0XFFFFF3F3),
                              ),
                              child: const Padding(
                                  padding: EdgeInsets.only(
                                      left: 16, right: 16, top: 12, bottom: 12),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text('Deposit',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Color(0XFF14181B),
                                                    fontWeight:
                                                        FontWeight.w400)),
                                            SizedBox(height: 4),
                                            Text('18/2/2024',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Color(0XFF57636C),
                                                    fontWeight:
                                                        FontWeight.w400))
                                          ],
                                        ),
                                        Text('\$2,130',
                                            style: TextStyle(
                                                fontSize: 24,
                                                color: Color(0XFF14181B),
                                                fontWeight: FontWeight.w500))
                                      ])))),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 16, right: 16, bottom: 12),
                          child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0XFFFFF3F3),
                              ),
                              child: const Padding(
                                  padding: EdgeInsets.only(
                                      left: 16, right: 16, top: 12, bottom: 12),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text('Cash Out',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Color(0XFF14181B),
                                                    fontWeight:
                                                        FontWeight.w400)),
                                            SizedBox(height: 4),
                                            Text('31/1/2024',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Color(0XFF57636C),
                                                    fontWeight:
                                                        FontWeight.w400))
                                          ],
                                        ),
                                        Text('\$7,799',
                                            style: TextStyle(
                                                fontSize: 24,
                                                color: Color(0XFF14181B),
                                                fontWeight: FontWeight.w500))
                                      ])))),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 16, right: 16, bottom: 12),
                          child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0XFFFFF3F3),
                              ),
                              child: const Padding(
                                  padding: EdgeInsets.only(
                                      left: 16, right: 16, top: 12, bottom: 12),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text('Deposit',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Color(0XFF14181B),
                                                    fontWeight:
                                                        FontWeight.w400)),
                                            SizedBox(height: 4),
                                            Text('19/1/2024',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Color(0XFF57636C),
                                                    fontWeight:
                                                        FontWeight.w400))
                                          ],
                                        ),
                                        Text('\$1,755',
                                            style: TextStyle(
                                                fontSize: 24,
                                                color: Color(0XFF14181B),
                                                fontWeight: FontWeight.w500))
                                      ]))))
                    ])
                  ]),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff4e4745),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        selectedLabelStyle: TextStyle(color: Colors.white),
        unselectedLabelStyle: TextStyle(color: Colors.white),
        iconSize: 30.0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Education',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: 'Account',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mark_chat_unread),
            label: 'Social Media',
          ),
        ],
      ),
    );
  }
}
