import 'package:abovhack/HomePage.dart';
import 'package:abovhack/SocialMedia/Customise%20Widget/listOfInterest.dart';
import 'package:abovhack/SocialMedia/SocialMediaHomePage.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';

class InterestsPage extends StatefulWidget {
  const InterestsPage({Key? key});

  @override
  State<InterestsPage> createState() => _InterestsPageState();
}

class _InterestsPageState extends State<InterestsPage> {
  late SharedPreferences sharedPreferences;
  bool isFirstView = false;

  void initState() {
    super.initState();
    _loadButtonState();
  }

  Future<void> _loadButtonState() async {
    sharedPreferences = await SharedPreferences.getInstance();
    setState(
      () {
        isFirstView = sharedPreferences.getBool('isFirstView') ??
            false; //if the toggle button method return isFirstView
      },
    );
  }

  Future<void> _toggleButtonState() async {
    setState(() {
      isFirstView =
          !isFirstView; //initially is wrong so when pressed will change to true
    });
    await sharedPreferences.setBool(
        'isFirstView', isFirstView); //set is first view as true
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: IconButton(
      //     icon: const Icon(Icons.arrow_back, size: 35.0, color: Color(0XFFFF9973)),
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 35, right: 35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  "Interest",
                  style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                ),
              ),
              const Center(
                child: Text(
                  "Unlock the Secrets of Financial Success",
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                "Financial Concept",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Container(
                child: const Column(
                  children: [
                    Row(
                      children: [
                        InterestButton(interestName: "Income"),
                        InterestButton(interestName: "Expenses"),
                        InterestButton(interestName: "Assets"),
                        InterestButton(interestName: "Liabilities"),
                      ],
                    ),
                    Row(
                      children: [
                        InterestButton(interestName: "Budgeting"),
                        InterestButton(interestName: "Cash Flow Management"),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Financial Skills",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Container(
                child: const Column(
                  children: [
                    Row(
                      children: [
                        InterestButton(interestName: "Creating Budget"),
                        InterestButton(interestName: "Tracking Expenses"),
                      ],
                    ),
                    Row(
                      children: [
                        InterestButton(interestName: "Paying Off Debt"),
                        InterestButton(interestName: "Setting Financial Goals"),
                      ],
                    ),
                    Row(
                      children: [
                        InterestButton(interestName: "Saving Money"),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Investment Knowledge",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Container(
                child: const Column(
                  children: [
                    Row(
                      children: [
                        InterestButton(interestName: "Stocks"),
                        InterestButton(interestName: "Bonds"),
                        InterestButton(interestName: "Mutual Funds"),
                        InterestButton(interestName: "Real Estate"),
                      ],
                    ),
                    Row(
                      children: [
                        InterestButton(interestName: "Retirement Accounts"),
                        InterestButton(interestName: "Risk and Return"),
                      ],
                    ),
                    Row(
                      children: [
                        InterestButton(interestName: "Diversification"),
                        InterestButton(interestName: "Investment Strategies"),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Insurance and Risk Management",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Container(
                child: const Column(
                  children: [
                    Row(
                      children: [
                        InterestButton(interestName: "Health Insurance"),
                        InterestButton(interestName: "Life Insurance"),
                      ],
                    ),
                    Row(
                      children: [
                        InterestButton(interestName: "Auto Insurance"),
                        InterestButton(interestName: "Homeowners' Insurance"),
                      ],
                    ),
                    Row(
                      children: [
                        InterestButton(
                            interestName: "Insurance in Risk Management"),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Tax Awareness",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Container(
                child: const Column(
                  children: [
                    Row(
                      children: [
                        InterestButton(interestName: "Filing Taxes"),
                        InterestButton(interestName: "Deductions"),
                        InterestButton(interestName: "Credits"),
                      ],
                    ),
                    Row(
                      children: [
                        InterestButton(
                            interestName: "Taxes Impact on Personal Finances"),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text("Digital Financial Literacy",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
              Container(
                child: Column(
                  children: [
                    const Row(
                      children: [
                        InterestButton(interestName: "Online Banking"),
                        InterestButton(interestName: "Mobile Payment Apps"),
                      ],
                    ),
                    const SizedBox(height: 50),
                    ElevatedButton(
                      onPressed: () async {
                        await _toggleButtonState();
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },
                      child: const Text(
                        "Continue",
                        style: TextStyle(color: Colors.black, fontSize: 18.0),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff7ecfe0),
                          fixedSize: const Size(150, 40)),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
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
