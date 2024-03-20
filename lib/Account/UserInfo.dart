import 'package:flutter/material.dart';
import 'package:multi_chip_picker/multi_chip_picker.dart';

class UserInfo extends StatefulWidget {
  const UserInfo({super.key});

  @override
  UserInfoState createState() => UserInfoState();
}

class UserInfoState extends State<UserInfo> {

  String _dropdownValue = 'High';

  final _items = ['High', 'Medium', 'Low'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFF1F4F8),
      body: SingleChildScrollView(
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
                    fontFamily: 'Readex Pro'
                  ),
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
                        fontFamily: 'Readex Pro'
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 21, right:21),
                    child: Wrap(
                      spacing: 5.0,
                      runSpacing: 1.0,
                      children: [
                        MultiChipPicker(
                          filterChips: [
                            FilterChipData('Capital Preservation', false),
                            FilterChipData('Income Generation', false),
                            FilterChipData('Goal Alignment', false),
                            FilterChipData('Learning Experience', false),
                            FilterChipData('Portfolio Diversification', false),
                          ],
                          onChanged: (selectedFilterChips) {
                            // Handle the updated list of selected filter chips
                          },
                          labelStyle: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal, 
                              color: Color(0XFF14181B), 
                              fontFamily: 'Readex Pro'
                          ),
                          shape: const StadiumBorder(
                            side: BorderSide(
                              color: Color(0XFFE0E3E7),
                            )
                          ),
                          disabledColor: const Color(0XFFE0E3E7),
                          selectedColor: const Color(0XFFFF9973),
                        )
                      ]
                    )
                  )
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
                        fontFamily: 'Readex Pro'
                      ),
                    ),
                  ),
                  Center(
                    child: DropdownButton(
                      items: _items.map((String item){
                        return DropdownMenuItem(
                          value: item,
                          child: Text(item)
                        );
                      }).toList(),
                      onChanged: (String? newValue){
                        setState(() {
                          _dropdownValue = newValue!;
                        });
                      },
                      value: _dropdownValue,
                    )
                  )
                ],
              )
            ],
          )
        )
      )
    );
  }
}