import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wetherapp/Data/Network/data_object.dart';
import 'package:wetherapp/Model/data_model.dart';
import 'package:wetherapp/Repository/home_repositry.dart';
import 'package:wetherapp/Resources/images/image_assest.dart';
import 'package:wetherapp/Utilities/utilities.dart';
import 'package:wetherapp/View/Home/home_screen.dart';

/*final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
//context get krva mate

class HomeController extends ChangeNotifier {
  DataModel model = DataModel();
  Hours hours = Hours();
  int currentIndex = 0;
  bool animator = false;
  MyDataClass? myLis2 = MyDataClass();

  int getCurrantIndex() => currentIndex;
  bool compareIndex(int index) => index == currentIndex;

  String getHour(int index) => Utilities.formateTimeWithoutAmPm(
      model.days![0].hours![index].datetime.toString());

  String getImage(int index) => Utilities
              .imageMap[model.days![0].hours![index].conditions.toString()] ==
          null
      ? ImageAssets.nightStatRain
      : Utilities.imageMap[model.days![0].hours![index].conditions.toString()]!;

  String getAddress() {
    return '${model.address.toString()},\n${model.timezone.toString()}';
  }

  String getConditions() {
    return hours.conditions.toString();
  }

  String getCurrantTemp() => hours.temp!.toInt().toString();

  String getFeelLike() {
    return hours.feelslike!.toInt().toString();
  }

  String getCloudOver() => hours.cloudcover!.toInt().toString();

  String getWindSpeed() => hours.windspeed!.toInt().toString();

  String getHumidity() => hours.humidity!.toInt().toString();

  getData(BuildContext context) async {
    var reponse = await HomeRepositry.hitApi();
    debugPrint("Response :: $reponse");
    model = DataModel.fromJson(reponse);
    DatabaseHelper.saveUser(DataModel.fromJson(reponse));
    myLis2?.addData(model.days![currentIndex]);

    for (int i = 0; i < model.days![0].hours!.length; i++) {
      if (Utilities.checkTime(model.days![0].hours![i].datetime.toString())) {
        hours = model.days![0].hours![i];
        currentIndex = i;
        break;
      }
    }
    myLis2?.getAllData().map((e) {
      print('gsdfsdjgsdhfg-->  ${e.temp}');
    }).toList();

    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (ctx) => const HomeScreen()));
  }

  setHour(int index) {
    Timer(const Duration(milliseconds: 100), () => animator = true);
    currentIndex = index;
    hours = model.days![0].hours![index];
    Timer(const Duration(milliseconds: 100), () => animator = false);
  }
}

final homeProvider = ChangeNotifierProvider((ref) => HomeController());*/
