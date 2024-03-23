import 'package:abovhack/HomePage.dart';
import 'package:abovhack/SocialMedia/Customise%20Widget/listOfInterest.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InterestsPage extends StatefulWidget {
  const InterestsPage({super.key});

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
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        "Interest",
                        style: TextStyle(
                            fontSize: 40.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Unlock the Secrets of Financial Success",
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      "Financial Concept",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Container(
                      child: Wrap(
                        spacing: 2.0,
                        runSpacing: 3.0,
                        children: <Widget>[
                          filterChipWidget(chipName: "Income"),
                          filterChipWidget(chipName: "Expenses"),
                          filterChipWidget(chipName: "Assets"),
                          filterChipWidget(chipName: "Liabilities"),
                          filterChipWidget(chipName: "Budgeting"),
                          filterChipWidget(chipName: "Cash Flow Management"),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      "Financial Concept",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Container(
                      child: Wrap(
                        spacing: 2.0,
                        runSpacing: 3.0,
                        children: <Widget>[
                          filterChipWidget(chipName: "Creating Budget"),
                          filterChipWidget(chipName: "Tracking Expenses"),
                          filterChipWidget(chipName: "Saving Money"),
                          filterChipWidget(chipName: "Paying Off Debt"),
                          filterChipWidget(chipName: "Setting Financial Goals"),
                          filterChipWidget(chipName: "Cash Flow Management"),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      "Investment Knowledge",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Container(
                      child: Wrap(
                        spacing: 2.0,
                        runSpacing: 3.0,
                        children: <Widget>[
                          filterChipWidget(chipName: "Stocks"),
                          filterChipWidget(chipName: "Bonds"),
                          filterChipWidget(chipName: "Mutual Funds"),
                          filterChipWidget(chipName: "Real Estate"),
                          filterChipWidget(chipName: "Retirement Account"),
                          filterChipWidget(chipName: "Risk and Return"),
                          filterChipWidget(chipName: "Diversification"),
                          filterChipWidget(chipName: "Investment Strategies"),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      "Insurance and Risk Management",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Container(
                      child: Wrap(
                        spacing: 2.0,
                        runSpacing: 3.0,
                        children: <Widget>[
                          filterChipWidget(chipName: "Health Insurance"),
                          filterChipWidget(chipName: "Life Insurance"),
                          filterChipWidget(chipName: "Auto Insurance"),
                          filterChipWidget(chipName: "Homeowners' Insurance"),
                          filterChipWidget(
                              chipName: "Insurance in Risk Management"),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      "Tax Awareness",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Container(
                      child: Wrap(
                        spacing: 2.0,
                        runSpacing: 3.0,
                        children: <Widget>[
                          filterChipWidget(chipName: "Filing Taxes"),
                          filterChipWidget(chipName: "Deductions"),
                          filterChipWidget(chipName: "Credits"),
                          filterChipWidget(
                              chipName: "Taxes Impact on Personal Finances"),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      "Digital Financial Literacy",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Container(
                      child: Wrap(
                        spacing: 2.0,
                        runSpacing: 3.0,
                        children: <Widget>[
                          filterChipWidget(chipName: "Online Banking"),
                          filterChipWidget(chipName: "Mobile Payment Apps"),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 40.0),
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
                        style: TextStyle(color: Colors.white, fontSize: 18.0),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff7ecfe0),
                          fixedSize: const Size(150, 40)),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class filterChipWidget extends StatefulWidget {
  final String chipName;

  filterChipWidget({Key? key, required this.chipName}) : super(key: key);

  @override
  _filterChipWidgetState createState() => _filterChipWidgetState();
}

class _filterChipWidgetState extends State<filterChipWidget> {
  var _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Text(
        widget.chipName,
      ),
      labelStyle: TextStyle(
          fontWeight: FontWeight.normal, fontSize: 15.0, color: Colors.black),
      selected: _isSelected,
      backgroundColor: Color(0xffebe2e0),
      selectedColor: Color(0xff7ecfe0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      onSelected: (isSelected) {
        setState(() {
          _isSelected = isSelected;
        });
      },
    );
  }
}
