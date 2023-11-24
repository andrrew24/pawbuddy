import 'package:flutter/material.dart';
import 'package:pawbuddy/core/constants/colors.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    super.key,
    required this.step,
  });

  final int step;

  @override
  Widget build(BuildContext context) {
    double barwidth = MediaQuery.sizeOf(context).width * 0.9;
    double progressbarwidth = barwidth / (5 / step);
    return Stack(
      alignment: Alignment.centerLeft,
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 5,
          width: barwidth,
          decoration: BoxDecoration(
              color: bordersColor, borderRadius: BorderRadius.circular(50)),
        ),
        Positioned(
          child: Container(
            height: 8,
            width: progressbarwidth,
            decoration: BoxDecoration(
                color: dividerColor, borderRadius: BorderRadius.circular(50)),
          ),
        )
      ],
    );
  }
}
