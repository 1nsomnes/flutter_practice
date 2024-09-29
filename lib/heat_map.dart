import 'package:flutter/material.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';

class MyHeatMap extends StatelessWidget {
  const MyHeatMap({super.key});

  @override
  Widget build(BuildContext context) {
    return HeatMap(
      datasets: {
        DateTime(2024, 9, 6): 3,
        DateTime(2024, 9, 7): 7,
        DateTime(2024, 9, 8): 10,
        DateTime(2024, 9, 9): 13,
        DateTime(2024, 9, 13): 6,
      },
      startDate: DateTime.now().add(const Duration(days: -30)),
      endDate: DateTime.now(),
      colorMode: ColorMode.opacity,
      size: 30,
      showText: false,
      scrollable: true,
      textColor: Colors.grey[100],
      colorsets: {
        1: Colors.red,
      },
      onClick: (value) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(value.toString())));
      },
    );
  }
}
