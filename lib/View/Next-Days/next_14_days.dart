import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wetherapp/Model/data_model.dart';
import 'package:wetherapp/Resources/Colors/colors.dart';
import 'package:wetherapp/Utilities/preferences.dart';
import 'package:wetherapp/Utilities/preferences_key.dart';
import 'package:wetherapp/View/Next-Days/componenet/app_bar.dart';
import 'package:wetherapp/View/Next-Days/componenet/bottom_list.dart';
import 'package:wetherapp/View/Next-Days/componenet/center_card.dart';
import 'package:wetherapp/View/Next-Days/componenet/days_list.dart';

class NextDays extends ConsumerStatefulWidget {
  const NextDays({super.key});

  @override
  ConsumerState<NextDays> createState() => _NextDaysState();
}

class _NextDaysState extends ConsumerState<NextDays> {


  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      getdata();
    });
  }


  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;
    return Container(
      decoration: AppColors.buildGradientBoxDecoration(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SizedBox(
            height: size.height,
            width: size.width,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  top: 1,
                  child: Container(
                    height: size.height / 1.8,
                    width: size.width,
                    child: const Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        CustomeAppBar(),
                        SizedBox(height: 20),
                        DaysList(),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 1,
                  child: Container(
                    height: size.height / 1.9,
                    width: size.width,
                    decoration: const BoxDecoration(
                        color: Colors.white38,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        )),
                  ),
                ),
                const BottomList(),
                const Hero(
                  tag: 'tag',
                  child: Material(
                    color: Colors.transparent,
                    child: CenterCard(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void getdata() async {
    final jsonString = SharedPrefs.getString(dataModelResponse);

    if (jsonString != null && jsonString.isNotEmpty) {
      final Map<String, dynamic> jsonMap = jsonDecode(jsonString);
      final model = DataModel.fromJson(jsonMap);
      print("-------------100>>>${model.toJson()}");
    }
  }
}
