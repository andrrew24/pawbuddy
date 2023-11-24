import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pawbuddy/core/constants/colors.dart';
import 'package:pawbuddy/core/methods/build_border.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.padding = const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
    this.maxlines = 1, this.suffixIcon,
  });

  final String hintText;
  final int maxlines;
  final EdgeInsets padding;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      style: GoogleFonts.notoSans(color: Colors.white),
      textInputAction: TextInputAction.next,
      cursorColor: Colors.white,
      autofocus: false,
      textAlign: TextAlign.start,
      maxLines: maxlines,
      decoration: InputDecoration(
        suffixIcon:suffixIcon ,
        contentPadding: padding,
        hintText: hintText,
        filled: true,
        fillColor: textFieldColor,
        hintStyle: GoogleFonts.notoSans(color: Colors.white, fontSize: 16),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
        border: buildBorder(),
      ),
    );
  }
}

