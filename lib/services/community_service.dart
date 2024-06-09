class CommunityPost {
  final String title;
  final String content;

  CommunityPost(this.title, this.content);
}

class CommunityService {
  List<CommunityPost> getCommunityPosts() {
    return [
      CommunityPost('How to manage stress', 'Share your tips here...'),
      CommunityPost('Feeling down lately', 'Looking for support...'),
    ];
  }
}
