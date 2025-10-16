import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wetherapp/Model/data_model.dart';
import 'package:wetherapp/Resources/images/image_assest.dart';
import 'package:wetherapp/Utilities/utilities.dart';
import 'package:wetherapp/ViewModel/Controllers/home_controller.dart';

/*class DaysController extends ChangeNotifier {
  int currentIndex = 0;

  final ChangeNotifierProviderRef<Object?> ref;

  DaysController(this.ref);

  Days day = Days();

  setDay(int index) {
    //dependsy injection riverpod
    final homeController = ref.read(homeProvider);
    day = homeController.model.days![index];
    print('index mate-->${index}');
    currentIndex = index;
    notifyListeners();
  }

  String getTemp(int index) {
    final homeController = ref.read(homeProvider);
    final temp = '${homeController.model.days![index].temp}\u00b0';
    print('temp mate-->${temp}');
    return temp;
  }

  String getImage(int index) {
    final homeController = ref.read(homeProvider);
    return Utilities.imageMap[homeController.model.days![index].conditions] ==
            null
        ? ImageAssets.nightStatRain
        : Utilities.imageMap[homeController.model.days![index].conditions]!;
  }

  String getMonth(int index) {
    final homeController = ref.read(homeProvider);

    String date = homeController.model.days![index].datetime.toString();
    return Utilities.extractDate(date);
  }

  String getMonthDay(int index) {
    final homeController = ref.read(homeProvider);

    String date = homeController.model.days![index].datetime.toString();
    return Utilities.extractDay(date);
  }

  String getData(int index) {
    final homeController = ref.read(homeProvider);

    DateTime date =
        DateTime.parse(homeController.model.days![index].datetime.toString());
    return Utilities.fromateDate(date);
  }

  String getMinTemp(int index) {
    final homeController = ref.read(homeProvider);

    return '${homeController.model.days![index].tempmin!.toInt().toString()}\u00b0'; //tempreture mate u00b0 thay
  }

  String getMaxTemp(int index) {
    final homeController = ref.read(homeProvider);

    return '${homeController.model.days![index].tempmax!.toInt().toString()}\u00b0'; //tempreture mate u00b0 thay
  }
}

final dayProvider = ChangeNotifierProvider((ref) => DaysController(ref));*/
