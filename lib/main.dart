import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mood_meter/mood_data_provider.dart';
import 'package:mood_meter/screens/mood_entry_screen.dart';
import 'package:mood_meter/screens/mood_tracking_screen.dart';
import 'package:mood_meter/screens/visualization_screen.dart';
import 'package:mood_meter/screens/insights_screen.dart';
import 'package:mood_meter/screens/community_screen.dart';
import 'package:mood_meter/screens/reminders_screen.dart';
import 'package:mood_meter/screens/education_screen.dart';
import 'package:mood_meter/screens/interactive_screen.dart';
import 'package:mood_meter/services/notification_service.dart';
import 'package:timezone/data/latest.dart' as tz;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  tz.initializeTimeZones();
  await NotificationService().initialize();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MoodDataProvider(),
      child: MaterialApp(
        title: 'Mood Meter',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mood Meter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Mood Entry'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MoodEntryScreen()),
                );
              },
            ),
            ElevatedButton(
              child: Text('Mood Tracking'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MoodTrackingScreen()),
                );
              },
            ),
            ElevatedButton(
              child: Text('Mood Visualization'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => VisualizationScreen()),
                );
              },
            ),
            ElevatedButton(
              child: Text('Insights'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InsightsScreen()),
                );
              },
            ),
            ElevatedButton(
              child: Text('Community'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CommunityScreen()),
                );
              },
            ),
            ElevatedButton(
              child: Text('Reminders'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RemindersScreen()),
                );
              },
            ),
            ElevatedButton(
              child: Text('Education'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EducationScreen()),
                );
              },
            ),
            ElevatedButton(
              child: Text('Interactive Exercises'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InteractiveScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
