import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> openLink(String link) async {
  await launchUrl(Uri.parse(link), mode: LaunchMode.externalApplication);
}

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contact Us')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Get in touch',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          Card(
            child: ListTile(
              leading: const Icon(Icons.phone, color: Colors.brown),
              title: const Text('Call us'),
              subtitle: const Text('+234 801 234 5678'),
              onTap: () => openLink('tel:+2348012345678'),
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.chat, color: Colors.green),
              title: const Text('WhatsApp'),
              subtitle: const Text('Chat with us'),
              onTap: () => openLink('https://wa.me/2348012345678'),
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.email, color: Colors.brown),
              title: const Text('Email'),
              subtitle: const Text('info@rayanfurniture.com'),
              onTap: () => openLink('mailto:info@rayanfurniture.com'),
            ),
          ),
          const Card(
            child: ListTile(
              leading: Icon(Icons.location_on, color: Colors.brown),
              title: Text('Visit our shop'),
              subtitle: Text('Your shop address here'),
            ),
          ),
        ],
      ),
    );
  }
}