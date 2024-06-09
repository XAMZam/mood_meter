import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mood_meter/mood_data_provider.dart';
import 'package:intl/intl.dart';

class MoodTrackingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<MoodDataProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Mood Tracking'),
      ),
      body: ListView.builder(
        itemCount: dataProvider.getMoodEntries().length,
        itemBuilder: (context, index) {
          final moodEntry = dataProvider.getMoodEntries()[index];
          return ListTile(
            title: Text(moodEntry.mood.name),
            subtitle: Text('Intensity: ${moodEntry.mood.intensity}'),
            trailing: Text(DateFormat('HH:mm').format(moodEntry.timestamp)),
          );
        },
      ),
    );
  }
}
