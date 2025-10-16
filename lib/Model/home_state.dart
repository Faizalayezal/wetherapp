import 'package:wetherapp/Data/Network/data_object.dart';
import 'package:wetherapp/Model/data_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_state.freezed.dart';


/*class HomeState {
  final Hours hours;
  final DataModel dataModel;
  final int currentIndex;
  final bool animator;
  final MyDataClass myLis2;

  HomeState(
      {required this.hours,
      required this.dataModel,
      required this.currentIndex,
      required this.animator,
      required this.myLis2});

  HomeState copyWith(
    Hours? hours,
    DataModel? dataModel,
    int? currentIndex,
    bool? animator,
    MyDataClass? myLis2,
  ) {
    return HomeState(
      hours: hours ?? this.hours,
      dataModel: dataModel ?? this.dataModel,
      currentIndex: currentIndex ?? this.currentIndex,
      animator: animator ?? this.animator,
      myLis2: myLis2 ?? this.myLis2,
    );
  }
}*/
@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    Hours? hours,
    DataModel? model,
    @Default(0) int currentIndex,
    @Default(false) bool animator,
    MyDataClass? myLis2,
  }) = _HomeState;
}