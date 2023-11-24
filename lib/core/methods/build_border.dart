import 'package:flutter/material.dart';
import 'package:pawbuddy/core/constants/colors.dart';

OutlineInputBorder buildBorder([color]) {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(color: bordersColor));
}
