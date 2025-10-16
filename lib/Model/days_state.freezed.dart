// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'days_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DaysState {
  Days? get day => throw _privateConstructorUsedError;
  int get currentIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DaysStateCopyWith<DaysState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DaysStateCopyWith<$Res> {
  factory $DaysStateCopyWith(DaysState value, $Res Function(DaysState) then) =
      _$DaysStateCopyWithImpl<$Res, DaysState>;
  @useResult
  $Res call({Days? day, int currentIndex});
}

/// @nodoc
class _$DaysStateCopyWithImpl<$Res, $Val extends DaysState>
    implements $DaysStateCopyWith<$Res> {
  _$DaysStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = freezed,
    Object? currentIndex = null,
  }) {
    return _then(_value.copyWith(
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as Days?,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DaysStateImplCopyWith<$Res>
    implements $DaysStateCopyWith<$Res> {
  factory _$$DaysStateImplCopyWith(
          _$DaysStateImpl value, $Res Function(_$DaysStateImpl) then) =
      __$$DaysStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Days? day, int currentIndex});
}

/// @nodoc
class __$$DaysStateImplCopyWithImpl<$Res>
    extends _$DaysStateCopyWithImpl<$Res, _$DaysStateImpl>
    implements _$$DaysStateImplCopyWith<$Res> {
  __$$DaysStateImplCopyWithImpl(
      _$DaysStateImpl _value, $Res Function(_$DaysStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = freezed,
    Object? currentIndex = null,
  }) {
    return _then(_$DaysStateImpl(
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as Days?,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DaysStateImpl implements _DaysState {
  const _$DaysStateImpl({this.day, this.currentIndex = 0});

  @override
  final Days? day;
  @override
  @JsonKey()
  final int currentIndex;

  @override
  String toString() {
    return 'DaysState(day: $day, currentIndex: $currentIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DaysStateImpl &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, day, currentIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DaysStateImplCopyWith<_$DaysStateImpl> get copyWith =>
      __$$DaysStateImplCopyWithImpl<_$DaysStateImpl>(this, _$identity);
}

abstract class _DaysState implements DaysState {
  const factory _DaysState({final Days? day, final int currentIndex}) =
      _$DaysStateImpl;

  @override
  Days? get day;
  @override
  int get currentIndex;
  @override
  @JsonKey(ignore: true)
  _$$DaysStateImplCopyWith<_$DaysStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
