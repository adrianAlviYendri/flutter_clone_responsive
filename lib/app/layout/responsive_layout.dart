// ignore_for_file: avoid_web_libraries_in_flutter, unused_import

import 'dart:html';

import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget phone;
  final Widget tablet;
  final Widget largeTablet;
  final Widget computer;

  const ResponsiveLayout({
    super.key,
    required this.phone,
    required this.tablet,
    required this.largeTablet,
    required this.computer,
  });

  static const int phoneLimit = 550;
  static const int tabletLimit = 800;
  static const int largeTabletLimit = 1100;

  static bool isPhone(BuildContext context) =>
      MediaQuery.of(context).size.width <= phoneLimit;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < tabletLimit &&
      MediaQuery.of(context).size.width >= phoneLimit;

  static bool isLargeTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < largeTabletLimit &&
      MediaQuery.of(context).size.width >= tabletLimit;

  static bool isComputer(BuildContext context) =>
      MediaQuery.of(context).size.width >= largeTabletLimit;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < phoneLimit) {
          return phone;
        }
        if (constraints.maxWidth < tabletLimit) {
          return tablet;
        }
        if (constraints.maxWidth < largeTabletLimit) {
          return largeTablet;
        } else {
          return computer;
        }
      },
    );
  }
}

extension ResponsiveLayoutExtension on BuildContext {
  bool get isPhone => ResponsiveLayout.isPhone(this);
  bool get isTablet => ResponsiveLayout.isTablet(this);
  bool get isLargeTablet => ResponsiveLayout.isLargeTablet(this);
  bool get isComputer => ResponsiveLayout.isComputer(this);

  double get screenHight => MediaQuery.of(this).size.height;
  double get screenWidth => MediaQuery.of(this).size.width;
}
