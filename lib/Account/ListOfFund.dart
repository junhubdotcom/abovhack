import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ListOfFund extends StatefulWidget {
  const ListOfFund({super.key});

  @override
  ListOfFundState createState() => ListOfFundState();
}

class ListOfFundState extends State<ListOfFund> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 24, top: 46),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'List of Funds',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Recommended Funds',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0XFF57636C),
                      fontWeight: FontWeight.w400
                    ),
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
                  fontWeight: FontWeight.w400
                ),
              )
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 12, bottom: 8),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0X520E151B),
                      blurRadius: 4,
                      offset: Offset(0, 2)
                    )
                  ]
                ),
                child: const Padding(
                  padding: EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //image here
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Mary&Jane Fund',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w400
                            ),
                          ),
                          Text(
                            'Return(%)',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0XFF57636C),
                              fontWeight: FontWeight.w400
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text(
                              'Inception date: 15 Feb 2022',
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0XFF57636C),
                                fontWeight: FontWeight.w400
                              )
                            )
                          ),
                          Text(
                            '4.29%',
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.black,
                              fontWeight: FontWeight.w500
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ),
            const Padding(
              padding: EdgeInsets.only(left: 24, top: 12),
              child: Text(
                'Others',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0XFF57636C),
                  fontWeight: FontWeight.w400
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}