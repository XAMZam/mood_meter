class MoodEntry {
  final Mood mood;
  final DateTime timestamp;
  final String note;

  MoodEntry(this.mood, this.timestamp, this.note);
}

class Mood {
  final String name;
  final int intensity;

  Mood(this.name, this.intensity);
}

