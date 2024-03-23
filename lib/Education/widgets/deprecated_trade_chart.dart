import 'dart:ffi';

import 'package:abovhack/Education/utils/deprecated_flutter_candlesticks.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:csv/csv.dart';

class TradeChart extends StatefulWidget {
  const TradeChart({Key? key}) : super(key: key);

  @override
  _TradeChartState createState() => _TradeChartState();
}

class _TradeChartState extends State<TradeChart> {
  List<Map<String, dynamic>> chartData = [];

  @override
  void initState() {
    super.initState();
    loadChartData();
  }

  Future<void> loadChartData() async {
    final String csvString =
        await DefaultAssetBundle.of(context).loadString('assets/daily_IBM.csv');

    List<List<dynamic>> csvTable = CsvToListConverter().convert(csvString);

    csvTable.removeAt(0);

    setState(() {
      chartData = csvTable
          .map((row) {
            try {
              return {
                "open": row[1],
                "high": row[2],
                "low": row[3],
                "close": row[4],
                "volumeto": row[5],
              };
            } catch (e) {
              print('Error parsing row: $row');
              print(e);
              return null;
            }
          })
          .where((element) => element != null)
          .cast<Map<String, dynamic>>()
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return OHLCVGraph(
      data: chartData,
      enableGridLines: false,
      volumeProp: 0.15,
      gridLineAmount: 5,
      gridLineColor: Colors.grey,
      gridLineLabelColor: Colors.grey,
    );
  }
}
