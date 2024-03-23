import 'package:flutter/material.dart';
import 'package:multi_chip_picker/multi_chip_picker.dart';

class UserInfo extends StatefulWidget {
  const UserInfo({super.key});

  @override
  UserInfoState createState() => UserInfoState();
}

class UserInfoState extends State<UserInfo> {
  String _dropdownValue1 = 'Low';
  final _items1 = ['High', 'Medium', 'Low'];

  String _dropdownValue2 = 'Ultra-Short-term (Less than a year)';
  final _items2 = [
    'Long-term (10+ years)',
    'Medium-term (3-10 years)',
    'Short-term (1-3 years)',
    'Ultra-Short-term (Less than a year)'
  ];

  String _dropdownValue3 = 'Weekly';
  final _items3 = ['Yearly', 'Monthly', 'Weekly'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0XFFF1F4F8),
        body: SingleChildScrollView(
            child: SafeArea(
          child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Column(
                children: [
                  const Center(
                    child: Text(
                      "Tell us more about you!",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.normal,
                          color: Color(0XFF14181B),
                          fontFamily: 'Readex Pro'),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Column(
                    children: [
                      const Center(
                        child: Text(
                          "What is your reason of investing?",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                              color: Color(0XFF14181B),
                              fontFamily: 'Readex Pro'),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left: 21, right: 21),
                          child: Wrap(spacing: 5.0, runSpacing: 1.0, children: [
                            MultiChipPicker(
                              filterChips: [
                                FilterChipData('Capital Preservation', false),
                                FilterChipData('Income Generation', false),
                                FilterChipData('Goal Alignment', false),
                                FilterChipData('Learning Experience', false),
                                FilterChipData(
                                    'Portfolio Diversification', false),
                              ],
                              onChanged: (selectedFilterChips) {
                                // Handle the updated list of selected filter chips
                              },
                              labelStyle: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Color(0XFF14181B),
                                  fontFamily: 'Readex Pro'),
                              shape: const StadiumBorder(
                                  side: BorderSide(
                                color: Color(0XFFE0E3E7),
                              )),
                              disabledColor: const Color(0XFFE0E3E7),
                              selectedColor: const Color(0XFFFF9973),
                              backgroundColor: const Color(0XFFFFFFFF),
                            )
                          ]))
                    ],
                  ),
                  const SizedBox(height: 30),
                  Column(
                    children: [
                      const Center(
                        child: Text(
                          "How much risk are you willing to take?",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                              color: Color(0XFF14181B),
                              fontFamily: 'Readex Pro'),
                        ),
                      ),
                      Center(
                          child: Container(
                              width: 90,
                              height: 45,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0XFFFFFFFF)),
                              child: Center(
                                  child: DropdownButton(
                                items: _items1.map((String item) {
                                  return DropdownMenuItem(
                                      value: item, child: Text(item));
                                }).toList(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    _dropdownValue1 = newValue!;
                                  });
                                },
                                value: _dropdownValue1,
                                borderRadius: BorderRadius.circular(10),
                                alignment: Alignment.center,
                                underline: Container(),
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    color: Color(0XFF14181B),
                                    fontFamily: 'Readex Pro'),
                              ))))
                    ],
                  ),
                  const SizedBox(height: 30),
                  Column(
                    children: [
                      const Center(
                        child: Text(
                          "How long do you want to invest for?",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                              color: Color(0XFF14181B),
                              fontFamily: 'Readex Pro'),
                        ),
                      ),
                      Center(
                          child: Container(
                              width: 270,
                              height: 45,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0XFFFFFFFF)),
                              child: Center(
                                  child: DropdownButton(
                                items: _items2.map((String item) {
                                  return DropdownMenuItem(
                                      value: item, child: Text(item));
                                }).toList(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    _dropdownValue2 = newValue!;
                                  });
                                },
                                value: _dropdownValue2,
                                borderRadius: BorderRadius.circular(10),
                                alignment: Alignment.center,
                                underline: Container(),
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    color: Color(0XFF14181B),
                                    fontFamily: 'Readex Pro'),
                              ))))
                    ],
                  ),
                  const SizedBox(height: 30),
                  Column(children: [
                    const Center(
                      child: Text(
                        "How much is your starting capital?",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            color: Color(0XFF14181B),
                            fontFamily: 'Readex Pro'),
                      ),
                    ),
                    Center(
                        child: Padding(
                            padding: const EdgeInsets.only(left: 30, right: 30),
                            child: Container(
                                width: 300,
                                height: 45,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0XFFFFFFFF)),
                                child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 3, right: 12),
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                        hintText: 'Type here...',
                                        hintStyle: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal,
                                            color: Color(0XFF14181B),
                                            fontFamily: 'Readex Pro'),
                                        icon: Icon(Icons.attach_money_rounded),
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                            borderSide: BorderSide(
                                              color: Color(0XFFFFFFFF),
                                            )),
                                      ),
                                    )))))
                  ]),
                  const SizedBox(height: 30),
                  Column(children: [
                    const Center(
                      child: Text(
                        "How much is your regular savings?",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            color: Color(0XFF14181B)),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 45, right: 45),
                        child: Row(children: [
                          Expanded(
                              flex: 30,
                              child: Container(
                                  height: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color(0XFFFFFFFF)),
                                  child: Center(
                                      child: DropdownButton(
                                    items: _items3.map((String item) {
                                      return DropdownMenuItem(
                                          value: item, child: Text(item));
                                    }).toList(),
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        _dropdownValue3 = newValue!;
                                      });
                                    },
                                    value: _dropdownValue3,
                                    borderRadius: BorderRadius.circular(10),
                                    alignment: Alignment.center,
                                    underline: Container(),
                                    style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                        color: Color(0XFF14181B),
                                        fontFamily: 'Readex Pro'),
                                  )))),
                          const SizedBox(width: 10),
                          Expanded(
                              flex: 70,
                              child: Center(
                                  child: Container(
                                      height: 45,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: const Color(0XFFFFFFFF)),
                                      child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 3, right: 12),
                                          child: TextFormField(
                                            decoration: const InputDecoration(
                                              hintText: 'Type here...',
                                              hintStyle: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.normal,
                                                  color: Color(0XFF14181B),
                                                  fontFamily: 'Readex Pro'),
                                              icon: Icon(
                                                  Icons.attach_money_rounded),
                                              enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(10)),
                                                  borderSide: BorderSide(
                                                    color: Color(0XFFFFFFFF),
                                                  )),
                                            ),
                                          )))))
                        ]))
                  ]),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0XFFFF9973),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: const Text('Done',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0XFF14181B),
                        )),
                    onPressed: () => Navigator.of(context).pop(),
                  )
                ],
              )),
        )));
  }
}
