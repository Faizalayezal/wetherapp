import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wetherapp/ViewModel/Controllers/days_controller.dart';
import 'package:wetherapp/ViewModel/Controllers/days_riverpod_controller.dart';
import 'package:wetherapp/ViewModel/Controllers/home_controller.dart';
import 'package:wetherapp/ViewModel/Controllers/home_riverpod_controller.dart';

class DaysList extends ConsumerStatefulWidget {
  const DaysList({super.key});

  @override
  ConsumerState<DaysList> createState() => _DaysListState();
}

class _DaysListState extends ConsumerState<DaysList> {
  @override
  void initState() {
    Future.delayed(
      Duration.zero, () {
        ref.read(daysProvider.notifier).setDay(0,ref);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final dayData = ref.watch(daysProvider);
    final setDayData = ref.read(daysProvider.notifier);
    final homeData = ref.watch(homeProvider);

    return SizedBox(
      height: 130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: homeData.model?.days?.length,
        itemBuilder: (ctx, index) {
          return GestureDetector(
            onTap: () {
              ref.read(daysProvider.notifier).setDay(index,ref);
            },
            child: Container(
              width: 70,
              margin: const EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(
                color: dayData.currentIndex == index
                    ? Colors.white
                    : Colors.white12,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: Image.asset(
                      setDayData.getImage(index,ref),
                    ),
                  ),
                  Text(
                    setDayData.getMonth(index,ref),
                    style: TextStyle(
                      color: dayData.currentIndex == index
                          ? Colors.purple
                          : Colors.white,
                      fontSize: 30,
                      height: 0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    setDayData.getMonthDay(index,ref),
                    style: TextStyle(
                      color: dayData.currentIndex == index
                          ? Colors.purple
                          : Colors.white,
                      fontSize: 30,
                      height: 0,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
