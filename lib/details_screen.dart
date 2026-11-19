import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'furniture_item.dart';

class DetailsScreen extends StatefulWidget {
  final FurnitureItem item;

  const DetailsScreen({super.key, required this.item});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int selectedImage = 0; // which picture is big now

  @override
  Widget build(BuildContext context) {
    final item = widget.item;

    return Scaffold(
      appBar: AppBar(title: Text(item.title)),
      body: ListView(
        children: [
          Image.asset(
            item.images[selectedImage],
            height: 250,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                for (var i = 0; i < item.images.length; i++)
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedImage = i;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 8),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: i == selectedImage
                              ? Colors.brown
                              : Colors.transparent,
                          width: 3,
                        ),
                      ),
                      child: Image.asset(
                        item.images[i],
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title,
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  '₦${item.price}',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown,
                  ),
                ),
                const SizedBox(height: 12),
                Text(item.description),
                const SizedBox(height: 12),
                Text('Material: ${item.material}'),
                Text('Size: ${item.size}'),
                Text('Colour: ${item.colour}'),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () async {
                      final message = Uri.encodeComponent('Hello, I want to order ${item.title}');
                      final link = Uri.parse('https://wa.me/2348012345678?text=$message');
                      await launchUrl(link, mode: LaunchMode.externalApplication);
                    },
                    child: const Text('Contact to order'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}