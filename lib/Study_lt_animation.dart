import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieDemo extends StatelessWidget {
  const LottieDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 200,   // set container size
          height: 200,
          decoration: BoxDecoration(
            color: Colors.blue.shade50,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Lottie.asset(
            'Assets/result page success motion design.json',   // your lottie file
            fit: BoxFit.cover,       // adjust how animation fits
            repeat: true,              // keep looping
          ),
        ),
      ),
    );
  }
}