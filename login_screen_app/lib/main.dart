import 'package:flutter/material.dart';

void main() {
  runApp(const LoginApp());
}

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() =>
      _LoginScreenState();
}

class _LoginScreenState
    extends State<LoginScreen> {

  final emailController =
      TextEditingController();

  final passwordController =
      TextEditingController();

  void login() {

    if (emailController.text.isEmpty ||
        passwordController.text.isEmpty) {

      ScaffoldMessenger.of(context).showSnackBar(

        const SnackBar(

          content: Text(
            "Please enter Email and Password",
          ),

        ),

      );

      return;
    }

    ScaffoldMessenger.of(context).showSnackBar(

      SnackBar(

        content: Text(
          "Welcome ${emailController.text}",
        ),

      ),

    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.grey.shade100,

      body: SafeArea(

        child: Center(

          child: SingleChildScrollView(

            padding: const EdgeInsets.all(24),

            child: Card(

              elevation: 8,

              shape: RoundedRectangleBorder(

                borderRadius:
                    BorderRadius.circular(20),

              ),

              child: Padding(

                padding: const EdgeInsets.all(24),

                child: Column(

                  mainAxisSize: MainAxisSize.min,

                  children: [

                    const Icon(

                      Icons.lock,

                      size: 80,

                      color: Colors.indigo,

                    ),

                    const SizedBox(height: 20),

                    const Text(

                      "Welcome Back",

                      style: TextStyle(

                        fontSize: 28,

                        fontWeight:
                            FontWeight.bold,

                      ),

                    ),

                    const SizedBox(height: 8),

                    const Text(

                      "Sign in to continue",

                      style: TextStyle(

                        color: Colors.grey,

                      ),

                    ),

                    const SizedBox(height: 30),

                    TextField(

                      controller:
                          emailController,

                      decoration:
                          const InputDecoration(

                        labelText: "Email",

                        prefixIcon:
                            Icon(Icons.email),

                        border:
                            OutlineInputBorder(),

                      ),

                    ),

                    const SizedBox(height: 20),

                    TextField(

                      controller:
                          passwordController,

                      obscureText: true,

                      decoration:
                          const InputDecoration(

                        labelText:
                            "Password",

                        prefixIcon:
                            Icon(Icons.lock),

                        border:
                            OutlineInputBorder(),

                      ),

                    ),

                    const SizedBox(height: 10),

                    Align(

                      alignment:
                          Alignment.centerRight,

                      child: TextButton(

                        onPressed: () {},

                        child: const Text(

                          "Forgot Password?",

                        ),

                      ),

                    ),

                    const SizedBox(height: 10),

                    SizedBox(

                      width: double.infinity,

                      child: ElevatedButton(

                        onPressed: login,

                        child: const Text(

                          "Sign-in",

                        ),

                      ),

                    ),

                    const SizedBox(height: 20),

                    Row(

                      mainAxisAlignment:
                          MainAxisAlignment.center,

                      children: [

                        const Text(

                          "Don't have an account?",

                        ),

                        TextButton(

                          onPressed: () {},

                          child: const Text(

                            "Create Account",

                          ),

                        )

                      ],

                    )

                  ],

                ),

              ),

            ),

          ),

        ),

      ),

    );

  }

}