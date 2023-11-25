import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:pawbuddy/core/constants/colors.dart';
import 'package:pawbuddy/core/data/pet_list.dart';
import 'package:pawbuddy/core/presentaion/views/dashboard/widgets/swipeable_petcard.dart';

class PetProfiles extends StatelessWidget {
  const PetProfiles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: double.infinity,
      child: Swiper(
        itemCount: petList.length,
        itemHeight: 130,
        itemWidth: 330,
        layout: SwiperLayout.STACK,
        loop: true,
        itemBuilder: (context, index) {
          return SwipeablePetCard(
              onTap: () {
                Navigator.pushNamed(context, '/aboutpet');
              },
              cardColor: dashBoardPetColors[index],
              petModel: petList[index]);
        },
      ),
    );
  }
}
