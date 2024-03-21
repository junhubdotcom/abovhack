import 'package:abovhack/SocialMedia/Customise%20Widget/listOfInterest.dart';
import 'package:abovhack/SocialMedia/SocialMediaHomePage.dart';
import 'package:flutter/material.dart';

class InterestsPage extends StatelessWidget {
  const InterestsPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, size: 35.0, color: Color(0XFFFF9973)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 35, right: 35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "Interest",
                  style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                ),
              ),
              Center(
                child: Text(
                  "Unlock the Secrets of Financial Success",
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
              SizedBox(height: 30),
              Text(
                "Financial Concept",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Container(
                child: Column(
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
              SizedBox(height: 20),
              Text(
                "Financial Skills",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Container(
                child: Column(
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
              SizedBox(height: 20),
              Text(
                "Investment Knowledge",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Container(
                child: Column(
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
              SizedBox(height: 20),
              Text(
                "Insurance and Risk Management",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Container(
                child: Column(
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
              SizedBox(height: 20),
              Text(
                "Tax Awareness",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Container(
                child: Column(
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
              SizedBox(height: 20),
              Text("Digital Financial Literacy",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        InterestButton(interestName: "Online Banking"),
                        InterestButton(interestName: "Mobile Payment Apps"),
                      ],
                    ),
                    SizedBox(height: 50),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => SocialMediaHomePage())),
                        );
                      },
                      child: Text(
                        "Continue",
                        style: TextStyle(color: Colors.black, fontSize: 18.0),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff7ecfe0),
                          fixedSize: Size(150, 40)),
                    ),
                    SizedBox(
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
