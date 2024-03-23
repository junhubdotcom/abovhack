import 'package:abovhack/Education/models/chart_data.dart';
import 'package:abovhack/Education/models/stocks.dart';
import 'package:abovhack/Education/widgets/trade_chart.dart';
import 'package:csv/csv.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

enum ChartInterval { fiveMin, day, week, month }

class TradePage extends StatefulWidget {
  @override
  _TradePageState createState() => _TradePageState();
}

class _TradePageState extends State<TradePage> {
  late ChartInterval _selectedInterval;

  late List<Stock> stocks = [
    Stock(name: 'IBM', icon: Icons.computer, price: 150.25),
    Stock(name: 'GOOG', icon: Icons.attach_money, price: 2750.50),
    Stock(name: 'TSLA', icon: Icons.trending_up, price: 700.30),
    Stock(name: 'AMZN', icon: Icons.shopping_cart, price: 3400.75),
    Stock(name: 'AAPL', icon: Icons.money, price: 305.40),
  ];

  @override
  void initState() {
    _selectedInterval = ChartInterval.fiveMin;
    _loadChartData();
    super.initState();
  }

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
            padding: const EdgeInsets.all(4.0),
            color: Colors.grey[200],
            child: const Center(
              child: Text(
                'Balance: \$93,000',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 80,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: stocks.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
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
          Expanded(
            child: Container(
              color: Colors.grey[300],
              child: FutureBuilder<List<ChartSampleData>>(
                future: _loadChartData(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return const Center(child: Text('Error loading data'));
                  } else {
                    return TradeChart(chartData: snapshot.data!);
                  }
                },
              ),
            ),
          ),
          SizedBox(
            height: 40,
            child: Container(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildIntervalButton('5 Minutes', ChartInterval.fiveMin),
                  _buildIntervalButton('Day', ChartInterval.day),
                  _buildIntervalButton('Week', ChartInterval.week),
                  _buildIntervalButton('Month', ChartInterval.month),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _showBuyDialog();
                  },
                  child: const Text('Buy'),
                ),
                ElevatedButton(
                  onPressed: () {
                    _showSellDialog();
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

  Widget _buildIntervalButton(String label, ChartInterval interval) {
    return TextButton(
      onPressed: () {
        _changeInterval(interval);
      },
      child: Text(label),
    );
  }

  void _changeInterval(ChartInterval interval) {
    setState(() {
      _selectedInterval = interval;
    });
  }

  Future<List<ChartSampleData>> _loadChartData() async {
    String csvFileName = '';
    switch (_selectedInterval) {
      case ChartInterval.fiveMin:
        csvFileName = 'intraday_5min_IBM.csv';
        break;
      case ChartInterval.day:
        csvFileName = 'daily_IBM.csv';
        break;
      case ChartInterval.week:
        csvFileName = 'weekly_IBM.csv';
        break;
      case ChartInterval.month:
        csvFileName = 'monthly_IBM.csv';
        break;
    }

    final String csvString =
        await DefaultAssetBundle.of(context).loadString('assets/$csvFileName');

    List<List<dynamic>> csvData = const CsvToListConverter().convert(csvString);

    csvData.removeAt(0);

    return csvData.map((row) {
      DateTime timestamp;
      if (_selectedInterval == ChartInterval.fiveMin) {
        timestamp = DateFormat('dd/MM/yyyy HH:mm').parse(row[0]);
      } else {
        timestamp = DateFormat('dd/MM/yyyy').parse(row[0]);
      }
      return ChartSampleData(
        x: timestamp,
        open: double.parse(row[1].toString()),
        high: double.parse(row[2].toString()),
        low: double.parse(row[3].toString()),
        close: double.parse(row[4].toString()),
      );
    }).toList();
  }

  void _showBuyDialog() {
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
  }

  void _showSellDialog() {
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
  }
}
