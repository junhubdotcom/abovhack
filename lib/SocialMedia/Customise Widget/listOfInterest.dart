import 'package:flutter/material.dart';
 
 class InterestButton extends StatelessWidget {
  final String interestName;

  const InterestButton({
    required this.interestName,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        interestName,
        style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15.0, color: Colors.black),
      ),
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.only(left: 10.0, right: 10.0),
      ),
    );
  }
}