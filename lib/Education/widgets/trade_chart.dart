import 'package:abovhack/Education/utils/flutter_candlesticks.dart';
import 'package:abovhack/Education/utils/random_data.dart';
import 'package:flutter/material.dart';

class TradeChart extends StatelessWidget {
  const TradeChart({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> sampleData = generateRandomData();

    return OHLCVGraph(
      fallbackHeight: 600,
      fallbackWidth: 400,
        data: sampleData,
        enableGridLines: true,
        volumeProp: 0.15,
        gridLineAmount: 5,
        gridLineColor: Colors.grey,
        gridLineLabelColor: Colors.grey);
  }
}
