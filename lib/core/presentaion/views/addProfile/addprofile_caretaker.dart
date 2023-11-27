import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pawbuddy/core/constants/colors.dart';
import 'package:pawbuddy/core/presentaion/common_widgets/app_bg.dart';
import 'package:pawbuddy/core/presentaion/common_widgets/app_button.dart';
import 'package:pawbuddy/core/presentaion/common_widgets/show_image.dart';
import 'package:pawbuddy/core/presentaion/common_widgets/textfield.dart';
import 'package:pawbuddy/core/presentaion/views/addProfile/widgets/app_bar.dart';
import 'package:pawbuddy/core/presentaion/views/addProfile/widgets/custom_tile.dart';

class AddProfileCareTaker extends StatelessWidget {
  const AddProfileCareTaker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBg(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const AddProfileAppBar(
              pageName: "Care Takers",
              stepNum: 5,
            ),
            const SizedBox(height: 70),
            const ShowImage(
              height: 150,
              width: 150,
              imgPath: "assets/img/design/maxi.png",
            ),
            const SizedBox(height: 50),
            const CustomTextField(hintText: "Search by name, tag, email..."),
            const SizedBox(height: 24),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Added contacts",
                style: GoogleFonts.notoSans(fontSize: 14, color: Colors.white),
              ),
            ),
            const SizedBox(height: 16),
            const CustomTile(
              imgPath: "assets/img/design/baneAdam1.png",
              title: "Guy Hawkins",
              subTitle: "guyhawkins@gmail.com",
              trailing: Icon(
                FontAwesomeIcons.minus,
                color: Colors.white,
              ),
              tileColor: dogCardColor,
            ),
            const SizedBox(height: 16),
            const CustomTile(
              imgPath: "assets/img/design/baneAdam2.png",
              title: "Annette Black",
              subTitle: "annetteblack@gmail.com",
              trailing: Icon(
                FontAwesomeIcons.minus,
                color: Colors.white,
              ),
               tileColor: dogCardColor,
            ),
            const Spacer(),
            SizedBox(
                width: double.infinity,
                child: AppButton(
                    title: "Continue",
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, "/dashboard");
                    })),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      )),
    );
  }
}
