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
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      ),
      child: Text(
        interestName,
        style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 15.0, color: Colors.black),
      ),
    );
  }
}