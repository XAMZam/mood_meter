class InteractiveExercise {
  final String title;
  final String description;

  InteractiveExercise(this.title, this.description);
}

class InteractiveService {
  List<InteractiveExercise> getExercises() {
    return [
      InteractiveExercise('Breathing Exercise', 'Follow these steps...'),
      InteractiveExercise('Guided Meditation', 'Listen to this audio...'),
    ];
  }
}
