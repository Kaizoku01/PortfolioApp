import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class BackgroundVideoState extends StatefulWidget {
  const BackgroundVideoState({Key? key}) : super(key: key);

  @override
  State<BackgroundVideoState> createState() => _BackgroundVideoStateState();
}

class _BackgroundVideoStateState extends State<BackgroundVideoState> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    //super.initState();
    _controller = VideoPlayerController.asset("assets/appbar_video.mp4")
      ..initialize().then((_) {
        _controller.play();
        _controller.setLooping(true);
        setState(() {});
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _controller.value.size.width,
      height: _controller.value.size.height,
      child: VideoPlayer(_controller),
    );
  }
}