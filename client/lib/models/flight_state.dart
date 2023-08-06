import 'package:freezed_annotation/freezed_annotation.dart';

part 'flight_state.freezed.dart';

@freezed
class FlightState with _$FlightState {
  factory FlightState({
    required String fromLocation,
    required String toLocation,
    required String fromDays,
    required String toDays,
    required DateTime fromDate,
    required DateTime toDate,
    List? resp,
  }) = _FlightState;
}
