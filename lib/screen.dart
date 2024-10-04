import 'package:flutter/material.dart';
import 'post_model.dart';
import 'bottombar.dart';
import 'custom_video.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  List<Post> posts = Post.posts;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: _appbar(context),
      bottomNavigationBar: bottombar(),
      extendBodyBehindAppBar: true,
      // ignore: prefer_const_constructors
      body: SingleChildScrollView(
          child: ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: posts.map((post) {
          return Customvideoplayer(post: post);
        }).toList(),
      )),
    );
  }
}

AppBar _appbar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.transparent,
    title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      _topbutton(context, 'For You'),
      _topbutton(context, 'Following')
    ]),
  );
}

TextButton _topbutton(BuildContext context, String txt) {
  return TextButton(
      onPressed: () {},
      child: Text(
        txt,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ));
}
