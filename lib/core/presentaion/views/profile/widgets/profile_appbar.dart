import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pawbuddy/core/constants/colors.dart';

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      height: 80,
      width: MediaQuery.sizeOf(context).width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
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
              const SizedBox(
                width: 12,
              ),
              Text(
                "Pet Profile",
                style: GoogleFonts.catamaran(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              )
            ],
          ),
          const Divider(
            color: bordersColor,
            indent: 20,
            endIndent: 20,
          )
        ],
      ),
    ));
  }
}
