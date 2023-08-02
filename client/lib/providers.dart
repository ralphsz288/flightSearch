import 'package:client/models/flight_state.dart';
import 'package:client/models/view_state.dart';
import 'package:client/providers/flight_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final flightStateProvider =
    StateNotifierProvider<FlightViewModel, ViewState<FlightState>>((ref) {
  return FlightViewModel();
});
