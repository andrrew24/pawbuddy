import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pawbuddy/core/presentaion/views/addProfile/addprofile_breed.dart';
import 'package:pawbuddy/core/presentaion/views/addProfile/addprofile_caretaker.dart';
import 'package:pawbuddy/core/presentaion/views/addProfile/addprofile_details.dart';
import 'package:pawbuddy/core/presentaion/views/addProfile/addprofile_impdates.dart';
import 'package:pawbuddy/core/presentaion/views/dashboard/dashboard_view.dart';
import 'package:pawbuddy/core/presentaion/views/onBoarding/login_view/login_screen.dart';
import 'package:pawbuddy/core/presentaion/views/onBoarding/login_view/on_board_view.dart';
import 'package:pawbuddy/core/presentaion/views/onBoarding/login_view/otp_screen.dart';
import 'package:pawbuddy/core/presentaion/views/profile/about_pet.dart';
import 'package:pawbuddy/core/presentaion/views/splash_view/splach_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const PawBuddy());
}

class PawBuddy extends StatelessWidget {
  const PawBuddy({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashView(),
        '/onBoard': (context) => const OnBoard(),
        '/login': (context) => const LoginScreen(),
        '/otp': (context) => const OtpScreen(),
        '/addprofilebreed': (context) => const AddProfileBreed(),
        '/addprofiledetails': (context) => const AddProfileDetails(),
        '/addprofileimpdates': (context) => const AddProfileImpDates(),
        '/addprofilecaretakers': (context) => const AddProfileCareTaker(),
        '/dashboard': (context) => const Dashboard(),
        '/aboutpet': (context) => const AboutPet(),
        
      },
    );
  }
}
