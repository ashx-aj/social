import 'package:movie/user_model.dart';

enum PostType { video, audio, image }

class Post {
  final String id;
  final User user;
  final PostType type;
  final String cap;
  final String path;

  Post(
      {required this.id,
      required this.user,
      required this.type,
      required this.cap,
      required this.path});

  static List<Post> posts = [
    Post(
        id: '1',
        user: User.users[0],
        type: PostType.video,
        cap: "This is a miracle",
        path: "assets/videos/vid2.mp4"),
    Post(
        id: '2',
        user: User.users[1],
        type: PostType.image,
        cap: "just swag",
        path: "assets/videos/vid1.mp4"),
    Post(
        id: '3',
        user: User.users[1],
        type: PostType.audio,
        cap: "Back to waork",
        path: "assets/videos/vid3.mp4"),
    Post(
        id: '4',
        user: User.users[1],
        type: PostType.video,
        cap: "Upset",
        path: "assets/videos/vid4.mp4"),
  ];
}
