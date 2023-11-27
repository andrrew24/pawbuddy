import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pawbuddy/core/constants/colors.dart';
import 'package:pawbuddy/core/presentaion/common_widgets/app_bg.dart';
import 'package:pawbuddy/core/presentaion/common_widgets/show_image.dart';

class ShareProfile extends StatelessWidget {
  const ShareProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBg(
          child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        FontAwesomeIcons.arrowLeft,
                        color: Colors.white,
                        size: 15,
                      )),
                  const Gap(80),
                  Column(
                    children: [
                      Text(
                        "Sharing Profiles",
                        style: GoogleFonts.catamaran(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "Maxi",
                        style: GoogleFonts.notoSans(
                            color: Colors.white, fontSize: 14),
                      ),
                    ],
                  )
                ],
              ),
              const Gap(120),
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    height: MediaQuery.sizeOf(context).height * 0.54,
                    width: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                        color: dogCardColor,
                        borderRadius: BorderRadius.circular(14)),
                  ),
                  Positioned(
                    top: -50,
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                          color: dogCardColor, shape: BoxShape.circle),
                    ),
                  ),
                  Positioned(
                    top: -40,
                    child: Container(
                        height: 80,
                        width: 100,
                        decoration: const BoxDecoration(
                            color: dogCardColor, shape: BoxShape.circle),
                        child: const ShowImage(
                            height: 50,
                            width: 50,
                            imgPath: "assets/img/design/maxi.png")),
                  ),
                  Positioned(
                    top: 80,
                    child: Text(
                      "Maxi",
                      style: GoogleFonts.notoSans(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  const Positioned(
                    top: 140,
                    child: ShowImage(
                        height: 250,
                        width: 230,
                        imgPath: "assets/img/design/QR Code.png"),
                  )
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
