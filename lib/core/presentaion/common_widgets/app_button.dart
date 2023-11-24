import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.title,
    required this.onPressed,
  });
  final String title;
  final void Function()onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      
      style: ButtonStyle(
          shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))),
          padding: const MaterialStatePropertyAll(
              EdgeInsets.symmetric( vertical: 20))),
      child: Text(
        title,
        style: GoogleFonts.notoSans(fontSize: 14),
      ),
    );
  }
}
