// home_page.dart
import 'package:flutter/material.dart';
import 'responsive/responsive_layout.dart';
import 'responsive/mobile_body.dart';
import 'responsive/desktop_body.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // ResponsiveLayout seamlessly serves up the correct Body view based on active size
      body: ResponsiveLayout(
        mobileBody: MyMobileBody(),
        desktopBody: MyDesktopBody(),
      ),
    );
  }
}