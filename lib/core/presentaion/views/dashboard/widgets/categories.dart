import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pawbuddy/core/constants/colors.dart';
import 'package:pawbuddy/core/presentaion/views/dashboard/widgets/category_card.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                height: 170,
                width: 160,
                decoration: BoxDecoration(
                    color: dogCardColor,
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(color: bordersColor)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Share profile",
                          style: GoogleFonts.notoSans(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        )),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Easily share your pet's profile or add a new one",
                          style: GoogleFonts.notoSans(
                              color: Colors.white, fontSize: 12),
                        )),
                    const SizedBox(
                      height: 30,
                    ),
                    const Align(
                      alignment: Alignment.centerRight,
                      child: Icon(
                        FontAwesomeIcons.arrowRight,
                        size: 20,
                        color: Colors.cyan,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            CategoryCard(
                bgColor: nutritionsCardColor,
                title: "Nutritions",
                imgPath: "assets/img/design/Nutritions.png",
                onTap: () {}),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CategoryCard(
                bgColor: healthCardColor,
                title: "Health Card",
                imgPath: "assets/img/design/healthcard.png",
                onTap: () {}),
            const SizedBox(
              width: 16,
            ),
            CategoryCard(
                bgColor: activitiesCardColor,
                title: "Activities",
                imgPath: "assets/img/design/activities.png",
                onTap: () {}),
          ],
        )
      ],
    );
  }
}
