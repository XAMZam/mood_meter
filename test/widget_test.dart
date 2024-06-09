import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mood_meter/screens/home_screen.dart';

void main() {
  testWidgets('HomeScreen displays title and buttons', (WidgetTester tester) async {
    // Build our app and trigger a frame
    await tester.pumpWidget(MaterialApp(home: HomeScreen()));

    // Verify that the title is displayed
    expect(find.text('Mood Meter'), findsOneWidget);
    expect(find.text('Mood Entry'), findsOneWidget);
    expect(find.text('Mood Tracking'), findsOneWidget);
    expect(find.text('Mood Visualization'), findsOneWidget);
    expect(find.text('Insights'), findsOneWidget);
    expect(find.text('Community'), findsOneWidget);
    expect(find.text('Reminders'), findsOneWidget);
    expect(find.text('Education'), findsOneWidget);
    expect(find.text('Interactive Exercises'), findsOneWidget);

    // Verify that the buttons are displayed
    expect(find.widgetWithText(ListTile, 'Mood Entry'), findsOneWidget);
    expect(find.widgetWithText(ListTile, 'Mood Tracking'), findsOneWidget);
    expect(find.widgetWithText(ListTile, 'Mood Visualization'), findsOneWidget);
    expect(find.widgetWithText(ListTile, 'Insights'), findsOneWidget);
    expect(find.widgetWithText(ListTile, 'Community'), findsOneWidget);
    expect(find.widgetWithText(ListTile, 'Reminders'), findsOneWidget);
    expect(find.widgetWithText(ListTile, 'Education'), findsOneWidget);
    expect(find.widgetWithText(ListTile, 'Interactive Exercises'), findsOneWidget);
  });
}
