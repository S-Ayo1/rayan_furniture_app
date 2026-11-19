import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

List<String> videoTitles = [
  'Behind the scenes',
  'Ad 1',
  'Ad 2',
  'Ad 3',
  'Ad 4',
];

List<String> videoLinks = [
  'https://www.youtube.com/shorts/SHb32868mM0',
  'https://www.youtube.com/watch?v=WNRASwShRdY',
  'https://www.youtube.com/shorts/1nGkrewGm64',
  'https://www.youtube.com/shorts/Y1-Srb-1wps',
  'https://www.youtube.com/shorts/TRn5iLxmki4',
];

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('About Us')),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text('About Rayan Furniture'),
          ),
          for (var i = 0; i < videoTitles.length; i++)
            ListTile(
              leading: const Icon(Icons.play_circle_fill, color: Colors.red),
              title: Text(videoTitles[i]),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () async {
                await launchUrl(
                  Uri.parse(videoLinks[i]),
                  mode: LaunchMode.externalApplication,
                );
              },
            ),
        ],
      ),
    );
  }
}