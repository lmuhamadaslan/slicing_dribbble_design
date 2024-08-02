import 'dart:async';

import 'package:clonning_dribbble/views/home.view.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Get.to(const HomeView());
    });
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: const Center(
        child: Text(
          'Ini Logo',
          style: TextStyle(
              color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
