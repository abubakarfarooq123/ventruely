import 'dart:async';

import 'package:flutter/material.dart';

import '../utils/Routes/routes_name.dart';
class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  late Animation _logoAnimation;
  late AnimationController _logoController;

  @override
  void initState() {
    _logoController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _logoAnimation = CurvedAnimation(
      parent: _logoController,
      curve: Curves.easeIn,
    );

    _logoAnimation.addListener(() {
      if (_logoAnimation.status == AnimationStatus.completed) {
        return;
      }
      setState(() {});
    });

    _logoController.forward();
    super.initState();
    startTime();
  }

  Widget _buildLogo() {
    return Center(
      child: SizedBox(
        height: _logoAnimation.value * 700.0,
        width: _logoAnimation.value * 600.0,
        child: Image.asset("assets/images/logo.png"),
      ),
    );
  }

  void navigationPage() async {
    Navigator.pushNamed(context, RoutesName.intro1);
  }

  startTime() async {
    var duration = const Duration(seconds: 4);
    return Timer(duration, navigationPage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:  const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color.fromARGB(255,75, 57, 238), Color.fromARGB(255, 92, 86, 147)], // Adjust colors as needed
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(80.0),
          child: _buildLogo(),
        ),
      ),
    );
  }
}