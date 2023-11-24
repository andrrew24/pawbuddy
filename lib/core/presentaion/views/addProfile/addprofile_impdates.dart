import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pawbuddy/core/constants/colors.dart';
import 'package:pawbuddy/core/presentaion/common_widgets/app_bg.dart';
import 'package:pawbuddy/core/presentaion/common_widgets/app_button.dart';
import 'package:pawbuddy/core/presentaion/common_widgets/show_image.dart';
import 'package:pawbuddy/core/presentaion/views/addProfile/widgets/app_bar.dart';
import 'package:pawbuddy/core/presentaion/views/addProfile/widgets/custom_tile.dart';

class AddProfileImpDates extends StatelessWidget {
  const AddProfileImpDates({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBg(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const AddProfileAppBar(
              pageName: "Important Dates",
              stepNum: 4,
            ),
            const SizedBox(height: 70),
            const ShowImage(
              height: 150,
              width: 150,
              imgPath: "assets/img/design/maxi.png",
            ),
            const SizedBox(height: 24),
            Container(
              constraints: BoxConstraints(
                  maxWidth: MediaQuery.sizeOf(context).width * 0.7),
              child: Text(
                "Time to celebrate",
                maxLines: 2,
                textAlign: TextAlign.center,
                style: GoogleFonts.notoSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
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
           
            const Spacer(),
            SizedBox(
                width: double.infinity,
                child: AppButton(title: "Continue", onPressed: () {
                  Navigator.pushNamed(context, '/addprofilecaretakers');
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
