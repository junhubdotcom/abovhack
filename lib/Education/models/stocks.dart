import 'package:flutter/material.dart';

class Stock {
  final String name;
  final double price;
  final IconData icon;
  final List<Trade> trades;

  Stock({required this.name, required this.price, required this.icon, this.trades = const []});
}

class Trade {
  final int time;
  final double price;

  Trade({required this.time, required this.price});
}
