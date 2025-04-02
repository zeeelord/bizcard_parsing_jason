class Postlist {
  late final List<Post> posts;
  Postlist({required this.posts});

  factory Postlist.fromjson(List<dynamic> parsedJson) {
    List<Post> posts = parsedJson.map((i) => Post.fromJson(i)).toList();
    return new Postlist(posts: posts); //Post[0]
  }
}

class Post {
  int userId;
  int id;
  String title;
  String body;
  Post({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });
  //when we implement contructor, it will not create a constructor or instances always of it class
  //we are mapping now
  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}
