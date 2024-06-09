import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mood_meter/mood_data_provider.dart';
import 'package:mood_meter/services/insights_service.dart';

class InsightsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<MoodDataProvider>(context);
    final insights = InsightsService().generateInsights(dataProvider.getMoodEntries());

    return Scaffold(
      appBar: AppBar(
        title: Text('Insights'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: insights.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(insights[index]),
            );
          },
        ),
      ),
    );
  }
}
