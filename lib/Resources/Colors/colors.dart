import 'package:flutter/material.dart';

class AppColors {
  static BoxDecoration buildGradientBoxDecoration() {
    return const BoxDecoration(
      gradient: LinearGradient(
          colors: [Colors.white38, Colors.green],
          begin: Alignment.center,
          end: Alignment.centerRight,
          stops: [0.0, 1.0], //color kya sudhi felay ena mate
          tileMode: TileMode.clamp),
    );
  }
}
