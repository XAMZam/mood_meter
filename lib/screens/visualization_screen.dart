import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:provider/provider.dart';
import 'package:mood_meter/mood_data_provider.dart';

class VisualizationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<MoodDataProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Mood Visualization'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: LineChart(
            LineChartData(
              gridData: FlGridData(show: false),
              titlesData: FlTitlesData(show: true),
              borderData: FlBorderData(show: true),
              lineBarsData: [
                LineChartBarData(
                  spots: dataProvider.getMoodEntries().asMap().entries.map((entry) {
                    final index = entry.key;
                    final moodEntry = entry.value;
                    return FlSpot(index.toDouble(), moodEntry.mood.intensity.toDouble());
                  }).toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
