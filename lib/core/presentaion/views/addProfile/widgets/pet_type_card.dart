import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pawbuddy/core/constants/colors.dart';

class PetCard extends StatefulWidget {
  const PetCard({
    super.key,
    required this.isSelected,
    required this.petType,
    required this.imgPath,
  });

  final bool isSelected;
  final String petType;
  final String imgPath;

  @override
  State<PetCard> createState() => _PetCardState();
}

class _PetCardState extends State<PetCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: dogCardColor,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
              color: widget.isSelected ? Colors.blue : bordersColor)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            widget.petType,
            style: GoogleFonts.notoSans(
                fontSize: 14,
                color: widget.isSelected ? Colors.blue : Colors.white,
                fontWeight: FontWeight.w500),
          ),
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Positioned(
                child: Container(
                  height: 60,
                  width: 140,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/img/design/Deco.png"))),
                ),
              ),
              Container(
                height: 110,
                width: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: AssetImage(widget.imgPath))),
              ),
            ],
          )
        ],
      ),
    );
  }
}
