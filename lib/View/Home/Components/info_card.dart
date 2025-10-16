import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wetherapp/Resources/images/image_assest.dart';
import 'package:wetherapp/Utilities/utilities.dart';
import 'package:wetherapp/ViewModel/Controllers/home_controller.dart';
import 'package:wetherapp/ViewModel/Controllers/home_riverpod_controller.dart';

class InfoCard extends ConsumerStatefulWidget {
  const InfoCard({super.key});

  @override
  ConsumerState<InfoCard> createState() => _InfoCardState();
}

class _InfoCardState extends ConsumerState<InfoCard> {
  @override
  Widget build(BuildContext context) {
    final data = ref.watch(homeProvider); // immutable HomeState
    final setData = ref.read(homeProvider.notifier); // controller

    var size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: 233,
      width: size.width,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 180,
            margin: const EdgeInsets.only(bottom: 30),
            width: size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.blue.withOpacity(.3),
                    Colors.blue.withOpacity(.4),
                    Colors.blue.withOpacity(.3),
                  ]),
            ),
          ),
          Positioned(
            top: -10,
            left: 10,
            child: Image.asset(
              setData.getImage(data.currentIndex),
              height: 150,
              width: 170,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            bottom: 50,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  setData.getConditions(),
                  style: const TextStyle(
                    height: 0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  Utilities.currantTime(),
                  style: TextStyle(
                    height: 0,
                    color: Colors.white.withOpacity(0.8),
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 35,
            right: 50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.white,
                        Colors.white.withOpacity(0.1),
                      ],
                    ).createShader(bounds);
                  },
                  child: Text(
                    setData.getCurrantTemp(),
                    style: const TextStyle(
                      height: 0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 60,
                    ),
                  ),
                ),
                Text(
                  'Feel like ${setData.getFeelLike()}',
                  style: const TextStyle(
                    height: 0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            right: 0,
            child: ShaderMask(
              shaderCallback: (Rect bounds) {
                return LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white,
                    Colors.white.withOpacity(0.1),
                  ],
                ).createShader(bounds);
              },
              child: Image.asset(
                ImageAssets.windwave,
                height: 100,
                width: 150,
              ),
            ),
          )
        ],
      ),
    );
  }
}
