// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  Hours? get hours => throw _privateConstructorUsedError;
  DataModel? get model => throw _privateConstructorUsedError;
  int get currentIndex => throw _privateConstructorUsedError;
  bool get animator => throw _privateConstructorUsedError;
  MyDataClass? get myLis2 => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {Hours? hours,
      DataModel? model,
      int currentIndex,
      bool animator,
      MyDataClass? myLis2});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hours = freezed,
    Object? model = freezed,
    Object? currentIndex = null,
    Object? animator = null,
    Object? myLis2 = freezed,
  }) {
    return _then(_value.copyWith(
      hours: freezed == hours
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as Hours?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as DataModel?,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      animator: null == animator
          ? _value.animator
          : animator // ignore: cast_nullable_to_non_nullable
              as bool,
      myLis2: freezed == myLis2
          ? _value.myLis2
          : myLis2 // ignore: cast_nullable_to_non_nullable
              as MyDataClass?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Hours? hours,
      DataModel? model,
      int currentIndex,
      bool animator,
      MyDataClass? myLis2});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hours = freezed,
    Object? model = freezed,
    Object? currentIndex = null,
    Object? animator = null,
    Object? myLis2 = freezed,
  }) {
    return _then(_$HomeStateImpl(
      hours: freezed == hours
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as Hours?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as DataModel?,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      animator: null == animator
          ? _value.animator
          : animator // ignore: cast_nullable_to_non_nullable
              as bool,
      myLis2: freezed == myLis2
          ? _value.myLis2
          : myLis2 // ignore: cast_nullable_to_non_nullable
              as MyDataClass?,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {this.hours,
      this.model,
      this.currentIndex = 0,
      this.animator = false,
      this.myLis2});

  @override
  final Hours? hours;
  @override
  final DataModel? model;
  @override
  @JsonKey()
  final int currentIndex;
  @override
  @JsonKey()
  final bool animator;
  @override
  final MyDataClass? myLis2;

  @override
  String toString() {
    return 'HomeState(hours: $hours, model: $model, currentIndex: $currentIndex, animator: $animator, myLis2: $myLis2)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.hours, hours) || other.hours == hours) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex) &&
            (identical(other.animator, animator) ||
                other.animator == animator) &&
            (identical(other.myLis2, myLis2) || other.myLis2 == myLis2));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, hours, model, currentIndex, animator, myLis2);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final Hours? hours,
      final DataModel? model,
      final int currentIndex,
      final bool animator,
      final MyDataClass? myLis2}) = _$HomeStateImpl;

  @override
  Hours? get hours;
  @override
  DataModel? get model;
  @override
  int get currentIndex;
  @override
  bool get animator;
  @override
  MyDataClass? get myLis2;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
