import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'post_model.dart';

class Customvideoplayer extends StatefulWidget {
  const Customvideoplayer({Key? key, required this.post});
  final Post post;
  @override
  State<Customvideoplayer> createState() => _CustomvideoplayerState();
}

class _CustomvideoplayerState extends State<Customvideoplayer> {
  late VideoPlayerController controller;
  @override
  void initState() {
    controller = VideoPlayerController.asset(widget.post.path);
    controller.initialize().then(
      (value) {
        setState(() {});
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return /* _fullscreen(
      child: */
        GestureDetector(
      onTap: () {
        setState(() {
          if (controller.value.isPlaying) {
            controller.pause();
          } else {
            controller.play();
          }
        });
      },
      child: AspectRatio(
          aspectRatio: controller.value.aspectRatio,
          child: Stack(fit: StackFit.expand, children: [
            VideoPlayer(controller),
            const Positioned.fill(
              child: DecoratedBox(
                // ignore: prefer_const_constructors
                decoration: BoxDecoration(
                  // ignore: prefer_const_constructors
                  gradient: LinearGradient(
                      // ignore: prefer_const_literals_to_create_immutables
                      colors: [
                        Colors.black,
                        Colors.transparent,
                        Colors.transparent,
                        Colors.black
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.0, 0.2, 0.8, 1.0]),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("@${widget.post.user.username}",
                          style: TextStyle(color: Colors.white, fontSize: 18)),
                      Text(
                        widget.post.cap,
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
            )
          ])),
    );
  }

  /*Widget _fullscreen({required AspectRatio child}) {
    final size = controller.value.size;
    var height = size.height;
    var width = size.width;
    return FittedBox(
        fit: BoxFit.cover,
        child: SizedBox(height: height, width: width, child: child));
  }*/
}
