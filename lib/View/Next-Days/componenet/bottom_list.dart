import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wetherapp/ViewModel/Controllers/days_controller.dart';
import 'package:wetherapp/ViewModel/Controllers/days_riverpod_controller.dart';
import 'package:wetherapp/ViewModel/Controllers/home_controller.dart';
import 'package:wetherapp/ViewModel/Controllers/home_riverpod_controller.dart';

class BottomList extends ConsumerStatefulWidget {
  const BottomList({super.key});

  @override
  ConsumerState<BottomList> createState() => _BottomListState();
}

class _BottomListState extends ConsumerState<BottomList> {
  @override
  Widget build(BuildContext context) {
    final dayData = ref.watch(daysProvider);
    final setDayData = ref.watch(daysProvider.notifier);
    final homeData = ref.watch(homeProvider);
    var size = MediaQuery.of(context).size;
    return Positioned(
      bottom: 1,
      child: SizedBox(
        height: size.height / 2,
        width: size.width,
        child: ListView.builder(
          itemCount: homeData.model?.days?.length,
          itemBuilder: (ctx, index) {
            return Card(
              color: Colors.white38,
              margin: EdgeInsets.only(
                  left: 20, right: 20, top: index == 0 ? 230 : 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Container(
                height: 100,
                width: size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white38,
                ),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      setDayData.getData(index,ref),
                      style: const TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: setDayData.getMinTemp(index,ref),
                            style: TextStyle(
                              color: Colors.grey.withOpacity(0.5),
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          const TextSpan(
                            text: '/',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          TextSpan(
                            text: setDayData.getMaxTemp(index,ref),
                            style: TextStyle(
                              color: Colors.grey.withOpacity(0.5),
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      setDayData.getImage(index,ref),
                      height: 50,
                      width: 50,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
