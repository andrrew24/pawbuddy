import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pawbuddy/core/constants/colors.dart';
import 'package:pawbuddy/core/presentaion/common_widgets/show_image.dart';

class DashboardAppBar extends StatelessWidget {
  const DashboardAppBar({super.key, required this.onTap});

  final void Function() onTap ;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(color: Colors.transparent),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
              leading: const ShowImage(
                  height: 50,
                  width: 50,
                  imgPath: "assets/img/design/baneAdam1.png"),
              title: Text(
                "Hello,",
                style: GoogleFonts.notoSans(fontSize: 14, color: Colors.white),
              ),
              subtitle: Text(
                "Etcher",
                style: GoogleFonts.notoSans(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              ),
              trailing:  SizedBox(
                  height: 100,
                  width: 80,
                  child: Row(
                    children: [
                      const Icon(
                        FontAwesomeIcons.magnifyingGlass,
                        size: 15,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 16),
                      const VerticalDivider(
                        indent: 10,
                        endIndent: 10,
                        color: bordersColor,
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      GestureDetector(
                        onTap: onTap ,
                        child: const Icon(
                          FontAwesomeIcons.listUl,
                          size: 15,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )),
            ),
          ),
          const Divider(
            color: bordersColor,
            indent: 20,
            endIndent: 20,
          )
        ],
      ),
    );
  }
}
