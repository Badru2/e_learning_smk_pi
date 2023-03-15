import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;
  final Widget large;

  const Responsive({
    Key? key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
    required this.large,
  }) : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 720;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1000 &&
      MediaQuery.of(context).size.width >= 720;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  static bool isLarge(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1800;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1800) {
          return large;
        } else if (constraints.maxWidth >= 1000) {
          return desktop;
        } else if (constraints.maxWidth >= 720) {
          return tablet;
        } else {
          return mobile;
        }
      },
    );
  }
}
