class User {
  final String id;
  final String username;
  final String image;
  final int followers;
  final int followings;
  final int likes;

  User(
      {required this.username,
      required this.id,
      required this.image,
      this.followers = 0,
      this.followings = 0,
      this.likes = 0});

  static List<User> users = [
    User(
        username: 'helna',
        id: '1',
        image: "assets/images/img1.jpg",
        followers: 100,
        followings: 100,
        likes: 50),
    User(
        username: 'Abbey',
        id: '2',
        image: "assets/images/img2.jpg",
        followers: 200,
        followings: 200,
        likes: 50),
    User(
        username: 'Reni',
        id: '3',
        image: "assets/images/img3.jpg",
        followers: 10,
        followings: 200,
        likes: 5),
    User(
        username: 'Tabhe',
        id: '4',
        image: "assets/images/img4.jpg",
        followers: 500,
        followings: 100,
        likes: 900)
  ];
}
