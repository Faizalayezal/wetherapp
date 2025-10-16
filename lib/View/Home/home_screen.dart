import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wetherapp/Model/data_model.dart';
import 'package:wetherapp/Resources/Colors/colors.dart';
import 'package:wetherapp/Utilities/preferences.dart';
import 'package:wetherapp/Utilities/preferences_key.dart';
import 'package:wetherapp/View/Home/Components/app_bar.dart';
import 'package:wetherapp/View/Home/Components/container_list.dart';
import 'package:wetherapp/View/Home/Components/hours_list.dart';
import 'package:wetherapp/View/Home/Components/info_card.dart';
import 'package:wetherapp/View/Home/Components/location.dart';
import 'package:wetherapp/View/Next-Days/next_14_days.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  void initState() {
    super.initState();
    final jsonString = SharedPrefs.getString(dataModelResponse);

    print("-------------28>>${jsonString}");
    if (jsonString != null && jsonString.isNotEmpty) {
      final Map<String, dynamic> jsonMap = jsonDecode(jsonString);
      final model = DataModel.fromJson(jsonMap);
      print("-------------100>>>${model.toJson()}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppColors.buildGradientBoxDecoration(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          //SafeArea etle proper APp bar dekhay device pramane
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  const CustomAppBar(),
                  const SizedBox(height: 20),
                  Location(),
                  const Hero(
                    tag: 'Tag',
                    child: Material(
                      color: Colors.transparent,
                      child: InfoCard(),
                    ),
                  ),
                  const ContainerList(),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (ctx) => const NextDays()));
                    },
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Text(
                            'Today',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                          Spacer(),
                          Text(
                            'Next 14 days>',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const HoursList(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
