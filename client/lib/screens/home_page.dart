import 'package:client/models/flight_state.dart';
import 'package:client/providers.dart';
import 'package:client/providers/flight_view_model.dart';
import 'package:client/screens/flight_search_result_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  RangeValues _rangeValues = const RangeValues(1, 50);
  late String fromLocation;
  late String toLocation;
  DateTime startTime = DateTime.now();
  DateTime endTime = DateTime.now().add(const Duration(days: 10));
  TextEditingController dateRangeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final viewState = ref.watch(flightStateProvider);
    final state = ref.read(flightStateProvider);

    return viewState.when(
        loading: () => _loading(),
        ready: () => _body(),
        error: () => _error(),
        completed: (FlightState state) => FlightSearchResultPage(state: state));
  }

  Widget _loading() {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget _error() {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Try again'),
        onPressed: () {
          ref.read(flightStateProvider.notifier).setToReady();
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: const Center(
          child: Text('There was an error'),
      ),
    );
  }

  Widget _body() {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(200),
        child: AppBar(
          centerTitle: true,
          flexibleSpace: ClipRRect(
            borderRadius:
                const BorderRadius.only(bottomRight: Radius.circular(50)),
            child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/airplanePicture.jpg"),
                        fit: BoxFit.fill))),
          ),
          shape: const RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.only(bottomRight: Radius.circular(50))),
          leading: IconButton(
            onPressed: () {
              ref.read(flightStateProvider.notifier).setToReady();
              Navigator.of(context).pushNamed('/home');
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Center(
                  child: Text(
                'Search flight',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
              )),
              Padding(
                padding: const EdgeInsets.only(top: 20),
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
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TextFormField(
                  readOnly: true,
                  controller: dateRangeController,
                  decoration: const InputDecoration(
                      labelText: 'Date:',
                      hintText: 'Choose date range',
                      prefixIcon: Icon(Icons.date_range),
                      border: OutlineInputBorder()),
                  onTap: () async {
                    DateTimeRange result = await _showDatePicker();
                    setState(() {
                      startTime = result.start;
                      endTime = result.end;
                      dateRangeController.text =
                          "${(startTime.toString().substring(0, 10))} - ${(endTime.toString().substring(0, 10))}";
                    });
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 50),
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
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Search'),
        onPressed: () async {
          await ref.read(flightStateProvider.notifier).init(
              fromLocation,
              toLocation,
              _rangeValues.start.toString(),
              _rangeValues.end.toString(),
              startTime,
              endTime);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Future<DateTimeRange> _showDatePicker() async {
    DateTimeRange? date = await showDateRangePicker(
        context: context,
        currentDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime(2025));
    if (date == null) {
      return DateTimeRange(
          start: DateTime.now(),
          end: DateTime.now().add(const Duration(days: 10)));
    }
    return date;
  }
}
