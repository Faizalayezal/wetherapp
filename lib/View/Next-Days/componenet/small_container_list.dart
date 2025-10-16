import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wetherapp/Resources/images/image_assest.dart';
import 'package:wetherapp/View/Home/Components/small_container.dart';
import 'package:wetherapp/ViewModel/Controllers/days_controller.dart';
import 'package:wetherapp/ViewModel/Controllers/days_riverpod_controller.dart';
import 'package:wetherapp/ViewModel/Controllers/home_controller.dart';
import 'package:wetherapp/ViewModel/Controllers/home_riverpod_controller.dart';

class SmallContainerList extends ConsumerStatefulWidget {
  const SmallContainerList({super.key});

  @override
  ConsumerState<SmallContainerList> createState() => _SmallContainerListState();
}

class _SmallContainerListState extends ConsumerState<SmallContainerList> {
  @override
  Widget build(BuildContext context) {
    final homeData = ref.watch(homeProvider);
    final dayData = ref.watch(daysProvider);
    return Row(
      children: [
        const Spacer(),
        SmallContainer(
          text: '${dayData.day?.precipprob.toString()}%',
          image: ImageAssets.heavyRain,
          color: Colors.white38,
          textColor: Colors.white,
        ),
        const Spacer(),
        SmallContainer(
          text: '${dayData.day?.windspeed.toString()}km/h',
          image: ImageAssets.wind,
          color: Colors.white38,
          textColor: Colors.white,
        ),
        const Spacer(),
        SmallContainer(
          text: '${dayData.day?.humidity.toString()}%',
          image: ImageAssets.sun,
          color: Colors.white38,
          textColor: Colors.white,
        ),
        const Spacer(),

      ],
    );
  }
}
