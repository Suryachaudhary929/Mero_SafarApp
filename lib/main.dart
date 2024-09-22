import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:merosafarapp/Onboarding%20Screen/onboarding_screen.dart';
import 'package:page_transition/page_transition.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MeroSafarApp());
}

class MeroSafarApp extends StatelessWidget {
  const MeroSafarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Hamro Safar",
        theme: ThemeData(
          primaryColor: Colors.cyan.shade800,
        ),
        home: AnimatedSplashScreen(
            animationDuration: Duration(seconds: 5),
            splash: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset("assets/images/animation.json",
                    fit: BoxFit.cover, height: 270, width: 295),
                Text(
                  "Mero Safar",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 40),
                )
              ],
            ),
            splashIconSize: 350,
            nextScreen: OnboardingScreen(),
            splashTransition: SplashTransition.fadeTransition,
            pageTransitionType: PageTransitionType.fade,
            backgroundColor: Colors.white));
  }
}
