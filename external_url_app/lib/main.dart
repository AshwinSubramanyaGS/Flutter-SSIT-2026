import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Function to handle the URL launch
  Future<void> _launchURL() async {
    final Uri url = Uri.parse('https://flutter.dev');

    // Check if the device can open the link before trying
    if (await canLaunchUrl(url)) {
      // Launch Mode externalApplication forces it to open in the system browser
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    // FIX: Wrap the Scaffold inside a MaterialApp
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Optional: removes the debug banner
      home: Scaffold(
        appBar: AppBar(title: const Text('Details Screen')),
        body: Center(
          child: ElevatedButton(
            onPressed: _launchURL,
            child: const Text('Go to Flutter.dev'),
          ),
        ),
      ),
    );
  }
}