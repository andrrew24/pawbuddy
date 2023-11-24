import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pawbuddy/core/constants/colors.dart';
import 'package:pawbuddy/core/presentaion/common_widgets/show_image.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key, required this.bgColor, required this.title, required this.imgPath, required this.onTap,
  });

  final Color bgColor;
  final String title;
  final String imgPath;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        height: 170,
        width: 160,
        decoration: BoxDecoration(
            color: dogCardColor,
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: bordersColor)),
        child: Column(
          children: [
            SizedBox(
              height: 100,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    top: -5,
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration:  BoxDecoration(
                          color: bgColor, shape: BoxShape.circle),
                    ),
                  ),
                   Positioned(
                      child: ShowImage(
                          height: 80,
                          width: 90,
                          imgPath: imgPath)),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  title,
                  style: GoogleFonts.notoSans(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                ))
          ],
        ),
      ),
    );
  }
}
