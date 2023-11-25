import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      height: 70,
      width: MediaQuery.sizeOf(context).width,
      child: Row(
        children: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.arrowLeft,
                color: Colors.white,
                size: 15,
              )),
          const SizedBox(
            width: 12,
          ),
          const VerticalDivider(
            indent: 20,
            endIndent: 20,
            thickness: 2,
            color: Colors.white,
          ),
          Text(
            "Pet Profile",
            style: GoogleFonts.catamaran(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700),
          )
        ],
      ),
    ));
  }
}
