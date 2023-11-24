import 'package:flutter/material.dart';
import 'package:pawbuddy/core/presentaion/common_widgets/onboard_bg.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    navigaTeToOnBoard();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoardBG(
          child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: MediaQuery.sizeOf(context).height * 0.200,
            child: Container(
              width: MediaQuery.sizeOf(context).width,
              height: 120,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: AssetImage("assets/img/Logo Paw Buddy.png"))),
            ),
          ),
          Positioned(
            left: -30,
            bottom: 0,
            child: Container(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height * 0.750,
              decoration: const BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: AssetImage("assets/img/Dog.png"))),
            ),
          )
        ],
      )),
    );
  }

  void navigaTeToOnBoard() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacementNamed(context, '/onBoard');
      },
    );
  }
}
