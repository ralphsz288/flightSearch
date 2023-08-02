import 'package:client/screens/flight_search_result_page.dart';
import 'package:client/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return const ProviderScope(
      child: MaterialApp(
        home: HomePage(),
      ),
    );
  }
}

