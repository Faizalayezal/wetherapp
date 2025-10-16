import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wetherapp/Model/days_state.dart';
import 'package:wetherapp/Resources/images/image_assest.dart';
import 'package:wetherapp/Utilities/utilities.dart';
import 'package:wetherapp/ViewModel/Controllers/home_riverpod_controller.dart';

class DaysController extends Notifier<DaysState> {

  @override
  DaysState build() {
    return const DaysState();
  }

  // dependency injection: homeProvider को access करना
  void setDay(int index, WidgetRef ref) {
    final homeController = ref.read(homeProvider);
    final day = homeController.model!.days![index];

    state = state.copyWith(currentIndex: index, day: day);
  }

  String getTemp(int index, WidgetRef ref) {
    final homeController = ref.read(homeProvider);
    return '${homeController.model!.days![index].temp}\u00b0';
  }

  String getImage(int index, WidgetRef ref) {
    final homeController = ref.read(homeProvider);
    return Utilities.imageMap[homeController.model!.days![index].conditions] ??
        ImageAssets.nightStatRain;
  }

  String getMonth(int index, WidgetRef ref) {
    final homeController = ref.read(homeProvider);
    String date = homeController.model!.days![index].datetime.toString();
    return Utilities.extractDate(date);
  }

  String getMonthDay(int index, WidgetRef ref) {
    final homeController = ref.read(homeProvider);
    String date = homeController.model!.days![index].datetime.toString();
    return Utilities.extractDay(date);
  }

  String getData(int index, WidgetRef ref) {
    final homeController = ref.read(homeProvider);
    DateTime date =
    DateTime.parse(homeController.model!.days![index].datetime.toString());
    return Utilities.fromateDate(date);
  }

  String getMinTemp(int index, WidgetRef ref) {
    final homeController = ref.read(homeProvider);
    return '${homeController.model!.days![index].tempmin!.toInt()}\u00b0';
  }

  String getMaxTemp(int index, WidgetRef ref) {
    final homeController = ref.read(homeProvider);
    return '${homeController.model!.days![index].tempmax!.toInt()}\u00b0';
  }
}

final daysProvider = NotifierProvider<DaysController, DaysState>(
      () => DaysController(),
);
