import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wetherapp/Resources/images/image_assest.dart';
import 'package:wetherapp/View/Home/Components/small_container.dart';
import 'package:wetherapp/ViewModel/Controllers/home_riverpod_controller.dart';

class ContainerList extends ConsumerWidget {
  const ContainerList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
   // final data = ref.watch(homeProvider);
    final data = ref.read(homeProvider.notifier);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SmallContainer(
            text: '${data.getCloudOver()}%',
            image: ImageAssets.heavyRain,
            color: Colors.black54,
            textColor: Colors.white,
          ),
          SmallContainer(
            text: '${data.getWindSpeed()}km/h',
            image: ImageAssets.wind,
            color: Colors.black54,
            textColor: Colors.white,
          ),
          SmallContainer(
            text: '${data.getHumidity()}%',
            image: ImageAssets.sun,
            color: Colors.black54,
            textColor: Colors.white,
          ),

        ],
      ),
    );
  }
}
