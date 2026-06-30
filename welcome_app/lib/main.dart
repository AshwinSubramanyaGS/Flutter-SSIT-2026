import 'package:flutter/material.dart';

void main() {
  runApp(const WorkshopApp());
}

class WorkshopApp extends StatelessWidget {
  const WorkshopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Workshop",
      home: Scaffold(
        backgroundColor: Colors.blueGrey.shade50,

        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(24),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [

                  const Icon(
                    Icons.settings,
                    size: 90,
                    color: Colors.blue,
                  ),

                  const SizedBox(height: 25),

                  const Text(
                    "Flutter Android Workshop",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 15),

                  const Text(
                    "Learn Android App Development\nusing Flutter",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black54,
                    ),
                  ),

                  const SizedBox(height: 30),

                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Icon(
                        Icons.check_circle,
                        color: Colors.green,
                      ),

                      SizedBox(width: 10),

                      Text("Build Real Applications"),

                    ],
                  ),

                  const SizedBox(height: 10),

                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Icon(
                        Icons.check_circle,
                        color: Colors.green,
                      ),

                      SizedBox(width: 10),

                      Text("Learn by Practice"),

                    ],
                  ),

                  const SizedBox(height: 10),

                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Icon(
                        Icons.check_circle,
                        color: Colors.green,
                      ),

                      SizedBox(width: 10),

                      Text("Deploy to Android"),

                    ],
                  ),

                  const SizedBox(height: 40),

                  SizedBox(
                    width: double.infinity,

                    child: ElevatedButton(

                      onPressed: () {},

                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                      ),

                      child: const Text(
                        "Get Started",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  )

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}