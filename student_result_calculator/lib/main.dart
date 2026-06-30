import 'package:flutter/material.dart';

void main() {
  runApp(const ResultApp());
}

class ResultApp extends StatelessWidget {
  const ResultApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResultScreen(),
    );
  }
}

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {

  final TextEditingController s1 = TextEditingController();
  final TextEditingController s2 = TextEditingController();
  final TextEditingController s3 = TextEditingController();
  final TextEditingController s4 = TextEditingController();
  final TextEditingController s5 = TextEditingController();

  double total = 0;
  double percentage = 0;
  String grade = "-";
  String result = "-";

  void calculateResult() {

    double m1 = double.tryParse(s1.text) ?? 0;
    double m2 = double.tryParse(s2.text) ?? 0;
    double m3 = double.tryParse(s3.text) ?? 0;
    double m4 = double.tryParse(s4.text) ?? 0;
    double m5 = double.tryParse(s5.text) ?? 0;

    total = m1 + m2 + m3 + m4 + m5;

    percentage = total / 5;

    if (percentage >= 90) {
      grade = "A+";
    } else if (percentage >= 80) {
      grade = "A";
    } else if (percentage >= 70) {
      grade = "B";
    } else if (percentage >= 60) {
      grade = "C";
    } else if (percentage >= 40) {
      grade = "D";
    } else {
      grade = "F";
    }

    result = percentage >= 40 ? "PASS" : "FAIL";

    setState(() {});
  }

  Widget buildTextField(
      String label,
      TextEditingController controller) {

    return Padding(

      padding: const EdgeInsets.only(bottom: 15),

      child: TextField(

        controller: controller,

        keyboardType: TextInputType.number,

        decoration: InputDecoration(

          labelText: label,

          border: const OutlineInputBorder(),

        ),

      ),

    );

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Student Result Calculator"),
        centerTitle: true,
      ),

      body: SingleChildScrollView(

        padding: const EdgeInsets.all(20),

        child: Column(

          children: [

            buildTextField("Subject 1", s1),

            buildTextField("Subject 2", s2),

            buildTextField("Subject 3", s3),

            buildTextField("Subject 4", s4),

            buildTextField("Subject 5", s5),

            const SizedBox(height: 10),

            SizedBox(

              width: double.infinity,

              child: ElevatedButton(

                onPressed: calculateResult,

                child: const Text("Calculate Result"),

              ),

            ),

            const SizedBox(height: 25),

            Card(

              elevation: 6,

              child: Padding(

                padding: const EdgeInsets.all(20),

                child: Column(

                  children: [

                    resultRow(
                        "Total",
                        total.toStringAsFixed(0)),

                    const Divider(),

                    resultRow(
                        "Percentage",
                        "${percentage.toStringAsFixed(2)} %"),

                    const Divider(),

                    resultRow(
                        "Grade",
                        grade),

                    const Divider(),

                    resultRow(
                        "Result",
                        result),

                  ],

                ),

              ),

            )

          ],

        ),

      ),

    );

  }

  Widget resultRow(String title, String value) {

    return Row(

      mainAxisAlignment:
      MainAxisAlignment.spaceBetween,

      children: [

        Text(

          title,

          style: const TextStyle(

            fontWeight: FontWeight.bold,

            fontSize: 16,

          ),

        ),

        Text(

          value,

          style: const TextStyle(

            fontSize: 16,

          ),

        ),

      ],

    );

  }

}