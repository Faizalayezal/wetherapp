import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wetherapp/Resources/Colors/colors.dart';
import 'package:wetherapp/Resources/images/image_assest.dart';
import 'package:wetherapp/ViewModel/Controllers/home_controller.dart';
import 'package:wetherapp/ViewModel/Controllers/home_riverpod_controller.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    //initstate me setState puru that pachhi call thay Future.delayed no use etle krvama aave
    Future.delayed(Duration.zero,() {
      ref.read(homeProvider.notifier).getData(context);
    },);
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppColors.buildGradientBoxDecoration(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Image.asset(
            ImageAssets.nightStatRain,
            height: 200,
            width: 200,
          ),
        ),
      ),
    );
  }
}
