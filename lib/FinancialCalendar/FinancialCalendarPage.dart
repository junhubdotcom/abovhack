import 'package:abovhack/FinancialCalendar/FinancialEvents.dart';
import 'package:flutter/material.dart';

enum ImpactLevel { High, Med, Low }

class FinancialCalendarPage extends StatelessWidget {
  const FinancialCalendarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFFFF3F3),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blueGrey.shade700,
            ),
            padding: const EdgeInsets.all(12),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                    width: 44,
                    child: Text(
                      'Previous\nPrice',
                      style: TextStyle(
                        fontSize: 8.0,
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                      ),
                      textAlign: TextAlign.center,
                    )),
                SizedBox(width: 4.0),
                SizedBox(
                  width: 44,
                  child: Text(
                    'Current\nPrice',
                    style: TextStyle(
                      fontSize: 8.0,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(width: 4.0),
                SizedBox(
                    width: 44,
                    child: Text(
                      'Forecast\nPrice',
                      style: TextStyle(
                        fontSize: 8.0,
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                      ),
                      textAlign: TextAlign.center,
                    )),
                SizedBox(width: 4.0),
                SizedBox(
                    width: 44,
                    child: Text(
                      'Impact',
                      style: TextStyle(
                        fontSize: 8.0,
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                      ),
                      textAlign: TextAlign.center,
                    )),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: financialEvents.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: FinancialEventItem(
                    title: financialEvents[index].title,
                    dateTime: financialEvents[index].dateTime,
                    image: financialEvents[index].image,
                    previousPrice: financialEvents[index].previousPrice,
                    currentPrice: financialEvents[index].currentPrice,
                    forecastPrice: financialEvents[index].forecastPrice,
                    impact: financialEvents[index].impact,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class FinancialEventItem extends StatelessWidget {
  final String title;
  final String dateTime;
  final Image image;
  final String previousPrice;
  final String currentPrice;
  final String forecastPrice;
  final ImpactLevel impact;

  const FinancialEventItem({
    Key? key,
    required this.title,
    required this.dateTime,
    required this.image,
    required this.previousPrice,
    required this.currentPrice,
    required this.forecastPrice,
    required this.impact,
  }) : super(key: key);

  Color _getImpactColor(ImpactLevel level) {
    switch (level) {
      case ImpactLevel.High:
        return Colors.red;
      case ImpactLevel.Med:
        return Colors.orange;
      case ImpactLevel.Low:
        return Colors.green;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(6),
      ),
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 12)),
                const SizedBox(height: 2),
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: image,
                ),
                const SizedBox(height: 2),
                Text(dateTime, style: const TextStyle(fontSize: 8.0)),
              ],
            ),
          ),
          const SizedBox(width: 8.0),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const SizedBox(width: 4),
              SizedBox(
                width: 44,
                child: Text(
                  previousPrice,
                  style: const TextStyle(fontSize: 12),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(width: 4),
              SizedBox(
                  width: 44,
                  child: Text(
                    currentPrice,
                    style: const TextStyle(fontSize: 12),
                    textAlign: TextAlign.center,
                  )),
              const SizedBox(width: 4),
              SizedBox(
                  width: 44,
                  child: Text(
                    forecastPrice,
                    style: const TextStyle(fontSize: 12),
                    textAlign: TextAlign.center,
                  )),
              const SizedBox(width: 4),
              SizedBox(
                  width: 44,
                  child: Text(
                    impact.toString().split('.').last, // Extract enum name
                    style: TextStyle(
                      color: _getImpactColor(impact),
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.center,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
