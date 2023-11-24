import 'package:flutter/material.dart';
import 'package:pawbuddy/core/constants/colors.dart';

class AppBg extends StatelessWidget {
  const AppBg({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(color: appbgcolor),
      child: child,
    );
  }
}
