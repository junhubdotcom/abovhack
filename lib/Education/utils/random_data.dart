import 'dart:math';

List<Map<String, dynamic>> generateRandomData() {
  Random random = Random();
  List<Map<String, dynamic>> data = [];

  for (int i = 0; i < 30; i++) {
    double open = 50.0 + random.nextDouble() * 50.0;
    double high = open + random.nextDouble() * 50.0;
    double low = open - random.nextDouble() * 50.0;
    double close = low + random.nextDouble() * (high - low);
    double volumeTo = random.nextDouble() * 10000.0;

    Map<String, dynamic> dataPoint = {
      "open": open,
      "high": high,
      "low": low,
      "close": close,
      "volumeto": volumeTo,
    };

    data.add(dataPoint);
  }

  return data;
}
