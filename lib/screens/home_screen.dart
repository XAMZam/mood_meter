import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mood Meter'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Mood Entry'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Mood Tracking'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Mood Visualization'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Insights'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Community'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Reminders'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Education'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Interactive Exercises'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
