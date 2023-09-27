import 'dart:convert';

import 'package:client/models/flight_state.dart';
import 'package:client/models/view_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

class FlightViewModel extends StateNotifier<ViewState<FlightState>> {
  late FlightState _flightState;

  FlightViewModel() : super(const ViewState<FlightState>.ready());

  Future<void> init(String fromLocation, String toLocation, String fromDays,
      String toDays, DateTime fromDate, DateTime toDate) async {
    state = const ViewState<FlightState>.loading();

    final queryParameters = {
      'from': fromLocation,
      'to': toLocation,
      'nights_in_destination_from': fromDays,
      'nights_in_destination_to': toDays,
      'currency': 'EUR',
      'departure_date_from': fromDate,
      'return_date_to': toDate,
    };
    const baseUrl = 'http://192.168.1.206:8000/';
    const path = 'getFlights/';
    var queryString = Uri(
        queryParameters: queryParameters
            .map((key, value) => MapEntry(key, value.toString()))).query;
    var url = Uri.parse('$baseUrl$path?$queryString');
    final resp = await http.get(url);
    List data = json.decode(resp.body);


    if (resp.statusCode == 200 && data[0]['success'] == true) {
      _flightState = FlightState(
        fromLocation: fromLocation,
        toLocation: toLocation,
        fromDays: fromDays,
        toDays: toDays,
        fromDate: fromDate,
        toDate: toDate,
        resp: data,
      );
      print('rsppp');
      print(_flightState.resp![0]['data']['link']);
      state = ViewState<FlightState>.completed(_flightState);

    } else {
      state = const ViewState<FlightState>.error();
    }
  }

  void setToReady() {
    state = const ViewState<FlightState>.ready();
  }
}
