import 'package:flutter/material.dart';

void main() {
  runApp(const StudentCardApp());
}

class StudentCardApp extends StatelessWidget {
  const StudentCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Student Card",
      home: Scaffold(
        backgroundColor: Colors.grey.shade200,

        appBar: AppBar(
          title: const Text("Digital Student ID"),
          centerTitle: true,
        ),

        body: Center(
          child: Card(

            elevation: 8,

            margin: const EdgeInsets.all(20),

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),

            child: Padding(

              padding: const EdgeInsets.all(20),

              child: Column(

                mainAxisSize: MainAxisSize.min,

                children: [

                  const CircleAvatar(

                    radius: 45,

                    backgroundColor: Colors.blue,

                    child: Icon(
                      Icons.person,
                      size: 55,
                      color: Colors.white,
                    ),

                  ),

                  const SizedBox(height: 20),

                  const Text(

                    "Rohan Sharma",

                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),

                  ),

                  const Text(

                    "Information Science",

                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),

                  ),

                  const SizedBox(height: 20),

                  const Divider(),

                  buildInfoRow(
                    Icons.badge,
                    "Student ID",
                    "2025CS001",
                  ),

                  const Divider(),

                  buildInfoRow(
                    Icons.email,
                    "Email",
                    "rohan@college.edu",
                  ),

                  const Divider(),

                  buildInfoRow(
                    Icons.phone,
                    "Phone",
                    "9876543210",
                  ),

                  const SizedBox(height: 25),

                  SizedBox(

                    width: double.infinity,

                    child: ElevatedButton(

                      onPressed: () {},

                      child: const Text(

                        "View Profile",

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

  static Widget buildInfoRow(
      IconData icon,
      String title,
      String value,
      ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),

      child: Row(

        children: [

          Icon(
            icon,
            color: Colors.blue,
          ),

          const SizedBox(width: 15),

          Expanded(

            child: Column(

              crossAxisAlignment:
              CrossAxisAlignment.start,

              children: [

                Text(

                  title,

                  style: const TextStyle(
                    color: Colors.grey,
                  ),

                ),

                Text(

                  value,

                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),

                ),

              ],

            ),

          )

        ],

      ),

    );
  }
}