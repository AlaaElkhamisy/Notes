import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:note_app/views/notes_view.dart';

class SplachBody extends StatelessWidget {
  const SplachBody({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: Colors.black,
      duration: 2000,
      splashTransition: SplashTransition.scaleTransition,
      splash: SizedBox(
        child: Center(
          child:
              Lottie.asset("assets/animation/Animation - 1734091839161.json"),
        ),
      ),
      nextScreen: const NotesView(),
      splashIconSize: 600,
    );
  }
}
