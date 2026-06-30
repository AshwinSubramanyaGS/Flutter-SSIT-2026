// responsive/responsive_layout.dart
import 'package:flutter/material.dart';
import '../../dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget desktopBody;

  const ResponsiveLayout({
    Key? key,
    required this.mobileBody,
    required this.desktopBody,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // If screen width is less than our threshold, return mobile layout
        if (constraints.maxWidth < mobileWidth) {
          return mobileBody;
        } else {
          // Otherwise, return desktop layout
          return desktopBody;
        }
      },
    );
  }
}