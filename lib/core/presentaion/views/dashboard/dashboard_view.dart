import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pawbuddy/core/constants/colors.dart';
import 'package:pawbuddy/core/presentaion/common_widgets/app_bg.dart';
import 'package:pawbuddy/core/presentaion/views/addProfile/widgets/custom_tile.dart';
import 'package:pawbuddy/core/presentaion/views/dashboard/widgets/categories.dart';
import 'package:pawbuddy/core/presentaion/views/dashboard/widgets/dasboard_appbar.dart';
import 'package:pawbuddy/core/presentaion/views/dashboard/widgets/pet_profiles.dart';
import 'package:gap/gap.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

final advancedDrawerController = AdvancedDrawerController();

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      controller: advancedDrawerController,
      rtlOpening: false,
      animationCurve: Curves.easeInOut,
      childDecoration: BoxDecoration(borderRadius: BorderRadius.circular(70)),
      backdropColor: drawerColor,
      drawer: SafeArea(
          child: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0,vertical: 50),
          child: Column(
            children: [
              CustomTile(
                imgPath: "assets/img/design/baneAdam1.png",
                title: "Hello,",
                subTitle: "Etcher",
                tileColor: Colors.transparent,
                trailing: IconButton(
                  onPressed: () {
                    advancedDrawerController.hideDrawer();
                  },
                  icon: const Icon(
                    FontAwesomeIcons.xmark,
                    color: Colors.white,
                    size: 15,
                  ),
                ),
              ),
              const Divider(),
              const Gap(36),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    DrawerButton(
                      text: "Dashboard",
                      iconData: FontAwesomeIcons.chartLine,
                    ),
                    Gap(32),
                    DrawerButton(
                      text: "Contacts",
                      iconData: FontAwesomeIcons.phone,
                    ),
                    Gap(32),
                    DrawerButton(
                      text: "Calendar",
                      iconData: FontAwesomeIcons.calendar,
                    ),
                    Gap(32),
                  ],
                ),
              ),
              const Divider(),
              const Gap(36),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    DrawerButton(
                      iconData: FontAwesomeIcons.user,
                      text: "Account",
                    ),
                    Gap(32),
                    DrawerButton(
                      text: "Settings",
                      iconData: FontAwesomeIcons.gear,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      )),
      child: Scaffold(
        body: AppBg(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              DashboardAppBar(
                onTap: () {
                  advancedDrawerController.toggleDrawer();
                },
              ),
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
      ),
    );
  }
}

class DrawerButton extends StatelessWidget {
  const DrawerButton({
    super.key,
    required this.text,
    required this.iconData,
  });

  final String text;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          iconData,
          color: Colors.white,
          size: 15,
        ),
        const Gap(10),
        Text(
          text,
          style: GoogleFonts.notoSans(fontSize: 16, color: Colors.white),
        )
      ],
    );
  }
}
