import 'package:http/http.dart' as http;

class FlightApi {
  final baseUrl = 'http://192.168.1.170:8000/';

  Future getFlights(Map<String, dynamic> queryParameters) async {
    const path = 'getFlights/';
    final queryString = Uri(
        queryParameters: queryParameters
            .map((key, value) => MapEntry(key, value.toString()))).query;
    final url = Uri.parse('$baseUrl$path?$queryString');
    final resp = await http.get(url);
    return resp;
  }
}
