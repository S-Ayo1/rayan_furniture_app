import 'package:flutter/material.dart';
import 'image_viewer_screen.dart';

List<String> maintenanceImages = [
  'assets/images/maint1.jpg.webp',
  'assets/images/maint2.jpg.webp',
  'assets/images/maint3.jpg.webp',
  'assets/images/maint4.jpg.webp',
  'assets/images/maint5.jpg.webp',
  'assets/images/maint6.jpg.webp',
  'assets/images/maint7.jpg.webp',
];

class MaintenanceRow extends StatelessWidget {
  const MaintenanceRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            'Maintenance',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 280,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(right: 16),
            children: [
              for (var path in maintenanceImages)
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ImageViewerScreen(imagePath: path),
                    ),
                  );
                },
                child: Container(
                  width: 220,
                  margin: const EdgeInsets.only(left: 16),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(path, fit: BoxFit.contain),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}