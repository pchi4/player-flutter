import 'package:flutter/material.dart';

class ResponsivePage extends StatelessWidget {
  final Widget screenMobile;
  final Widget screenTablet;
  final Widget screenDesktop;

  const ResponsivePage(
      {super.key,
      required this.screenMobile,
      required this.screenDesktop,
      required this.screenTablet});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return screenMobile;
        } else if (constraints.maxWidth < 1100) {
          return screenTablet;
        } else {
          return screenDesktop;
        }
      },
    );
  }
}
