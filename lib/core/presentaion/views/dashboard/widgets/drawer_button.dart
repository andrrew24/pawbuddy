import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDrawerButton extends StatelessWidget {
  const MyDrawerButton({
    super.key,
    required this.text,
    required this.iconData,
  });

  final String text;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          iconData,
          color: Colors.white,
          size: 15,
        ),
        const Gap(10),
        Text(
          text,
          style: GoogleFonts.notoSans(fontSize: 16, color: Colors.white),
        )
      ],
    );
  }
}
