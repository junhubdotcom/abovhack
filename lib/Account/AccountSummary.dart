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
                      Expanded(
                        flex: 40,
                        child: Container(
                          height: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0XFFFFF3F3),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.payment_rounded, color: Color(0XFF14181B), size: 32),
                              Text(
                                '\$56.4k',
                                style: TextStyle(
                                  fontSize: 36,
                                  color: Color(0XFF14181B),
                                  fontWeight: FontWeight.w600
                                )
                              ),
                              Text(
                                'Total Investment',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0XFF57636C),
                                  fontWeight: FontWeight.w400
                                )
                              )
                            ],
                          )
                        )
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        flex: 40,
                        child: Container(
                          height: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0XFF7ECFE0),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.moving_rounded, color: Color(0XFF14181B), size: 32),
                              Text(
                                '\$1,200',
                                style: TextStyle(
                                  fontSize: 36,
                                  color: Color(0XFF14181B),
                                  fontWeight: FontWeight.w600
                                )
                              ),
                              Text(
                                'Total Profit',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0XFF57636C),
                                  fontWeight: FontWeight.w400
                                )
                              )
                            ],
                          )
                        )
                      )
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
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0XFF7ECFE0),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.calendar_month, color: Color(0XFF14181B), size: 32),
                              Text(
                                '487 days',
                                style: TextStyle(
                                  fontSize: 36,
                                  color: Color(0XFF14181B),
                                  fontWeight: FontWeight.w600
                                )
                              ),
                              Text(
                                'Time Active',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0XFF57636C),
                                  fontWeight: FontWeight.w400
                                )
                              )
                            ],
                          )
                        )
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        flex: 40,
                        child: Container(
                          height: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0XFFFFF3F3),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.content_paste, color: Color(0XFF14181B), size: 32),
                              Text(
                                '2',
                                style: TextStyle(
                                  fontSize: 36,
                                  color: Color(0XFF14181B),
                                  fontWeight: FontWeight.w600
                                )
                              ),
                              Text(
                                'Active Plan',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0XFF57636C),
                                  fontWeight: FontWeight.w400
                                )
                              )
                            ],
                          )
                        )
                      )
                    ],
                  )
                ],
              )
            ),
            const Padding(
              padding: EdgeInsets.only(left: 24, bottom: 12),
              child: Text(
                'Recent',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0XFF57636C),
                  fontWeight: FontWeight.w400
                )
              )
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, bottom: 12),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0XFFFFF3F3),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 12, bottom: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Deposit',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0XFF14181B),
                                  fontWeight: FontWeight.w400
                                )
                              ),
                              SizedBox(height: 4),
                              Text(
                                '20/3/2024',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0XFF57636C),
                                  fontWeight: FontWeight.w400
                                )
                              )
                            ],
                          ),
                          Text(
                            '\$1,500',
                            style: TextStyle(
                              fontSize: 24,
                              color: Color(0XFF14181B),
                              fontWeight: FontWeight.w500
                            )
                          )
                        ]
                      )
                    )
                  )
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, bottom: 12),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0XFFFFF3F3),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 12, bottom: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Deposit',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0XFF14181B),
                                  fontWeight: FontWeight.w400
                                )
                              ),
                              SizedBox(height: 4),
                              Text(
                                '18/2/2024',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0XFF57636C),
                                  fontWeight: FontWeight.w400
                                )
                              )
                            ],
                          ),
                          Text(
                            '\$2,130',
                            style: TextStyle(
                              fontSize: 24,
                              color: Color(0XFF14181B),
                              fontWeight: FontWeight.w500
                            )
                          )
                        ]
                      )
                    )
                  )
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, bottom: 12),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0XFFFFF3F3),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 12, bottom: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Cash Out',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0XFF14181B),
                                  fontWeight: FontWeight.w400
                                )
                              ),
                              SizedBox(height: 4),
                              Text(
                                '31/1/2024',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0XFF57636C),
                                  fontWeight: FontWeight.w400
                                )
                              )
                            ],
                          ),
                          Text(
                            '\$7,799',
                            style: TextStyle(
                              fontSize: 24,
                              color: Color(0XFF14181B),
                              fontWeight: FontWeight.w500
                            )
                          )
                        ]
                      )
                    )
                  )
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, bottom: 12),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0XFFFFF3F3),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, top: 12, bottom: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Deposit',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0XFF14181B),
                                  fontWeight: FontWeight.w400
                                )
                              ),
                              SizedBox(height: 4),
                              Text(
                                '19/1/2024',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0XFF57636C),
                                  fontWeight: FontWeight.w400
                                )
                              )
                            ],
                          ),
                          Text(
                            '\$1,755',
                            style: TextStyle(
                              fontSize: 24,
                              color: Color(0XFF14181B),
                              fontWeight: FontWeight.w500
                            )
                          )
                        ]
                      )
                    )
                  )
                )
              ]
            )
          ]
        ),
      ),
    );
  }
}