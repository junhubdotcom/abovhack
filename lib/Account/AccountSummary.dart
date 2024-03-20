import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AccountSummary extends StatefulWidget {
  const AccountSummary({super.key});

  @override
  AccountSummaryState createState() => AccountSummaryState();
}

class AccountSummaryState extends State<AccountSummary> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 24, top: 48),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Account Details',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Wealth Summary',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0XFF57636C),
                      fontWeight: FontWeight.w400
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 12, bottom: 12),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        color: Color(0XFF),
                      )
                    ],
                  )
                ],
              )
            )
          ]
        ),
      ),
    );
  }
}