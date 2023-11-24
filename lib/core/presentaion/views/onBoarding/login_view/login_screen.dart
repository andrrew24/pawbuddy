import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pawbuddy/core/constants/colors.dart';
import 'package:pawbuddy/core/presentaion/common_widgets/onboard_bg.dart';
import 'package:pawbuddy/core/presentaion/common_widgets/app_button.dart';
import 'package:pawbuddy/core/presentaion/common_widgets/gesture_text.dart';
import 'package:pawbuddy/core/presentaion/common_widgets/textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: OnBoardBG(
        child: Stack(
          children: [
            Positioned(
              top: -60,
              left: -40,
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height * 0.750,
                decoration: const BoxDecoration(
                    color: Colors.transparent,
                    image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: AssetImage("assets/img/Dog.png"))),
              ),
            ),
            Positioned(
                bottom: 0,
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height * 0.640,
                  decoration: const BoxDecoration(
                    color: container,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.center,
                    children: [
                      Positioned(
                        top: -40,
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: const BoxDecoration(
                              color: container,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/img/design/Icon Frame.png"))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const SizedBox(
                              height: 30,
                            ),
                            const SizedBox(
                              height: 24,
                            ),
                            Text(
                              "Create account",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.catamaran(
                                  color: Colors.white,
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              constraints: BoxConstraints(
                                  maxWidth:
                                      MediaQuery.sizeOf(context).width * .8),
                              child: Text(
                                "Welcome! Please enter your information below and get started.",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.notoSans(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            const CustomTextField(hintText: "Your email"),
                            const SizedBox(
                              height: 16,
                            ),
                            const CustomTextField(
                              hintText: "Password",
                              suffixIcon: Icon(
                                Icons.password,
                                size: 30,
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            AppButton(
                              title: "Create Account",
                              onPressed: () {
                                Navigator.pushNamed(context, '/otp');
                              },
                            ),
                            const SizedBox(
                              height: 17,
                            ),
                            GestureText(
                              title: "Already have an account? Log in here!",
                              onTap: () {},
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
