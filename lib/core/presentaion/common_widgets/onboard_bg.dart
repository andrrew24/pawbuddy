import 'package:flutter/material.dart';
import 'package:pawbuddy/core/constants/colors.dart';

class OnBoardBG extends StatelessWidget {
  const OnBoardBG({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [Colors.black, secondGradColor])),
      child: child,
    );
  }
}
