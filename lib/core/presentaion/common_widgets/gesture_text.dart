import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GestureText extends StatelessWidget {
  const GestureText({
    super.key, required this.title, required this.onTap,
  });

  final String title;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Material(
        type: MaterialType.transparency,
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: GoogleFonts.notoSans(fontSize: 14, color: Colors.white),
        ),
      ),
    );
  }
}
