import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wetherapp/Resources/images/image_assest.dart';
import 'package:wetherapp/Utilities/utilities.dart';
import 'package:wetherapp/ViewModel/Controllers/days_riverpod_controller.dart';

import 'small_container_list.dart';

class CenterCard extends ConsumerStatefulWidget {
  const CenterCard({super.key});

  @override
  ConsumerState<CenterCard> createState() => _CenterCardState();
}

class _CenterCardState extends ConsumerState<CenterCard> {
  @override
  Widget build(BuildContext context) {
    final dayData = ref.watch(daysProvider);
    final setDayData = ref.read(daysProvider.notifier);
    var size = MediaQuery.of(context).size;



    return Container(
      height: 440,
      width: size.width,
      margin: const EdgeInsets.only(top: 80),
      child: Stack(
        children: [
          Positioned(
            bottom: 50,
            left: 30,
            right: 30,
            child: Container(
              height: 350,
              width: size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.blue.withOpacity(0.7),
                    Colors.blue.withOpacity(0.5),
                    Colors.blue.withOpacity(0.7),
                  ],
                ),
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 30, top: 10),
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
                                  Colors.white.withOpacity(0.5),
                                ],
                              ).createShader(bounds);
                            },
                            child: Text('${dayData.day?.temp}\u00b0',
                              style: const TextStyle(
                                  fontSize: 70,
                                  height: 0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          Text(
                            'Feel like ${dayData.day?.feelslike}',
                            style: const TextStyle(
                                height: 0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Spacer(),
                          Text(
                            dayData.day?.conditions.toString()??'',
                            style: const TextStyle(
                              height: 0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            Utilities.currantTime(),
                            style: TextStyle(
                              height: 0,
                              color: Colors.white.withOpacity(0.9),
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: ShaderMask(
                      shaderCallback: (Rect bond) {
                        return LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.white,
                            Colors.white.withOpacity(0.5),
                          ],
                        ).createShader(bond);
                      },
                      child: Image.asset(
                        ImageAssets.windwave,
                        height: 100,
                        width: 180,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 30,
                    child: SizedBox(
                      width: size.width - 60,
                      child: const SmallContainerList(),
                    ),
                  ),
                  Positioned(
                    left: 30,
                    top: 1,
                    child: Image.asset(
                      setDayData.getImage(dayData.currentIndex,ref),
                      height: 160,
                      width: 160,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
