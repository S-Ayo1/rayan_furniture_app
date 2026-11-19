import 'dart:async';
import 'package:flutter/material.dart';
import 'furniture_item.dart';

List<String> bannerImages = [
  'assets/images/banner1.webp',
  'assets/images/banner2.webp',
  'assets/images/banner3.webp',
];

class HomeBanner extends StatefulWidget {
  const HomeBanner({super.key});

  @override
  State<HomeBanner> createState() => _HomeBannerState();
}

class _HomeBannerState extends State<HomeBanner> {
  int currentPage = 0; // which picture is showing now
  Timer? timer;

  @override
  void initState() {
    super.initState();
    // every 3 seconds, move to the next picture
    timer = Timer.periodic(const Duration(seconds: 3), (t) {
      setState(() {
        currentPage = currentPage + 1;
        if (currentPage >= bannerImages.length) {
          currentPage = 0; // back to the first picture
        }
      });
    });
  }

  @override
  void dispose() {
    timer?.cancel(); // stop the timer when leaving the screen
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 800), // fade time
        child: Image.asset(
          bannerImages[currentPage],
          repeat: ImageRepeat.repeat,
          key: ValueKey(currentPage), // lets Flutter know the picture changed
          fit: BoxFit.contain,
          width: double.infinity,
        ),
      ),
    );
  }
}