import 'package:client/models/flight_state.dart';
import 'package:client/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:client/screens/flight_search_result_page.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  RangeValues _rangeValues = const RangeValues(1, 50);
  late String fromLocation;
  late String toLocation;


  @override
  Widget build(BuildContext context) {
    FlightState state;
    final viewState = ref.watch(flightStateProvider);

    return viewState.when(
        loading:() => _loading(),
        ready: () => _body(),
        error:() => _error(),
        completed: (FlightState state) => const FlightSearchResult());

  }
    Widget _loading() {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

  Widget _error() {
    return const Scaffold(
      body: Center(
        child: Scaffold(
          body: Center(
            child: Text('There was an error'),
          ),
        )
      ),
    );
  }

    Widget _body(
        {FlightState? state}
        ) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20,top: 5,),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Center(
                  child: Text(
                    'Flight Search',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: TextFormField(
                  autofocus: false,
                  keyboardType: TextInputType.name,
                  decoration: const InputDecoration(
                      labelText: 'From:',
                      hintText: 'Enter iatacode',
                      prefixIcon: Icon(Icons.flight_takeoff_outlined),
                      border: OutlineInputBorder()),
                  onChanged: (value) {
                    setState(() {
                      fromLocation = value;
                    });
                  },
                  validator: (value) {
                    return value!.isEmpty ? 'Please enter username' : null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TextFormField(
                  autofocus: false,
                  keyboardType: TextInputType.name,
                  decoration: const InputDecoration(
                      labelText: 'To:',
                      hintText: 'Enter iatacode',
                      prefixIcon: Icon(Icons.flight_land_outlined),
                      border: OutlineInputBorder()),
                  onChanged: (value) {
                    setState(() {
                      toLocation = value;
                    });
                  },
                  validator: (value) {
                    return value!.isEmpty ? 'Please enter username' : null;
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 30),
                child: Center(
                    child: Text(
                      'How many days would you like to spend in your destination?',
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: RangeSlider(
                    values: _rangeValues,
                    max: 50,
                    divisions: 50,
                    labels: RangeLabels(
                      _rangeValues.start.round().toString(),
                      _rangeValues.end.round().toString(),
                    ),
                    onChanged: (RangeValues values) {
                      setState(() {
                        _rangeValues = values;
                      });
                    }),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          label: const Text('search flights'),
          onPressed: () async {
            await ref.read(flightStateProvider.notifier).init(fromLocation, toLocation, _rangeValues.start.toString(), _rangeValues.end.toString());
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      );
    }



}
