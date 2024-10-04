import 'package:flutter/material.dart';
import 'package:movie/screen.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(Mymovie());
}

class Mymovie extends StatelessWidget {
  const Mymovie({Key?key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
