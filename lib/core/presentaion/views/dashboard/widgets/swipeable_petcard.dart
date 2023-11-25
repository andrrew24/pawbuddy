import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pawbuddy/core/data/pet_model.dart';
import 'package:pawbuddy/core/presentaion/common_widgets/show_image.dart';

class SwipeablePetCard extends StatelessWidget {
  const SwipeablePetCard({
    super.key,
    required this.cardColor,
    required this.petModel, required this.onTap,
  });

  final Color cardColor;
  final PetModel petModel;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          height: 130,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14), color: cardColor),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    petModel.name,
                    style: GoogleFonts.notoSans(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    petModel.type,
                    style:
                        GoogleFonts.notoSans(fontSize: 14, color: Colors.white),
                  ),
                ],
              ),
              ShowImage(height: 100, width: 100, imgPath: petModel.imgPath)
            ],
          )),
    );
  }
}
