import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wetherapp/Resources/images/image_assest.dart';
import 'package:wetherapp/Utilities/utilities.dart';
import 'package:wetherapp/ViewModel/Controllers/home_controller.dart';
import 'package:wetherapp/ViewModel/Controllers/home_riverpod_controller.dart';

class Location extends ConsumerWidget {
  const Location({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(homeProvider); // immutable HomeState
    final setData = ref.read(homeProvider.notifier); // controller


    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              setData.getAddress(),
              style: const TextStyle(
                height: 0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            Text(
              Utilities.fromateDate(DateTime.now()),
              style: TextStyle(
                color: Colors.grey.withOpacity(0.7),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const Spacer(),
        SizedBox(
          height: 150,
          width: 150,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(ImageAssets.map,fit: BoxFit.cover),
            ),
          ),
        )
      ],
    );
  }
}
