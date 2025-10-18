import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wetherapp/Data/Network/data_object.dart';
import 'package:wetherapp/Model/home_state.dart';
import 'package:wetherapp/Model/data_model.dart';
import 'package:wetherapp/Repository/home_repositry.dart';
import 'package:wetherapp/Resources/images/image_assest.dart';
import 'package:wetherapp/Utilities/preferences.dart';
import 'package:wetherapp/Utilities/preferences_key.dart';
import 'package:wetherapp/Utilities/utilities.dart';
import 'package:wetherapp/View/Home/home_screen.dart';

class HomeController extends Notifier<HomeState> {
  @override
  HomeState build() {
    ref.onDispose((){
      debugPrint('HomeController disposed');
    });
    return const HomeState();
  }


  String getHour(int index) =>
      Utilities.formateTimeWithoutAmPm(state.model!.days![0].hours![index].datetime.toString());

  String getImage(int index) =>
      Utilities.imageMap[state.model!.days![0].hours![index].conditions.toString()] ??
          ImageAssets.nightStatRain;

  String getAddress() =>
      '${state.model!.address.toString()},\n${state.model!.timezone.toString()}';

  String getConditions() => state.hours!.conditions.toString();

  String getCurrantTemp() => state.hours!.temp!.toInt().toString();

  String getFeelLike() => state.hours!.feelslike!.toInt().toString();

  String getCloudOver() => state.hours!.cloudcover!.toInt().toString();

  String getWindSpeed() => state.hours!.windspeed!.toInt().toString();

  String getHumidity() => state.hours!.humidity!.toInt().toString();

  Future<void> getData(BuildContext context) async {
    final response = await HomeRepositry.hitApi();
    final model = DataModel.fromJson(response);
    final jsonString = jsonEncode(model.toJson());

    await SharedPrefs.setString(dataModelResponse, jsonString);

    MyDataClass? myLis2 = MyDataClass();
    myLis2.addData(model.days![state.currentIndex]);

    Hours hours = model.days![0].hours!.firstWhere(
          (h) => Utilities.checkTime(h.datetime.toString()),
      orElse: () => model.days![0].hours!.first,
    );

    state = state.copyWith(
      model: model,
      hours: hours,
      myLis2: myLis2,
      currentIndex: model.days![0].hours!.indexOf(hours),
    );

    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (ctx) => const HomeScreen()),
    );
  }

  void setHour(int index) {
    state = state.copyWith(animator: true);
    Timer(const Duration(milliseconds: 100), () {
      state = state.copyWith(
        currentIndex: index,
        hours: state.model!.days![0].hours![index],
      );
      Timer(const Duration(milliseconds: 100), () {
        state = state.copyWith(animator: false);
      });
    });
  }
}
final homeProvider = NotifierProvider<HomeController, HomeState>(HomeController.new);
