import 'package:flutter/material.dart';

class FlightSearchResultPage extends StatelessWidget {
  final String fromLocation;
  final String toLocation;
  final double fromDays;
  final double toDays;

  const FlightSearchResultPage(
      {required this.toLocation,
        required this.fromLocation,
        required this.fromDays,
        required this.toDays,
        Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(toLocation),
            Text(fromLocation),
            Text(fromDays.toString()),

          ],
        ),
      ),
    );
  }
}
