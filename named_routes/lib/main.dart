import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Define the starting route
      initialRoute: '/',
      // Register all paths in the route map
      routes: {
        '/': (context) => const HomeScreen(),
        '/details': (context) => const DetailsScreen(),
      },
    );
  }
}

// --- First Screen ---
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home (Named Route)')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate using the route identifier string
            Navigator.pushNamed(context, '/details');
          },
          child: const Text('Go to Details'),
        ),
      ),
    );
  }
}

// --- Second Screen ---
class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Details (Named Route)')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Pop works exactly the same way here
            Navigator.pop(context);
          },
          child: const Text('Go Back'),
        ),
      ),
    );
  }
}