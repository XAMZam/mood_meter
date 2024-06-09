class EducationArticle {
  final String title;
  final String summary;

  EducationArticle(this.title, this.summary);
}

class EducationService {
  List<EducationArticle> getArticles() {
    return [
      EducationArticle(
          'Understanding Anxiety', 'An in-depth look at anxiety...'),
      EducationArticle(
          'Mindfulness Techniques', 'How to practice mindfulness...'),
    ];
  }
}
