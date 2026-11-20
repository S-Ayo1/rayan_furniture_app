import 'package:flutter/material.dart';
import 'video_screen.dart';

const sectionStyle = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);

class VideoCard extends StatelessWidget {
  final String videoId;
  final bool isTall;
  final double ratio;

  const VideoCard({
    super.key,
    required this.videoId,
    required this.isTall,
    required this.ratio,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: AspectRatio(
        aspectRatio: ratio,
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    VideoScreen(videoId: videoId, isTall: isTall),
              ),
            );
          },
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.network(
                'https://img.youtube.com/vi/$videoId/hqdefault.jpg',
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
                errorBuilder: (context, error, stack) =>
                    Container(color: Colors.black26),
              ),
              const Icon(Icons.play_circle_fill, color: Colors.white, size: 48),
            ],
          ),
        ),
      ),
    );
  }
}

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('About Us')),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 600),
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              const Text(
                "We design elegant, functional furniture and bespoke interior "
                "for residential and commercial spaces.\n\n"
                "Send us a DM, let's bring your vision to life.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
              const SizedBox(height: 24),
              const Text('Behind the scenes', style: sectionStyle),
              const SizedBox(height: 8),
              const VideoCard(videoId: 'SHb32868mM0', isTall: true, ratio: 16 / 9),
              const SizedBox(height: 24),
              const Text('Our ads', style: sectionStyle),
              const SizedBox(height: 8),
              const VideoCard(videoId: 'WNRASwShRdY', isTall: false, ratio: 16 / 9),
              const SizedBox(height: 8),
              const Row(
                children: [
                  Expanded(
                    child: VideoCard(videoId: '1nGkrewGm64', isTall: true, ratio: 9 / 16),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: VideoCard(videoId: 'Y1-Srb-1wps', isTall: true, ratio: 9 / 16),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: VideoCard(videoId: 'TRn5iLxmki4', isTall: true, ratio: 9 / 16),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}