import 'package:flutter/material.dart';
import 'package:pawbuddy/core/constants/colors.dart';

class ThreeDividersRow extends StatelessWidget {
  const ThreeDividersRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Divider(
            color: Colors.grey,
            thickness: 2, // Thickness of the first and third dividers
          ),
        ),
        SizedBox(
          width: 10, // Width between the dividers
        ),
        Expanded(
          flex: 1, // Flex value of 2 for the middle divider
          child: Divider(
            color: dividerColor,
            thickness: 4,
             // Thickness of the middle divider
          ),
        ),
        SizedBox(
          width: 10, // Width between the dividers
        ),
        Expanded(
          child: Divider(
            color: Colors.grey,
            thickness: 2, // Thickness of the first and third dividers
          ),
        ),
      ],
    );
  }
}
