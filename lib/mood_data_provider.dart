import 'package:flutter/foundation.dart';
import 'models/mood_entry.dart';

class MoodDataProvider with ChangeNotifier {
  List<MoodEntry> _moodEntries = [];

  List<MoodEntry> getMoodEntries() {
    return _moodEntries;
  }

  void addMoodEntry(MoodEntry entry) {
    _moodEntries.add(entry);
    notifyListeners();
  }
}
