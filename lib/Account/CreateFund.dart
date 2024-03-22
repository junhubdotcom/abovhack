import 'package:abovhack/Account/UserInfo.dart';
import 'package:flutter/material.dart';

class CreateFund extends StatefulWidget {
  const CreateFund({super.key});

  @override
  CreateFundState createState() => CreateFundState();
}

class CreateFundState extends State<CreateFund> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: SingleChildScrollView(
                child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomRight,
                            colors: [Color(0XFFFF9973), Color(0XFF7ECFE0)])),
                    child: SingleChildScrollView(
                        child: Column(
                      children: [
                        const SizedBox(
                          height: 70,
                        ),
                        const Text(
                          'ABO',
                          style: TextStyle(
                              fontSize: 36,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(
                                left: 16, right: 16, top: 48),
                            child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: const Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: Padding(
                                    padding: const EdgeInsets.all(32),
                                    child: Column(
                                      children: [
                                        const Center(
                                            child: Text(
                                          'Want to start\nyour own fund?',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 36,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600),
                                        )),
                                        const SizedBox(
                                          height: 12,
                                        ),
                                        const Text(
                                            'Let\'s get started by checking out the brochure below.',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Color(0XFF57636C),
                                                fontWeight: FontWeight.w400)),
                                        const SizedBox(
                                          height: 24,
                                        ),
                                        SizedBox(
                                            height: 45,
                                            width: double.infinity,
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      const Color(0XFFFF9973),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10))),
                                              child: const Text('Read Brochure',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.white,
                                                      fontFamily:
                                                          'Readex Pro')),
                                              onPressed: () {
                                                // Navigate to the next screen
                                              },
                                            )),
                                        const SizedBox(
                                          height: 16,
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 16),
                                          child: Text(
                                              'Or sign up by filling out the form below.',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Color(0XFF57636C),
                                                  fontWeight: FontWeight.w400)),
                                        ),
                                        const SizedBox(height: 16),
                                        SizedBox(
                                            height: 45,
                                            width: double.infinity,
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      const Color(0XFF7ECFE0),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10))),
                                              child: const Text(
                                                  'Create Account',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.white,
                                                      fontFamily:
                                                          'Readex Pro')),
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: ((context) =>
                                                          UserInfo())),
                                                );
                                              },
                                            ))
                                      ],
                                    ))))
                      ],
                    ))))));
  }
}
