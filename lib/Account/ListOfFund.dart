import 'package:abovhack/Account/AccountSummary.dart';
import 'package:abovhack/Account/SummaryPage.dart';
import 'package:abovhack/Camera/CameraPage.dart';
import 'package:flutter/material.dart';

class ListOfFund extends StatefulWidget {
  const ListOfFund({super.key});

  @override
  ListOfFundState createState() => ListOfFundState();
}

class ListOfFundState extends State<ListOfFund> {
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
                  icon:
                      Icon(Icons.account_box, color: Colors.white, size: 30.0),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: ((context) => SummaryPage())),
                    );
                  },
                  icon: Icon(Icons.bar_chart, color: Colors.white, size: 30.0),
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
                          'List of Funds',
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Recommended Funds',
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0XFF57636C),
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  const Padding(
                      padding: EdgeInsets.only(left: 24, top: 12),
                      child: Text(
                        'Trending',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0XFF57636C),
                            fontWeight: FontWeight.w400),
                      )),
                  Padding(
                      padding: const EdgeInsets.only(
                          left: 16, right: 16, top: 12, bottom: 8),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: const [
                              BoxShadow(
                                  color: Color(0X520E151B),
                                  blurRadius: 4,
                                  offset: Offset(0, 2))
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  width: double.infinity,
                                  height: 200,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              'images/astrolabe_by_kaitokid7_dakmrah-fullview.jpg'),
                                          fit: BoxFit.cover)),
                                  child: const SizedBox(
                                      width: double.infinity,
                                      height: double.infinity)),
                              const SizedBox(height: 12),
                              const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Mary&Jane Fund',
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          'Inception date: 15 Feb 2022',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0XFF57636C),
                                              fontWeight: FontWeight.w400),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(top: 5),
                                            child: Text('Return(%)',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Color(0XFF57636C),
                                                    fontWeight:
                                                        FontWeight.w400))),
                                        Text(
                                          '4.29',
                                          style: TextStyle(
                                              fontSize: 24,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    )
                                  ])
                            ],
                          ),
                        ),
                      )),
                  const Padding(
                      padding: EdgeInsets.only(left: 24, top: 12),
                      child: Text(
                        'Others',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0XFF57636C),
                            fontWeight: FontWeight.w400),
                      )),
                  Padding(
                      padding:
                          const EdgeInsets.only(left: 16, right: 16, bottom: 8),
                      child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: const [
                                BoxShadow(
                                    color: Color(0X520E151B),
                                    blurRadius: 4,
                                    offset: Offset(0, 2))
                              ]),
                          child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Row(children: [
                                Container(
                                    width: 80,
                                    height: 80,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        image: const DecorationImage(
                                            image: AssetImage(
                                                'images/eyeglasses_by_kaitokid7_dait23t-fullview.jpg'),
                                            fit: BoxFit.cover)),
                                    child: const SizedBox(
                                        width: double.infinity,
                                        height: double.infinity)),
                                const SizedBox(width: 12),
                                const Expanded(
                                    flex: 2,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Smart Glasses Fund',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          'Inception date: \n17 May 2018',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0XFF57636C),
                                              fontWeight: FontWeight.w400),
                                        )
                                      ],
                                    )),
                                const SizedBox(width: 12),
                                const Expanded(
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(top: 5),
                                        child: Text('Return(%)',
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Color(0XFF57636C),
                                                fontWeight: FontWeight.w400))),
                                    Text(
                                      '-1.67',
                                      style: TextStyle(
                                          fontSize: 22,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ))
                              ])))),
                  Padding(
                      padding:
                          const EdgeInsets.only(left: 16, right: 16, bottom: 8),
                      child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: const [
                                BoxShadow(
                                    color: Color(0X520E151B),
                                    blurRadius: 4,
                                    offset: Offset(0, 2))
                              ]),
                          child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Row(children: [
                                Container(
                                    width: 80,
                                    height: 80,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        image: const DecorationImage(
                                            image: AssetImage(
                                                'images/random_company_logo__1_by_kaitokid7_dait24j-fullview.jpg'),
                                            fit: BoxFit.cover)),
                                    child: const SizedBox(
                                        width: double.infinity,
                                        height: double.infinity)),
                                const SizedBox(width: 12),
                                const Expanded(
                                    flex: 2,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Tiger Tech Fund',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          'Inception date: \n17 May 2018',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0XFF57636C),
                                              fontWeight: FontWeight.w400),
                                        )
                                      ],
                                    )),
                                const SizedBox(width: 12),
                                const Expanded(
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(top: 5),
                                        child: Text('Return(%)',
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Color(0XFF57636C),
                                                fontWeight: FontWeight.w400))),
                                    Text(
                                      '2.14',
                                      style: TextStyle(
                                          fontSize: 22,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ))
                              ])))),
                  Padding(
                      padding:
                          const EdgeInsets.only(left: 16, right: 16, bottom: 8),
                      child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: const [
                                BoxShadow(
                                    color: Color(0X520E151B),
                                    blurRadius: 4,
                                    offset: Offset(0, 2))
                              ]),
                          child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Row(children: [
                                Container(
                                    width: 80,
                                    height: 80,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        image: const DecorationImage(
                                            image: AssetImage(
                                                'images/random_company_logo__2_by_kaitokid7_dait25f-fullview.jpg'),
                                            fit: BoxFit.cover)),
                                    child: const SizedBox(
                                        width: double.infinity,
                                        height: double.infinity)),
                                const SizedBox(width: 12),
                                const Expanded(
                                    flex: 2,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Tom&Jerry Fund',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          'Inception date: \n21 June 2020',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0XFF57636C),
                                              fontWeight: FontWeight.w400),
                                        )
                                      ],
                                    )),
                                const SizedBox(width: 12),
                                const Expanded(
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(top: 5),
                                        child: Text('Return(%)',
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Color(0XFF57636C),
                                                fontWeight: FontWeight.w400))),
                                    Text(
                                      '2.86',
                                      style: TextStyle(
                                          fontSize: 22,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ))
                              ])))),
                  Padding(
                      padding:
                          const EdgeInsets.only(left: 16, right: 16, bottom: 8),
                      child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: const [
                                BoxShadow(
                                    color: Color(0X520E151B),
                                    blurRadius: 4,
                                    offset: Offset(0, 2))
                              ]),
                          child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Row(children: [
                                Container(
                                    width: 80,
                                    height: 80,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        image: const DecorationImage(
                                            image: AssetImage(
                                                'images/random_company_logo__3_by_kaitokid7_dait25d-fullview.jpg'),
                                            fit: BoxFit.cover)),
                                    child: const SizedBox(
                                        width: double.infinity,
                                        height: double.infinity)),
                                const SizedBox(width: 12),
                                const Expanded(
                                    flex: 2,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Alibaba Fund',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          'Inception date: \n21 Aug 2021',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0XFF57636C),
                                              fontWeight: FontWeight.w400),
                                        )
                                      ],
                                    )),
                                const SizedBox(width: 12),
                                const Expanded(
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(top: 5),
                                        child: Text('Return(%)',
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Color(0XFF57636C),
                                                fontWeight: FontWeight.w400))),
                                    Text(
                                      '1.32',
                                      style: TextStyle(
                                          fontSize: 22,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ))
                              ]))))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
