// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flight_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FlightState {
  String get fromLocation => throw _privateConstructorUsedError;

  String get toLocation => throw _privateConstructorUsedError;

  String get fromDays => throw _privateConstructorUsedError;

  String get toDays => throw _privateConstructorUsedError;

  DateTime get fromDate => throw _privateConstructorUsedError;

  DateTime get toDate => throw _privateConstructorUsedError;

  List<dynamic>? get resp => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FlightStateCopyWith<FlightState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlightStateCopyWith<$Res> {
  factory $FlightStateCopyWith(
          FlightState value, $Res Function(FlightState) then) =
      _$FlightStateCopyWithImpl<$Res, FlightState>;

  @useResult
  $Res call(
      {String fromLocation,
      String toLocation,
      String fromDays,
      String toDays,
      DateTime fromDate,
      DateTime toDate,
      List<dynamic>? resp});
}

/// @nodoc
class _$FlightStateCopyWithImpl<$Res, $Val extends FlightState>
    implements $FlightStateCopyWith<$Res> {
  _$FlightStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromLocation = null,
    Object? toLocation = null,
    Object? fromDays = null,
    Object? toDays = null,
    Object? fromDate = null,
    Object? toDate = null,
    Object? resp = freezed,
  }) {
    return _then(_value.copyWith(
      fromLocation: null == fromLocation
          ? _value.fromLocation
          : fromLocation // ignore: cast_nullable_to_non_nullable
              as String,
      toLocation: null == toLocation
          ? _value.toLocation
          : toLocation // ignore: cast_nullable_to_non_nullable
              as String,
      fromDays: null == fromDays
          ? _value.fromDays
          : fromDays // ignore: cast_nullable_to_non_nullable
              as String,
      toDays: null == toDays
          ? _value.toDays
          : toDays // ignore: cast_nullable_to_non_nullable
              as String,
      fromDate: null == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      toDate: null == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      resp: freezed == resp
          ? _value.resp
          : resp // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FlightStateCopyWith<$Res>
    implements $FlightStateCopyWith<$Res> {
  factory _$$_FlightStateCopyWith(
          _$_FlightState value, $Res Function(_$_FlightState) then) =
      __$$_FlightStateCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call(
      {String fromLocation,
      String toLocation,
      String fromDays,
      String toDays,
      DateTime fromDate,
      DateTime toDate,
      List<dynamic>? resp});
}

/// @nodoc
class __$$_FlightStateCopyWithImpl<$Res>
    extends _$FlightStateCopyWithImpl<$Res, _$_FlightState>
    implements _$$_FlightStateCopyWith<$Res> {
  __$$_FlightStateCopyWithImpl(
      _$_FlightState _value, $Res Function(_$_FlightState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromLocation = null,
    Object? toLocation = null,
    Object? fromDays = null,
    Object? toDays = null,
    Object? fromDate = null,
    Object? toDate = null,
    Object? resp = freezed,
  }) {
    return _then(_$_FlightState(
      fromLocation: null == fromLocation
          ? _value.fromLocation
          : fromLocation // ignore: cast_nullable_to_non_nullable
              as String,
      toLocation: null == toLocation
          ? _value.toLocation
          : toLocation // ignore: cast_nullable_to_non_nullable
              as String,
      fromDays: null == fromDays
          ? _value.fromDays
          : fromDays // ignore: cast_nullable_to_non_nullable
              as String,
      toDays: null == toDays
          ? _value.toDays
          : toDays // ignore: cast_nullable_to_non_nullable
              as String,
      fromDate: null == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      toDate: null == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      resp: freezed == resp
          ? _value._resp
          : resp // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc

class _$_FlightState implements _FlightState {
  _$_FlightState(
      {required this.fromLocation,
      required this.toLocation,
      required this.fromDays,
      required this.toDays,
      required this.fromDate,
      required this.toDate,
      final List<dynamic>? resp})
      : _resp = resp;

  @override
  final String fromLocation;
  @override
  final String toLocation;
  @override
  final String fromDays;
  @override
  final String toDays;
  @override
  final DateTime fromDate;
  @override
  final DateTime toDate;
  final List<dynamic>? _resp;

  @override
  List<dynamic>? get resp {
    final value = _resp;
    if (value == null) return null;
    if (_resp is EqualUnmodifiableListView) return _resp;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FlightState(fromLocation: $fromLocation, toLocation: $toLocation, fromDays: $fromDays, toDays: $toDays, fromDate: $fromDate, toDate: $toDate, resp: $resp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlightState &&
            (identical(other.fromLocation, fromLocation) ||
                other.fromLocation == fromLocation) &&
            (identical(other.toLocation, toLocation) ||
                other.toLocation == toLocation) &&
            (identical(other.fromDays, fromDays) ||
                other.fromDays == fromDays) &&
            (identical(other.toDays, toDays) || other.toDays == toDays) &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.toDate, toDate) || other.toDate == toDate) &&
            const DeepCollectionEquality().equals(other._resp, _resp));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      fromLocation,
      toLocation,
      fromDays,
      toDays,
      fromDate,
      toDate,
      const DeepCollectionEquality().hash(_resp));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FlightStateCopyWith<_$_FlightState> get copyWith =>
      __$$_FlightStateCopyWithImpl<_$_FlightState>(this, _$identity);
}

abstract class _FlightState implements FlightState {
  factory _FlightState(
      {required final String fromLocation,
      required final String toLocation,
      required final String fromDays,
      required final String toDays,
      required final DateTime fromDate,
      required final DateTime toDate,
      final List<dynamic>? resp}) = _$_FlightState;

  @override
  String get fromLocation;

  @override
  String get toLocation;

  @override
  String get fromDays;

  @override
  String get toDays;

  @override
  DateTime get fromDate;

  @override
  DateTime get toDate;

  @override
  List<dynamic>? get resp;

  @override
  @JsonKey(ignore: true)
  _$$_FlightStateCopyWith<_$_FlightState> get copyWith =>
      throw _privateConstructorUsedError;
}
