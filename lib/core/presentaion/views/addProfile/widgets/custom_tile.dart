import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pawbuddy/core/presentaion/common_widgets/show_image.dart';

class CustomTile extends StatelessWidget {
  const CustomTile({
    super.key,
    required this.imgPath,
    required this.title,
    required this.subTitle,
    this.onTap,
    this.trailing,
    required this.tileColor,
  });

  final String imgPath;
  final String title;
  final String subTitle;
  final Widget? trailing;
  final void Function()? onTap;
  final Color tileColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: tileColor, borderRadius: BorderRadius.circular(14)),
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          leading: ShowImage(height: 50, width: 50, imgPath: imgPath),
          title: Text(
            title,
            style: GoogleFonts.notoSans(fontSize: 14, color: Colors.white),
          ),
          subtitle: Text(
            subTitle,
            style: GoogleFonts.notoSans(
                fontSize: 14, color: Colors.white, fontWeight: FontWeight.w700),
          ),
          trailing: SizedBox(height: 100, width: 90, child: trailing),
        ),
      ),
    );
  }
}
