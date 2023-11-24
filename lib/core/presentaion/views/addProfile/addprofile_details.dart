import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pawbuddy/core/presentaion/common_widgets/app_bg.dart';
import 'package:pawbuddy/core/presentaion/common_widgets/app_button.dart';
import 'package:pawbuddy/core/presentaion/common_widgets/textfield.dart';
import 'package:pawbuddy/core/presentaion/views/addProfile/widgets/app_bar.dart';
import 'package:pawbuddy/core/presentaion/views/addProfile/widgets/weight_value_picker.dart';

class AddProfileDetails extends StatelessWidget {
  const AddProfileDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBg(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const AddProfileAppBar(
              pageName: "Details",
              stepNum: 3,
            ),
            const SizedBox(height: 20),
            Container(
              height: 150,
              width: 150,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: AssetImage("assets/img/design/maxi.png"))),
            ),
            const SizedBox(height: 24),
            Text(
              "What’s your pet’s Details?",
              textAlign: TextAlign.center,
              style: GoogleFonts.notoSans(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 10),
            Container(
              constraints: BoxConstraints(
                  maxWidth: MediaQuery.sizeOf(context).width * 0.7),
              child: Text(
                "Automatic selection based on your pets breed. Adjust according to reality",
                maxLines: 2,
                textAlign: TextAlign.center,
                style: GoogleFonts.notoSans(
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomTextField(hintText: "Your pet's name"),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Weight",
                style: GoogleFonts.catamaran(fontSize: 20, color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const WeightValuePicker(),
            const SizedBox(
              height: 40,
            ),
            const Spacer(),
            SizedBox(
                width: double.infinity,
                child: AppButton(
                    title: "Continue",
                    onPressed: () {
                      Navigator.pushNamed(context, '/addprofileimpdates');
                    })),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      )),
    );
  }
}
