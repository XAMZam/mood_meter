import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mood_meter/mood_data_provider.dart';
import 'package:mood_meter/models/mood_entry.dart';

class MoodEntryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<MoodDataProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Mood Entry'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Implement UI for selecting mood and adding notes
            ElevatedButton(
              child: Text('Add Mood Entry'),
              onPressed: () {
                final mood = Mood('Happy', 5); // Example mood entry
                final moodEntry = MoodEntry(mood, DateTime.now(), 'Feeling good');
                dataProvider.addMoodEntry(moodEntry);
              },
            ),
          ],
        ),
      ),
    );
  }
}
