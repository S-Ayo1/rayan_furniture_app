import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class VideoScreen extends StatefulWidget {
  final String videoId;
  final bool isTall;

  const VideoScreen({super.key, required this.videoId, required this.isTall});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();
    controller = YoutubePlayerController.fromVideoId(
      videoId: widget.videoId,
      autoPlay: true,
      params: const YoutubePlayerParams(showFullscreenButton: true),
    );
  }

  @override
  void dispose() {
    controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Video')),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: widget.isTall ? 300 : 700),
          child: YoutubePlayer(
            controller: controller,
            aspectRatio: widget.isTall ? 9 / 16 : 16 / 9,
          ),
        ),
      ),
    );
  }
}