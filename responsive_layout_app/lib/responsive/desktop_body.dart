// responsive/desktop_body.dart
import 'package:flutter/material.dart';

class MyDesktopBody extends StatelessWidget {
  const MyDesktopBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        title: const Text('D E S K T O P'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            // Left main section: Dynamic/Expanding area containing the Video and Main Scrollable feed
            Expanded(
              child: Column(
                children: [
                  // Main Video Player Box
                  AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Container(
                      color: Colors.deepPurple[400],
                    ),
                  ),

                  // Recommended / Comments list
                  Expanded(
                    child: ListView.builder(
                      itemCount: 8,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Container(
                            color: Colors.deepPurple[300],
                            height: 120,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),

            // Right sidebar section: Fixed-width right hand pane added for desktop screens
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Container(
                width: 200,
                color: Colors.deepPurple[300],
              ),
            ),
          ],
        ),
      ),
    );
  }
}