import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:my_gadget/constants/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  @override
  void initState() {
    _controller = AnimationController(vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PrimaryColors().olivGree,
      body: Center(
          child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
              bottom: 10,
              child: Text(
                "CrickCup",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    color: PrimaryColors().offWhite),
              )),
          Lottie.asset(
            "assets/splash_loader.json",
            width: 350,
            height: 250,
            controller: _controller,
            onLoaded: (p0) {
              _controller
                ..duration = p0.duration
                ..forward().whenComplete(() {
                  // Navigator.push(
                  //       context, MaterialPageRoute(builder: (context) => const Login()));
                });
            },
          ),
        ],
      )),
    );
  }
}
