import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:pawbuddy/core/constants/colors.dart';

class WeightValuePicker extends StatefulWidget {
  const WeightValuePicker({super.key});

  @override
  State<WeightValuePicker> createState() => _WeightValuePickerState();
}

class _WeightValuePickerState extends State<WeightValuePicker> {
  int currentHorzValue = 10;
  @override
  Widget build(BuildContext context) {
    return NumberPicker(
      textStyle: GoogleFonts.notoSans(fontSize: 20, color: Colors.white),
      axis: Axis.horizontal,
      minValue: 1,
      step: 1,
      maxValue: 50,
      itemHeight: 100,
      haptics: true,
      value: currentHorzValue,
      onChanged: (value) => setState(() => currentHorzValue = value),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(width: 3, color: bordersColor),
      ),
    );
  }
}
