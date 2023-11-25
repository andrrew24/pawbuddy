import 'package:flutter/material.dart';
import 'package:pawbuddy/core/presentaion/common_widgets/app_bg.dart';
import 'package:pawbuddy/core/presentaion/views/profile/widgets/profile_appbar.dart';

class AboutPet extends StatelessWidget {
  const AboutPet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AppBg(
          child: Column(
        children: [
          ProfileAppBar()
        ],
      )),
    );
  }
}
