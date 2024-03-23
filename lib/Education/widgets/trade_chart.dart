import 'package:abovhack/Education/models/chart_data.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';
import 'dart:math';

class TradeChart extends StatefulWidget {
  const TradeChart({Key? key, required this.chartData}) : super(key: key);

  final List<ChartSampleData> chartData;

  @override
  _TradeChartState createState() => _TradeChartState();
}

class _TradeChartState extends State<TradeChart> {
  late List<ChartSampleData> _chartData;
  late double _minX;
  late double _maxX;
  late double _minY;
  late double _maxY;
  late TrackballBehavior _trackballBehavior;
  late ZoomPanBehavior _zoomPanBehavior;

  @override
  void initState() {
    _trackballBehavior = TrackballBehavior(
      enable: true,
      activationMode: ActivationMode.singleTap,
    );
    _zoomPanBehavior =
        ZoomPanBehavior(enablePanning: true, enablePinching: true);
    _chartData = widget.chartData;
    _calculateMinMaxValues();
    super.initState();
  }

  void _calculateMinMaxValues() {
    _minX = _chartData
        .map((data) => data.x!.millisecondsSinceEpoch)
        .reduce(min)
        .toDouble();
    _maxX = _chartData
        .map((data) => data.x!.millisecondsSinceEpoch)
        .reduce(max)
        .toDouble();
    _minY = _chartData.map((data) => data.low!).whereType<double>().reduce(min);
    _maxY =
        _chartData.map((data) => data.high!).whereType<double>().reduce(max);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SfCartesianChart(
          legend: Legend(isVisible: true),
          trackballBehavior: _trackballBehavior,
          zoomPanBehavior: _zoomPanBehavior,
          series: <CandleSeries>[
            CandleSeries<ChartSampleData, DateTime>(
              dataSource: _chartData,
              name: 'IBM',
              xValueMapper: (ChartSampleData sales, _) => sales.x,
              lowValueMapper: (ChartSampleData sales, _) => sales.low,
              highValueMapper: (ChartSampleData sales, _) => sales.high,
              openValueMapper: (ChartSampleData sales, _) => sales.open,
              closeValueMapper: (ChartSampleData sales, _) => sales.close,
            ),
          ],
          primaryXAxis: DateTimeAxis(
            intervalType: DateTimeIntervalType.auto,
            majorGridLines: MajorGridLines(width: 0),
          ),
          primaryYAxis: NumericAxis(
            minimum: _minY - 5,
            maximum: _maxY + 5,
            numberFormat: NumberFormat.simpleCurrency(decimalDigits: 0),
          ),
        ),
      ),
    );
  }
}
