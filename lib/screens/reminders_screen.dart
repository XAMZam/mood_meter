import 'package:flutter/material.dart';
import 'package:mood_meter/services/notification_service.dart';

class RemindersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reminders'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Set Daily Reminder'),
          onPressed: () {
            NotificationService().scheduleDailyNotification();
          },
        ),
      ),
    );
  }
}
