// ignore_for_file: library_private_types_in_public_api

import 'package:abovhack/Education/models/stocks.dart';
import 'package:abovhack/Education/widgets/new_trade_chart.dart';
import 'package:abovhack/Education/widgets/deprecated_trade_chart.dart';
import 'package:flutter/material.dart';

class TradePage extends StatefulWidget {
  @override
  _TradePageState createState() => _TradePageState();
}

class _TradePageState extends State<TradePage> {
  List<Stock> stocks = [
    Stock(name: 'AAPL', icon: Icons.money, price: 150.25),
    Stock(name: 'GOOG', icon: Icons.attach_money, price: 2750.50),
    Stock(name: 'TSLA', icon: Icons.trending_up, price: 700.30),
    Stock(name: 'AMZN', icon: Icons.shopping_cart, price: 3400.75),
    Stock(name: 'MSFT', icon: Icons.computer, price: 305.40),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffff9973),
      appBar: AppBar(
        title: const Text('Paper Trade Simulator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            color: Colors.grey[200],
            child: const Center(child: Text('Balance: \$93,000')),
          ),
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: stocks.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 80,
                      height: 80,
                      child: Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(stocks[index].icon),
                            Text(stocks[index].name),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child:
                Container(color: Colors.grey[300], child: NewTradeChart(title: 'AAPL')),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Buy Stock'),
                          content: const Text('Choose the quantity to buy'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Cancel'),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Buy'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: const Text('Buy'),
                ),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Sell Stock'),
                          content: const Text('Choose the quantity to sell'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Cancel'),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Sell'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: const Text('Sell'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
