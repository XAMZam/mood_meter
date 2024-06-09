import 'package:flutter/material.dart';
import 'package:mood_meter/services/education_service.dart';

class EducationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final articles = EducationService().getArticles();

    return Scaffold(
      appBar: AppBar(
        title: Text('Education'),
      ),
      body: ListView.builder(
        itemCount: articles.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(articles[index].title),
            subtitle: Text(articles[index].summary),
          );
        },
      ),
    );
  }
}
