import 'package:abovhack/Education/models/chart_data.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';

class NewTradeChart extends StatefulWidget {
  const NewTradeChart({Key? key, required this.chartData}) : super(key: key);

  final List<ChartSampleData> chartData;

  @override
  _NewTradeChartState createState() => _NewTradeChartState();
}

class _NewTradeChartState extends State<NewTradeChart> {
  late List<ChartSampleData> _chartData;
  late TrackballBehavior _trackballBehavior;
  late double _minPrice;
  late double _maxPrice;

  @override
  void initState() {
    _trackballBehavior = TrackballBehavior(
      enable: true,
      activationMode: ActivationMode.singleTap,
    );

    // Assign widget.chartData to _chartData
    _chartData = widget.chartData;

    // Calculate min and max prices dynamically
    _minPrice = _chartData
        .map((data) => data.low)
        .where((value) => value != null)
        .map<double>((value) => value!.toDouble())
        .reduce((a, b) => (a < b) ? a : b);

    _maxPrice = _chartData
        .map((data) => data.high)
        .where((value) => value != null)
        .map<double>((value) => value!.toDouble())
        .reduce((a, b) => (a > b) ? a : b);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SfCartesianChart(
          legend: Legend(isVisible: true),
          trackballBehavior: _trackballBehavior,
          series: <CandleSeries>[
            CandleSeries<ChartSampleData, DateTime>(
              dataSource: _chartData,
              name: 'AAPL',
              xValueMapper: (ChartSampleData sales, _) => sales.x,
              lowValueMapper: (ChartSampleData sales, _) => sales.low,
              highValueMapper: (ChartSampleData sales, _) => sales.high,
              openValueMapper: (ChartSampleData sales, _) => sales.open,
              closeValueMapper: (ChartSampleData sales, _) => sales.close,
            ),
          ],
          primaryXAxis: DateTimeAxis(
            dateFormat: DateFormat.MMM(),
            majorGridLines: MajorGridLines(width: 0),
          ),
          primaryYAxis: NumericAxis(
            minimum: _minPrice - 5, // Add a padding to the minimum value
            maximum: _maxPrice + 5, // Add a padding to the maximum value
            interval: 10,
            numberFormat: NumberFormat.simpleCurrency(decimalDigits: 0),
          ),
        ),
      ),
    );
  }
}
