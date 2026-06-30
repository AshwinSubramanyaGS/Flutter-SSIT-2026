import 'package:flutter/material.dart';

void main() {
  runApp(const BusinessCardApp());
}

class BusinessCardApp extends StatelessWidget {
  const BusinessCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(

        backgroundColor: Colors.grey.shade100,

        body: SafeArea(

          child: Center(

            child: Container(

              width: 350,

              padding: const EdgeInsets.all(25),

              decoration: BoxDecoration(

                color: Colors.white,

                borderRadius: BorderRadius.circular(20),

                boxShadow: const [

                  BoxShadow(

                    blurRadius: 12,

                    color: Colors.black12,

                    offset: Offset(2,4),

                  )

                ],

              ),

              child: Column(

                mainAxisSize: MainAxisSize.min,

                children: [

                  const CircleAvatar(

                    radius: 45,

                    backgroundColor: Colors.indigo,

                    child: Icon(

                      Icons.person,

                      color: Colors.white,

                      size: 50,

                    ),

                  ),

                  const SizedBox(height:20),

                  const Text(

                    "Rahul Verma",

                    style: TextStyle(

                      fontSize:24,

                      fontWeight: FontWeight.bold,

                    ),

                  ),

                  const SizedBox(height:5),

                  Text(

                    "Flutter Developer",

                    style: TextStyle(

                      fontSize:16,

                      color: Colors.grey.shade700,

                    ),

                  ),

                  const SizedBox(height:20),

                  const Divider(),

                  buildTile(

                    Icons.email,

                    "rahul@email.com",

                  ),

                  buildTile(

                    Icons.phone,

                    "+91 9876543210",

                  ),

                  buildTile(

                    Icons.language,

                    "www.rahuldev.com",

                  ),

                  buildTile(

                    Icons.location_on,

                    "Bengaluru, India",

                  ),

                  const SizedBox(height:25),

                  SizedBox(

                    width: double.infinity,

                    child: ElevatedButton(

                      onPressed: () {},

                      child: const Text(

                        "Contact Me",

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

  static Widget buildTile(
      IconData icon,
      String value,
      ){

    return Padding(

      padding: const EdgeInsets.symmetric(vertical:10),

      child: Row(

        children: [

          Icon(

            icon,

            color: Colors.indigo,

          ),

          const SizedBox(width:15),

          Text(

            value,

            style: const TextStyle(

              fontSize:16,

            ),

          )

        ],

      ),

    );

  }

}