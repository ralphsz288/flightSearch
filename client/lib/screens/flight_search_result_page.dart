import 'package:client/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FlightSearchResult extends ConsumerWidget {
  const FlightSearchResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context,WidgetRef ref) {

    final viewState = ref.read(flightStateProvider.notifier);

    return WillPopScope(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              viewState.setToReady();
              Navigator.of(context).pushNamed('/home');
            }, icon: const Icon(Icons.arrow_back),
          ),
        ),
        body: Column(
          children: const [
            Text('afasf'),
          ],
        ),
      ),
      onWillPop: () async  {
        return false;
      },
    );
  }
}

