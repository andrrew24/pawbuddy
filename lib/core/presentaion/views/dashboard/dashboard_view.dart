import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pawbuddy/core/presentaion/common_widgets/app_bg.dart';
import 'package:pawbuddy/core/presentaion/views/dashboard/widgets/categories.dart';
import 'package:pawbuddy/core/presentaion/views/dashboard/widgets/dasboard_appbar.dart';
import 'package:pawbuddy/core/presentaion/views/dashboard/widgets/pet_profiles.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBg(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            const DashboardAppBar(),
            const SizedBox(
              height: 24,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Text(
                    "Active pet profiles",
                    style: GoogleFonts.notoSans(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const PetProfiles(),
            const SizedBox(
              height: 70,
            ),
            const Categories()
          ],
        ),
      )),
    );
  }
}

