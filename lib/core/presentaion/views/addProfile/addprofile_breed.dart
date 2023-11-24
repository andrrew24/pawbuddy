import 'package:flutter/material.dart';
import 'package:pawbuddy/core/constants/colors.dart';
import 'package:pawbuddy/core/presentaion/common_widgets/app_bg.dart';
import 'package:pawbuddy/core/presentaion/common_widgets/app_button.dart';
import 'package:pawbuddy/core/presentaion/views/addProfile/widgets/app_bar.dart';
import 'package:pawbuddy/core/presentaion/views/addProfile/widgets/pet_type_card.dart';

class AddProfileBreed extends StatelessWidget {
  const AddProfileBreed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBg(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: AddProfileAppBar(
              pageName: "Breed",
              stepNum: 2,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          SizedBox(
            width: double.infinity,
            height: MediaQuery.sizeOf(context).height * 0.66,
            child: GridView.count(
              childAspectRatio: 1.0,
              padding: const EdgeInsets.symmetric(horizontal: 24),
              physics: const BouncingScrollPhysics(),
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              children: const [
                PetCard(
                    isSelected: false,
                    petType: "Bishon",
                    imgPath: "assets/img/dogs/Bichon.png"),
                PetCard(
                    isSelected: false,
                    petType: "Bishon",
                    imgPath: "assets/img/dogs/Bichon.png"),
                PetCard(
                    isSelected: true,
                    petType: "Bishon",
                    imgPath: "assets/img/dogs/Bichon.png"),
                PetCard(
                    isSelected: false,
                    petType: "Bishon",
                    imgPath: "assets/img/dogs/Bichon.png"),
                PetCard(
                    isSelected: false,
                    petType: "Bishon",
                    imgPath: "assets/img/dogs/Bichon.png"),
                PetCard(
                    isSelected: false,
                    petType: "Bishon",
                    imgPath: "assets/img/dogs/Bichon.png"),
                PetCard(
                    isSelected: false,
                    petType: "Bishon",
                    imgPath: "assets/img/dogs/Bichon.png"),
                PetCard(
                    isSelected: false,
                    petType: "Bishon",
                    imgPath: "assets/img/dogs/Bichon.png"),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: drawerColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
              padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  AppButton(
                      title: "Continue",
                      onPressed: () {
                        Navigator.pushNamed(context, '/addprofiledetails');
                      }),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
