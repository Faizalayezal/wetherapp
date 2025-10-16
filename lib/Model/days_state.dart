import 'package:wetherapp/Data/Network/data_object.dart';
import 'package:wetherapp/Model/data_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'days_state.freezed.dart';

@freezed
class DaysState with _$DaysState {
  const factory DaysState({
    Days? day,
    @Default(0) int currentIndex,
  }) = _DaysState;
}

// flutter pub run build_runner build --delete-conflicting-outputs
//ganrate krva mate code