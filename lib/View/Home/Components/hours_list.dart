import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wetherapp/ViewModel/Controllers/home_riverpod_controller.dart';

class HoursList extends ConsumerStatefulWidget {
  const HoursList({super.key});

  @override
  ConsumerState<HoursList> createState() => _HoursListState();
}

class _HoursListState extends ConsumerState<HoursList> {
  @override
  Widget build(BuildContext context) {
   final data = ref.watch(homeProvider); // immutable HomeState
   final setData = ref.read(homeProvider.notifier); // controller

    return SizedBox(
      height: 180,
      child: ListView.builder(
        itemCount: data.model?.days![0].hours?.length,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(vertical: 10),
        itemBuilder: (ctx, index)
        {
          final isSelected = data.currentIndex == index;
          final hour = data.model?.days?[0].hours?[index];
          if (hour == null) return const SizedBox();

          return GestureDetector(
            onTap: () {
                setData.setHour(index);
            },
            child: Column(
              children: [
                Card(
                  elevation: 10,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  shadowColor: isSelected ? Colors.blue : Colors.white70,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Container(
                    height: 130,
                    width: 80,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        color: isSelected ? Colors.blue : Colors.white70,
                        borderRadius: BorderRadius.circular(50)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          setData.getHour(index),
                          style: TextStyle(
                            color: isSelected
                                ? Colors.white
                                : Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Image.asset(
                          setData.getImage(index),
                          height: 50,
                          width: 50,
                        ),
                        Text(
                          '${data.model!.days![0].hours![index].temp.toInt()}\u00b0',
                          style: TextStyle(
                            color: isSelected
                                ? Colors.white
                                : Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
