import 'package:app1/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:app1/home/home_page/home_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-commerce App',
      debugShowCheckedModeBanner: false,
      home: FlutterSplashScreen.gif(
        gifPath: 'assets/gifs/splash.gif',
        gifWidth: 269,
        gifHeight: 474,
        nextScreen: BottomNav(),
        duration: const Duration(milliseconds: 5515),
        onInit: () async {
          debugPrint("onInit");
        },
        onEnd: () async {
          debugPrint("onEnd 1");
        },
      )
    );
  }
}
