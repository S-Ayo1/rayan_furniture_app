import 'package:flutter/material.dart';
import 'furniture_item.dart';
import 'details_screen.dart';

class FurnitureRow extends StatelessWidget {
  final String title;
  final List<FurnitureItem> items;

  const FurnitureRow({super.key, required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 220,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              for (var item in items)
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(item: item),
                      ),
                    );
                  },
                  child: Container(
                    width: 150,
                    margin: const EdgeInsets.only(left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          item.images[0],
                          height: 140,
                          width: 150,
                          fit: BoxFit.cover,
                        ),
                        Text(item.title),
                        Text('₦${item.price}'),
                      ],
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