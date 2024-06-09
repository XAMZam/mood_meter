import 'package:flutter/material.dart';
import 'package:mood_meter/services/community_service.dart';

class CommunityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final posts = CommunityService().getCommunityPosts();

    return Scaffold(
      appBar: AppBar(
        title: Text('Community'),
      ),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(posts[index].title),
            subtitle: Text(posts[index].content),
          );
        },
      ),
    );
  }
}
