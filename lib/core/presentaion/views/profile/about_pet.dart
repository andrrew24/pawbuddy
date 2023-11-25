import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pawbuddy/core/constants/colors.dart';
import 'package:pawbuddy/core/presentaion/common_widgets/app_bg.dart';
import 'package:pawbuddy/core/presentaion/common_widgets/show_image.dart';
import 'package:pawbuddy/core/presentaion/views/addProfile/widgets/custom_tile.dart';
import 'package:pawbuddy/core/presentaion/views/profile/widgets/profile_appbar.dart';

class AboutPet extends StatelessWidget {
  const AboutPet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBg(
          child: Column(
        children: [
          const ProfileAppBar(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 160,
                          width: 160,
                          decoration: const BoxDecoration(
                              color: bordersColor, shape: BoxShape.circle),
                        ),
                        const ShowImage(
                            height: 130,
                            width: 128,
                            imgPath: "assets/img/design/maxi.png")
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Maxi",
                          style: GoogleFonts.notoSans(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Dog | Border Collie",
                          style: GoogleFonts.notoSans(
                              color: Colors.white, fontSize: 14),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Appearance and distinctive signs",
                    style: GoogleFonts.notoSans(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Brown-Dark-White mix, with light eyebrows shape and a heart shaped patch on left paw.",
                    style: GoogleFonts.notoSans(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const PetDetails(),
                const SizedBox(
                  height: 24,
                ),
                Column(
                  children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Important Dates",
                          style: GoogleFonts.notoSans(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        )),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomTile(
                      onTap: () {
                        //openDate picker
                      },
                      imgPath: "assets/img/design/cake.png",
                      title: "Birthday",
                      subTitle: "3 nov 2019",
                      trailing: Row(
                        children: [
                          const VerticalDivider(
                            thickness: 2,
                            indent: 10,
                            endIndent: 10,
                            color: bordersColor,
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Text(
                            "3",
                            style: GoogleFonts.notoSans(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            " y.o",
                            style: GoogleFonts.notoSans(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomTile(
                onTap: () {
                  //openDate picker
                },
                imgPath: "assets/img/design/house.png",
                title: "Adobtion",
                subTitle: "6 jan 2020"),
                  ],
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}

class PetDetails extends StatelessWidget {
  const PetDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Gender",
              style: GoogleFonts.notoSans(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
            Text(
              "Male",
              style: GoogleFonts.notoSans(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        const Divider(),
        const SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Size",
              style: GoogleFonts.notoSans(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
            Text(
              "Medium",
              style: GoogleFonts.notoSans(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        const Divider(),
        const SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Weight",
              style: GoogleFonts.notoSans(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
            Text(
              "22.5",
              style: GoogleFonts.notoSans(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ],
    );
  }
}
