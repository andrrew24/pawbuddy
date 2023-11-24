import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pawbuddy/core/presentaion/views/addProfile/widgets/progress_bar.dart';

class AddProfileAppBar extends StatelessWidget {
  const AddProfileAppBar(
      {super.key, required this.pageName, required this.stepNum});

  final String pageName;
  final int stepNum;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    FontAwesomeIcons.arrowLeft,
                    color: Colors.white,
                    size: 20,
                  )),
              Column(
                children: [
                  Text(
                    "Add Pet Profile",
                    style: GoogleFonts.catamaran(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    pageName,
                    style: GoogleFonts.notoSans(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Step",
                    style: GoogleFonts.catamaran(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "$stepNum/5",
                    style: GoogleFonts.notoSans(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 18,
          ),
          ProgressBar(step: stepNum)
        ],
      ),
    );
  }
}
